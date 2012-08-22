/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: LoginAction.java
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
import com.iact.dao.DAOFactory;
import com.iact.dao.UserDAO;
import com.iact.dao.UserorderDAO;
import com.iact.dao.UserresourceDAO;
import com.iact.util.json.JSONException;
import com.iact.util.json.JSONObject;
import com.iact.vo.ShoppingCart;
import com.iact.vo.User;
import com.iact.vo.Userorder;

/**
 * @author Andy
 * 
 */
public class LoginAction extends AbstractAction {

	private static final String DAO = "UserDAO";

	private static final String USER_RESOURCE_DAO = "UserresourceDAO";

	private static final String USER_ORDER_DAO = "UserorderDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		String authCode = (String) req.getSession().getAttribute("authCode");
		String pAuthCode = (String) reqParams.get("authCode");
		String loginName = (String) reqParams.get("loginName");
		String password = (String) reqParams.get("password");

		if (!authCode.equalsIgnoreCase(pAuthCode)) {
			String errMsg = "验证码错误！";
			getSessionContainer(req).setUser(null);
			writeErrorMessage(ErrorCode.AUTH_FAILURE, errMsg, res);
			return 0;
		} else {

			String pMD5 = DigestUtils.md5Hex(password);

			UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAO);
			
			List<User> users = userDAO.findByLogin(loginName);
			if (users == null || users.size() == 0) {
				users = userDAO.findByPhoneNumber(loginName);
			}
			
			if (users != null && users.size() > 0) {
				User user = users.get(0);
				/**
				 * Locked user
				 */
				if (user.getStatus() == -1) {
					String errMsg = "您的帐户已被锁定,不能登陆,请联系我们客服！";
					getSessionContainer(req).setUser(null);
					writeErrorMessage(ErrorCode.UN_UP, errMsg, res);
					return ErrorCode.OK;
				}
				/**
				 * Login successfully
				 */
				boolean matched = user.getPwd().equals(pMD5);
				if (matched) {
					user.setResNum(getUserResourceNum(user.getId()));
					user.setOrderNum(getUserOrderNum(user.getId()));
					user.setPrepayMoney(getPreparedPayMoney(user.getId()));

					getSessionContainer(req).setUser(user);
					user.setLoginIp(req.getRemoteAddr());
					user
							.setLoginTime(new Timestamp(System
									.currentTimeMillis()));
					userDAO.merge(user);
					JSONObject jo = new JSONObject();
					try {
						jo.put("errorCode", ErrorCode.OK);
					} catch (JSONException e) {
						throw new IActException(e);
					}					
					String pid = (String)reqParams.get("pid");
					if (pid != null) {
						try {
							jo.put("forder", "true");
							jo.put("pid", pid);
						} catch (JSONException e) {
							throw new IActException(e);
						}
					}

					// reset to zero of login fail count
					getSessionContainer(req).setLoginFailCnt(0);
					
					writeResponse(jo.toString(), res);
					return ErrorCode.OK;
				} else {
					getSessionContainer(req).addLoginFailCnt();
					int loginFailCnt = getSessionContainer(req)
							.getLoginFailCnt();
					if (loginFailCnt >= 6) {
						/**
						 * Set user lock status
						 */
						user.setStatus(-1);
						userDAO.merge(user);
						String errMsg = "您输入密码错误已超过最大次数,帐号暂且锁定一天！";
						getSessionContainer(req).setUser(null);
						writeErrorMessage(ErrorCode.UN_UP, errMsg, res);
						return ErrorCode.OK;
					} else {
						int chance = 6 - loginFailCnt;
						String errMsg = "您还有" + chance
								+ "次机会输入,6次出错,帐号将被锁定一天 !";
						getSessionContainer(req).setUser(null);
						writeErrorMessage(ErrorCode.UN_UP, errMsg, res);
						return ErrorCode.OK;
					}
				}
			}
		}
		String errMsg = "用户名错误！";
		getSessionContainer(req).setUser(null);
		writeErrorMessage(ErrorCode.UN_UP, errMsg, res);
		return 0;
	}

	private int getUserResourceNum(long userid) throws IActException {
		UserresourceDAO resourceDAO = (UserresourceDAO) DAOFactory
				.getDAO(USER_RESOURCE_DAO);
		String sql = "select count(*) from Userresource as r where r.user = "
				+ userid;
		return resourceDAO.findCount(sql);

	}

	private int getUserOrderNum(long userid) throws IActException {
		UserorderDAO orderDAO = (UserorderDAO) DAOFactory
				.getDAO(USER_ORDER_DAO);
		String sql = "select count(*) from Userorder as r where r.user = "
				+ userid;
		return orderDAO.findCount(sql);
	}

	private double getPreparedPayMoney(long userid) throws IActException {
		double ret = 0;
		UserorderDAO orderDAO = (UserorderDAO) DAOFactory
				.getDAO(USER_ORDER_DAO);

		String hsql = "from Userorder o where o.user=" + userid
				+ " and o.handleStatus='新增'";
		List<Userorder> orders = orderDAO.findByHSQL(hsql, -1, -1);
		for (Userorder o : orders) {
			ret += o.getPlanFee();
		}
		return ret;
	}
}
