/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: RegisterAction.java
 * Created: 2012-7-9
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserDAO;
import com.iact.util.json.JSONException;
import com.iact.util.json.JSONObject;
import com.iact.vo.User;

/**
 * @author Andy
 * 
 */
public class RegisterAction extends AbstractAction {

	private static final String DAO = "UserDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		
		String type = (String)reqParams.get("type");
		int intType = type == null ? 0 : Integer.parseInt(type);
		if (intType == 0) {
			boolean isExisted = checkUserExisted();
			if (isExisted) {
				super.writeErrorMessage(ErrorCode.EXISTED_USER, "该用户名已存在.", res);
			} else {
				super.writeErrorMessage(ErrorCode.OK, "ok", res);
			}
		} else if (intType == 1) {
			String sAuth = (String) req.getSession().getAttribute("authCode");
			boolean authed = checkAuthCode(sAuth);
			if (!authed) {
				super.writeErrorMessage(ErrorCode.AUTH_FAILURE, "验证码错误.", res);
			}
		}
		return ErrorCode.OK;
	}
	
	private boolean checkUserExisted() throws IActException {
		UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAO);
		String login = (String) reqParams.get("login");
		List<User> us = userDAO.findByLogin(login);
		
		return us != null && us.size() > 0;
	}
	
	private boolean checkAuthCode(String sAuth) throws IActException {
		String auth = (String) reqParams.get("authCode");
		return auth.equalsIgnoreCase(sAuth);
		
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
			UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAO);
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
}
