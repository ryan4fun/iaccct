/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: UserAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserorderDAO;
import com.iact.dao.UserresourceDAO;
import com.iact.util.PageResultSet;
import com.iact.vo.User;
import com.iact.vo.Userorder;
import com.iact.vo.Userresource;

/**
 * The action handle all request from user application such as
 * resource/order/payOnlineLog/PayRecord/ExpendRecord/Account log.
 * 
 * @author Andy
 */
public class UserInfoAction extends AbstractAction {

	private static final int PAGE_SIZE = 10;

	private static final String USER_ORDER_DAO = "UserorderDAO";

	private static final String USER_RESOURCE_DAO = "UserresourceDAO";

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		String type = (String) reqParams.get("type");
		if (type == null || type.equalsIgnoreCase("0")) {
			return getUserBasicInfo(req, res);
		} else if (type.equalsIgnoreCase("1")) {
			return getUserOrders(req, res);
		} else if (type.equalsIgnoreCase("2")) {
			return getUserResouces(req, res);
		}
		return ErrorCode.OK;
	}

	private int getUserOrders(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		UserorderDAO dao = (UserorderDAO) DAOFactory.getDAO(USER_ORDER_DAO);
		User user = super.getSessionContainer(req).getUser();

		long userid = user.getId();
		String hsql = "from Userorder o where o.user=" + userid
				+ " order by o.id desc";
		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		List<Userorder> orders = dao.findByHSQL(hsql, start, limit);

		PageResultSet result = new PageResultSet(orders, curPage, PAGE_SIZE);
		req.setAttribute("result", result);
		reqParams.put("page", "userorders.jsp");
		_forward(req, res);

		return ErrorCode.OK;

	}

	private int getUserBasicInfo(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		reqParams.put("page", "userbasic.jsp");
		_forward(req, res);
		return ErrorCode.OK;
	}

	private int getUserResouces(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		
		UserresourceDAO dao = (UserresourceDAO) DAOFactory.getDAO(USER_RESOURCE_DAO);
		User user = super.getSessionContainer(req).getUser();

		long userid = user.getId();
		String hsql = "from Userresource o where o.user=" + userid
				+ " order by o.id desc";

		int start = 0;
		List<Userresource> resources = dao.findByHSQL(hsql, start, PAGE_SIZE);

		req.setAttribute("resources", resources);
		reqParams.put("page", "userresource.jsp");
		_forward(req, res);

		return ErrorCode.OK;

	}

}