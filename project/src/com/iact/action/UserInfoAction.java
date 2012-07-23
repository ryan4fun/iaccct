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
import com.iact.dao.ExpendrecordDAO;
import com.iact.dao.PayrecordDAO;
import com.iact.dao.UserorderDAO;
import com.iact.dao.UserresourceDAO;
import com.iact.util.PageResultSet;
import com.iact.vo.Expendrecord;
import com.iact.vo.Payrecord;
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

	private static final String PAY_RECORD_DAO = "PayrecordDAO";

	private static final String EXPEND_RECORD_DAO = "ExpendrecordDAO";

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
		} else if (type.equalsIgnoreCase("3")) {
			return getUserPayRecords(req, res);
		} else if (type.equalsIgnoreCase("4")) {
			return getUserExpendRecords(req, res);
		}
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
		if (sdate != null) {
			sdate = sdate + " 00:00:00";
			wherePortion.append(" and o.createTime >= '" + sdate + "'");
		}

		String edate = (String) reqParams.get("edate");
		if (edate != null) {
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

	private int getUserPayRecords(HttpServletRequest req,
			HttpServletResponse res) throws IActException {

		PayrecordDAO dao = (PayrecordDAO) DAOFactory.getDAO(PAY_RECORD_DAO);
		User user = super.getSessionContainer(req).getUser();

		long userid = user.getId();
		StringBuilder wherePortion = new StringBuilder();
		String sdate = (String) reqParams.get("sdate");
		wherePortion.append(" where o.user=" + userid);
		if (sdate != null) {
			sdate = sdate + " 00:00:00";
			wherePortion.append(" and o.addTime >= '" + sdate + "'");
		}

		String edate = (String) reqParams.get("edate");
		if (edate != null) {
			edate = edate + " 23:59:59";
			wherePortion.append(" and o.addTime <= '" + edate + "'");
		}

		String hsql = "from Payrecord o" + wherePortion.toString()
				+ " order by o.addTime desc";

		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		List<Payrecord> records = dao.findByHSQL(hsql, start, limit);

		PageResultSet result = new PageResultSet(records, curPage, PAGE_SIZE);
		req.setAttribute("result", result);
		reqParams.put("page", "userpayrecord.jsp");
		_forward(req, res);

		return ErrorCode.OK;

	}

	private int getUserExpendRecords(HttpServletRequest req,
			HttpServletResponse res) throws IActException {

		ExpendrecordDAO dao = (ExpendrecordDAO) DAOFactory
				.getDAO(EXPEND_RECORD_DAO);
		User user = super.getSessionContainer(req).getUser();

		long userid = user.getId();
		StringBuilder wherePortion = new StringBuilder();
		String sdate = (String) reqParams.get("sdate");
		wherePortion.append(" where o.user=" + userid);
		if (sdate != null) {
			sdate = sdate + " 00:00:00";
			wherePortion.append(" and o.finalpaidTime >= '" + sdate + "'");
		}

		String edate = (String) reqParams.get("edate");
		if (edate != null) {
			edate = edate + " 23:59:59";
			wherePortion.append(" and o.finalpaidTime <= '" + edate + "'");
		}

		String hsql = "from Expendrecord o" + wherePortion.toString()
				+ " order by o.finalpaidTime desc";

		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		List<Expendrecord> records = dao.findByHSQL(hsql, start, limit);

		PageResultSet result = new PageResultSet(records, curPage, PAGE_SIZE);
		req.setAttribute("result", result);
		reqParams.put("page", "userexpendrecord.jsp");
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

		UserresourceDAO dao = (UserresourceDAO) DAOFactory
				.getDAO(USER_RESOURCE_DAO);
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
