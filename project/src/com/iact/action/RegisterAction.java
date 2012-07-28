/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: RegisterAction.java
 * Created: 2012-7-9
 */
package com.iact.action;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.AreaDAO;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserDAO;
import com.iact.util.json.JSONArray;
import com.iact.util.json.JSONException;
import com.iact.util.json.JSONObject;
import com.iact.vo.Area;
import com.iact.vo.User;

/**
 * @author Andy
 * 
 */
public class RegisterAction extends AbstractAction {

	private static final String USER_DAO = "UserDAO";

	private static final String AREA_DAO = "AreaDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		String type = (String) reqParams.get("type");
		int intType = type == null ? 0 : Integer.parseInt(type);
		if (intType == 0) {
			boolean isExisted = checkUserExisted();
			if (isExisted) {
				super
						.writeErrorMessage(ErrorCode.EXISTED_USER, "该用户名已存在.",
								res);
			} else {
				super.writeErrorMessage(ErrorCode.OK, "ok", res);
			}
		} else if (intType == 1) {
			String sAuth = (String) req.getSession().getAttribute("authCode");
			boolean authed = checkAuthCode(sAuth);
			if (!authed) {
				super.writeErrorMessage(ErrorCode.AUTH_FAILURE, "验证码错误.", res);
			}
		} else if (intType == 2) {
			User user = nextStep();
			req.getSession().setAttribute("tempUser", user);
			List<Area> areas = getAreas();
			req.setAttribute("areas", areas);
			_forward(req, res);
		} else if (intType == 3) {
			User user = (User) req.getSession().getAttribute("tempUser");
			save(user);
			req.getSession().removeAttribute("tempUser");
			_forward(req, res);
		} else if (intType == 4) {
			// forward to register page
			List<Area> areas = getAreas();
			req.setAttribute("areas", areas);
			reqParams.put("page", "register.jsp");
			_forward(req, res);
		} else if (intType == 5) {
			List<Area> areas = getCascadingAreas();
			int size = areas.size();

			JSONArray arra = new JSONArray();
			for (int i = 0; i < size; i++) {
				JSONObject o = new JSONObject();
				Area area = areas.get(i);
				try {
					o.put("name", area.getName());

					o.put("id", area.getId());
				} catch (JSONException e) {
					throw new IActException(e);
				}
				arra.put(o);
			}
			super.writeResponse(arra.toString(), res);
		}

		return ErrorCode.OK;
	}

	private boolean checkUserExisted() throws IActException {
		UserDAO userDAO = (UserDAO) DAOFactory.getDAO(USER_DAO);
		String login = (String) reqParams.get("login");
		List<User> us = userDAO.findByLogin(login);

		return us != null && us.size() > 0;
	}

	private boolean checkAuthCode(String sAuth) throws IActException {
		String auth = (String) reqParams.get("authCode");
		return auth.equalsIgnoreCase(sAuth);

	}

	private User nextStep() throws IActException {
		User user = new User();

		String pwd = (String) reqParams.get("pwd");
		user.setPwd(DigestUtils.md5Hex(pwd));
		user.setArea(Long.parseLong((String) reqParams.get("area")));
		user.setCreateDate(new Timestamp(System.currentTimeMillis()));
		user.setCreateMode(Integer.parseInt((String) reqParams
				.get("createMode")));
		user.setEmail((String) reqParams.get("email"));
		user.setLogin((String) reqParams.get("login"));
		user.setRealName((String) reqParams.get("realName"));
		user.setSex((String) reqParams.get("sex"));
		user.setUserType(0);

		return user;
	}

	private boolean save(User user) throws IActException {

		user.setArea(Long.parseLong((String) reqParams.get("area")));
		user.setEmail((String) reqParams.get("email"));
		user.setRealName((String) reqParams.get("realName"));
		user.setSex((String) reqParams.get("sex"));
		user.setPhoneVerify(8888);
		user.setBalance(5.0d);
		user.setLevel(1);
		user.setCredit(100);
		user.setStatus(0);

		/**
		 * Save user
		 */
		UserDAO userDAO = (UserDAO) DAOFactory.getDAO(USER_DAO);

		try {
			userDAO.beginTransaction();
			userDAO.save(user);
			userDAO.commitTransaction();
		} catch (Throwable t) {
			userDAO.rollbackTransaction();
			throw new IActException(t);
		} finally {
			userDAO.closeSession();
		}

		return true;
	}

	private boolean saveUser() throws IActException {
		String userInfo = (String) reqParams.get("userInfo");

		try {
			JSONObject jo = new JSONObject(userInfo);

			User user = null;// AbstractUser.parse(jo);

			/**
			 * MD5 for password
			 */
			String pwd = user.getPwd();
			String pwdMd5 = DigestUtils.md5Hex(pwd);
			user.setPwd(pwdMd5);

			/**
			 * Save user
			 */
			UserDAO userDAO = (UserDAO) DAOFactory.getDAO(USER_DAO);
			try {
				userDAO.beginTransaction();
				userDAO.save(user);
				userDAO.commitTransaction();
			} catch (Throwable t) {
				userDAO.rollbackTransaction();
				throw new IActException(t);
			} finally {
				userDAO.closeSession();
			}

			return true;
		} catch (JSONException e) {
			throw new IActException(e);
		}

	}

	private List<Area> getAreas() throws IActException {

		AreaDAO DAO = (AreaDAO) DAOFactory.getDAO(AREA_DAO);
		List<Area> areas = DAO.findByLevel(1);

		return areas;

	}

	private List<Area> getCascadingAreas() throws IActException {
		AreaDAO DAO = (AreaDAO) DAOFactory.getDAO(AREA_DAO);

		Long parent = Long.parseLong((String) reqParams.get("parent"));
		List<Area> areas = DAO.findByParent(parent);

		return areas;
	}
}
