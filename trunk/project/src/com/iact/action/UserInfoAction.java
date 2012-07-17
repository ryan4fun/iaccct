/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: UserAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserorderDAO;
import com.iact.util.json.JSONArray;
import com.iact.util.json.JSONException;
import com.iact.vo.User;
import com.iact.vo.Userorder;

/**
 * The action handle all request from user application such as
 * resource/order/payOnlineLog/PayRecord/ExpendRecord/Account log.
 * 
 * @author Andy
 */
public class UserInfoAction extends AbstractAction {

	private static final int PAGE_SIZE = 10;

	private static final String USER_ORDER_DAO = "UserorderDAO";

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		User user = super.getSessionContainer(req).getUser();

		String type = (String) reqParams.get("type");
		if (type == null || type.equalsIgnoreCase("basic")) {
			
			try {
				super.writeResponse(user.toJSONObject().toString(), res);
			} catch (JSONException e) {
				throw new IActException(e);
			}
		} else if (type.equalsIgnoreCase("order")) {
			
			String pStr = (String)reqParams.get("pn");
			int pageNum = pStr == null ? 0 : Integer.parseInt(pStr);
			List<Userorder> orders = getUserOrders(pageNum, user);
			
			try {
				super.writeResponse(JSONArray.listToJSONArray(orders).toString(), res);
			} catch (JSONException e) {
				throw new IActException(e);
			}
		}
		return 0;
	}

	private List<Userorder> getUserOrders(int pageNum, User user)
			throws IActException {
		UserorderDAO dao = (UserorderDAO) DAOFactory.getDAO(USER_ORDER_DAO);
		long userid = user.getId();
		String hsql = "from Userorder o where o.user=" + userid +" order by o.id desc";
		int start = (pageNum - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;
		List<Userorder> orders = dao.findByHSQL(hsql, start, limit);

		return orders;

	}

}
