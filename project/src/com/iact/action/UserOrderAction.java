/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved. 
 * File: UserOrderAction.java
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
import com.iact.util.PageResultSet;
import com.iact.vo.User;
import com.iact.vo.Userorder;

/**
 * @author Andy
 */
public class UserOrderAction extends AbstractAction {

	private static final String USER_ORDER_DAO = "UserorderDAO";
	private static final int PAGE_SIZE = 10;
	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String stype = (String) reqParams.get("stype");
		if (stype != null && stype.equalsIgnoreCase("deleOrder")) {
			int ret = deleOrder();
			if (ret == ErrorCode.OK) {
				User user = getSessionContainer(req).getUser();
				int orderNum = user.getOrderNum();
				orderNum--;
				user.setOrderNum(orderNum);

				return getUserOrders(req, res);
			}
		}
		return ErrorCode.OK;
	}

	private int deleOrder() throws IActException {

		UserorderDAO DAO = (UserorderDAO) DAOFactory.getDAO(USER_ORDER_DAO);

		String oid = (String) reqParams.get("sid");
		long orderid = Long.parseLong(oid);
		try {
			DAO.beginTransaction();
			Userorder order = DAO.findById(orderid);
			DAO.delete(order);
			DAO.commitTransaction();
		} catch (Throwable t) {
			DAO.rollbackTransaction();
			return ErrorCode.FAIL_DELE_ORDER;
		} finally {
			DAO.closeSession();
		}
		return ErrorCode.OK;
	}

	private int viewOrderDetail() {
		return ErrorCode.OK;
	}

	private int getUserOrders(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		UserorderDAO dao = (UserorderDAO) DAOFactory.getDAO(USER_ORDER_DAO);
		User user = super.getSessionContainer(req).getUser();

		long userid = user.getId();
		StringBuilder wherePortion = new StringBuilder();
		String sdate = (String) reqParams.get("sdate");
		wherePortion.append(" where o.user=" + userid);
		if (sdate != null && sdate.trim().length() != 0) {
			sdate = sdate + " 00:00:00";
			wherePortion.append(" and o.createTime >= '" + sdate + "'");
		}

		String edate = (String) reqParams.get("edate");
		if (edate != null && edate.trim().length() != 0) {
			edate = edate + " 23:59:59";
			wherePortion.append(" and o.createTime <= '" + edate + "'");
		}

		String hsql = "from Userorder o" + wherePortion.toString()
				+ " order by o.createTime desc";

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
}
