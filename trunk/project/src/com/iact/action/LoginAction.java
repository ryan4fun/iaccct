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
			if (users != null) {
				for (User user : users) {
					boolean matched = user.getPwd().equals(pMD5);
					if (matched) {
						user.setResNum(getUserResourceNum(user.getId()));
						user.setOrderNum(getUserOrderNum(user.getId()));

						getSessionContainer(req).setUser(user);
						user.setLoginIp(req.getRemoteAddr());
						user.setLoginTime(new Timestamp(System
								.currentTimeMillis()));

						userDAO.merge(user);
						JSONObject jo = new JSONObject();
						try {
							jo.put("errorCode", ErrorCode.OK);
						} catch (JSONException e) {
							throw new IActException(e);
						}

						SessionContainer sc = getSessionContainer(req);
						ShoppingCart cart = sc.getCart();
						if (!cart.isEmptyCart()) {
							List<Userorder> orders = cart.getOrders();
							UserorderDAO DAO = (UserorderDAO) DAOFactory
									.getDAO(USER_ORDER_DAO);
							try {
								DAO.beginTransaction();
								// 1. save order
								int size = orders.size();
								for (int i = 0; i < size; i++) {
									Userorder order = orders.get(i);
									order.setUser(user.getId());
									DAO.save(orders.get(i));
								}
								DAO.commitTransaction();
								int orderNum = sc.getUser().getOrderNum();
								sc.getUser().setOrderNum(orderNum + size);
								cart.empty();
							} catch (Throwable t) {
								DAO.rollbackTransaction();
							} finally {
								DAO.closeSession();
							}
							try {
								jo.put("forder", "true");
							} catch (JSONException e) {
								throw new IActException(e);
							}
						}
						writeResponse(jo.toString(), res);
						return 0;
					}
				}
			}
		}

		String errMsg = "用户名或密码错误！";
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
}
