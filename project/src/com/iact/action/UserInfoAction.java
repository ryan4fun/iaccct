/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: UserAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.AccountlogDAO;
import com.iact.dao.AreaDAO;
import com.iact.dao.DAOFactory;
import com.iact.dao.ExpendrecordDAO;
import com.iact.dao.PayrecordDAO;
import com.iact.dao.UserDAO;
import com.iact.dao.UserorderDAO;
import com.iact.dao.UserresourceDAO;
import com.iact.util.PageResultSet;
import com.iact.util.Tools;
import com.iact.vo.Accountlog;
import com.iact.vo.Area;
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
	
	private static final String ACCOUNT_LOG_DAO = "AccountlogDAO";
	
	private static final String AREA_DAO = "AreaDAO";
	
	private static final String USER_DAO = "UserDAO";
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
		} else if (type.equalsIgnoreCase("5")) {
			return getUserChangedInfo(req, res);
		} else if (type.equalsIgnoreCase("6")) {
			return setUserChangedinfo(req, res);
		} else if (type.equalsIgnoreCase("7")) {
			return checkPassword(req, res);
		}
		return ErrorCode.OK;
	}
	
	private int checkPassword(HttpServletRequest req, HttpServletResponse res) throws IActException {
		String pd = (String) reqParams.get("pd");
		User user = super.getSessionContainer(req).getUser();
		if (!DigestUtils.md5Hex(pd).equals(user.getPwd())){
			writeErrorMessage(ErrorCode.UN_UP, "输入密码不正确，请重新输入。", res);
		} else {
			writeErrorMessage(ErrorCode.OK, "", res);
		}
		return ErrorCode.OK;
	}
	
	private int setUserChangedinfo(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		User user = super.getSessionContainer(req).getUser();
		String npwd = (String) reqParams.get("newpd");
		if (npwd != null && npwd.length() > 0){
			user.setPwd(DigestUtils.md5Hex(npwd));
		}
		user.setEmail((String) reqParams.get("email"));
		user.setRealName((String)reqParams.get("realName"));
		user.setSex((String) reqParams.get("sex"));
		String province = (String) reqParams.get("province");
		if (province != null && province.trim().length()!= 0) {
			user.setProvince(Long.parseLong(province));
		} else {
			user.setProvince(null);
		}
		String city = (String) reqParams.get("city");
		if (city != null && city.trim().length()!= 0) {
			user.setCity(Long.parseLong(city));
		} else {
			user.setCity(null);
		}
		
		String area = (String) reqParams.get("area");
		if (area != null && area.trim().length()!= 0) {
			user.setArea(Long.parseLong(area));
		} else {
			user.setArea(null);
		}

		String phoneNum = (String) reqParams.get("phoneNum");
		if (phoneNum != null && phoneNum.trim().length() != 0) {
			user.setPhoneNumber(phoneNum);
		}
		
		UserDAO userDAO = (UserDAO) DAOFactory.getDAO(USER_DAO);
		try {
			userDAO.beginTransaction();
			userDAO.merge(user);
			userDAO.commitTransaction();
			writeErrorMessage(ErrorCode.OK, "用户信息更改成功。", res);
		} catch (Throwable e){
			userDAO.rollbackTransaction();
			writeErrorMessage(ErrorCode.UN_UP, "用户信息更改失败。", res);
		} finally{
			userDAO.closeSession();
		}
		//getUserChangedInfo(req, res);
	
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
			req.setAttribute("sdate", reqParams.get("sdate"));
		}else {
			sdate = Tools.getLatest30Days();
		}
		wherePortion.append(" and o.createTime >= '" + sdate + "'");
		String edate = (String) reqParams.get("edate");
		if (edate != null && edate.trim().length() != 0) {
			edate = edate + " 23:59:59";
			req.setAttribute("edate", reqParams.get("edate"));
		}else {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			edate = sf.format(new Date()) + " 23:59:59";
		}
		wherePortion.append(" and o.createTime <= '" + edate + "'");
		
		String status = (String)reqParams.get("status");
		if (status != null && status.trim().length() > 0) {
			if (status.equalsIgnoreCase("0")) {
				status = "新增";
			} else if (status.equalsIgnoreCase("1")) {
				status = "计划";
			} else if (status.equalsIgnoreCase("2")) {
				status = "播出";
			} else if (status.equalsIgnoreCase("3")) {
				status = "完成";
			} else if (status.equalsIgnoreCase("4")) {
				status = "删除";
			}
			
			wherePortion.append(" and o.handleStatus = '" + status + "'");
			req.setAttribute("status", reqParams.get("status"));
		}
		
		String hsql = "from Userorder o" + wherePortion.toString()
				+ " order by o.createTime desc";

		String pStr = (String) reqParams.get("cur_page");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		List<Userorder> orders = dao.findByHSQL(hsql, start, limit);
		
		// get total count
		String tsql = "select count(*) " + hsql;
		int total = dao.findCount(tsql);
		
		PageResultSet result = new PageResultSet(orders, curPage, PAGE_SIZE, total);
		
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
		if (sdate != null && sdate.trim().length() != 0) {
			sdate = sdate + " 00:00:00";
			req.setAttribute("sdate", reqParams.get("sdate"));
		} else {
			sdate = Tools.getLatest30Days();
		}
		wherePortion.append(" and o.addTime >= '" + sdate + "'");
		
		String edate = (String) reqParams.get("edate");
		if (edate != null && edate.trim().length() != 0) {
			edate = edate + " 23:59:59";
			req.setAttribute("edate", reqParams.get("edate"));
		} else {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			edate = sf.format(new Date()) + " 23:59:59";
		}
		wherePortion.append(" and o.addTime <= '" + edate + "'");
		String hsql = "from Payrecord o" + wherePortion.toString()
				+ " order by o.addTime desc";

		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		List<Payrecord> records = dao.findByHSQL(hsql, start, limit);
		// get total count
		String tsql = "select count(*) " + hsql;
		int total = dao.findCount(tsql);
		PageResultSet result = new PageResultSet(records, curPage, PAGE_SIZE, total);
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
		if (sdate != null && sdate.trim().length() != 0) {
			sdate = sdate + " 00:00:00";
			req.setAttribute("sdate", reqParams.get("sdate"));
		} else {
			sdate = Tools.getLatest30Days();
		}
		wherePortion.append(" and o.finalpaidTime >= '" + sdate + "'");
		
		String edate = (String) reqParams.get("edate");
		if (edate != null && edate.trim().length() != 0) {
			edate = edate + " 23:59:59";	
			req.setAttribute("edate", reqParams.get("edate"));
		}else {
			sdate = Tools.getLatest30Days();
		}
		
		wherePortion.append(" and o.finalpaidTime <= '" + edate + "'");
		String hsql = "from Expendrecord o" + wherePortion.toString()
				+ " order by o.finalpaidTime desc";

		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		List<Expendrecord> records = dao.findByHSQL(hsql, start, limit);
		// get total count
		String tsql = "select count(*) " + hsql;
		int total = dao.findCount(tsql);
		PageResultSet result = new PageResultSet(records, curPage, PAGE_SIZE, total);
		
		req.setAttribute("result", result);
		reqParams.put("page", "userexpendrecord.jsp");
		_forward(req, res);

		return ErrorCode.OK;

	}

	private int getUserBasicInfo(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		AccountlogDAO DAO = (AccountlogDAO)DAOFactory.getDAO(ACCOUNT_LOG_DAO);
		String sdate = Tools.getLatest30Days();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String edate = sf.format(new Date()) + " 23:59:59";
		
		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);
		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;
		
		User user = super.getSessionContainer(req).getUser();

		long userid = user.getId();
		StringBuilder wherePortion = new StringBuilder();

		wherePortion.append(" where o.user=" + userid);
		wherePortion.append(" and o.addTime >= '" + sdate + "'");
		wherePortion.append(" and o.addTime <= '" + edate + "'");
		
		String hsql = "from Accountlog o" + wherePortion.toString()
				+ " order by o.addTime desc";
		List<Accountlog> logs = DAO.findByHSQL(hsql, start, limit);
		
		// get total count
		String tsql = "select count(*) " + hsql;
		int total = DAO.findCount(tsql);
		PageResultSet result = new PageResultSet(logs, curPage, PAGE_SIZE, total);
		
		req.setAttribute("logs", result);

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


		List<Userresource> resources = dao.findByHSQL(hsql, 0, 100);

		req.setAttribute("resources", resources);
		reqParams.put("page", "userresource.jsp");
		_forward(req, res);

		return ErrorCode.OK;

	}
	
	private int getUserChangedInfo(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		long provinceID = -1;
		long cityID = -1;
		long areaID = -1;
		User user = super.getSessionContainer(req).getUser();
		AreaDAO areaDAO = (AreaDAO) DAOFactory.getDAO(AREA_DAO);
		
		if (user.getArea() == null){
			areaID = -1;
		} else {
			areaID = user.getArea();
			if (areaDAO.findById(areaID).getParent() == null){
				provinceID = areaID;
				areaID = -1;
			} else {
				cityID = areaDAO.findById(areaID).getParent();
				if (areaDAO.findById(cityID).getParent() == null){
					provinceID = cityID;
					cityID = areaID;
					areaID = -1;
				} else {
					provinceID = areaDAO.findById(cityID).getParent();
				}
			}						
		}
		List<Area> provinces = areaDAO.findByLevel(1);
		req.setAttribute("provinces", provinces);
		
		if (provinceID == -1){
			req.setAttribute("cities", new ArrayList<Area>());
		} else {
			List<Area> cities = areaDAO.findByParent(provinceID);
			req.setAttribute("cities", cities);			
		}
		if (cityID == -1){
			req.setAttribute("areas", new ArrayList<Area>());
		} else {
			List<Area> areas = areaDAO.findByParent(cityID);
			req.setAttribute("areas", areas);			
		}
		req.setAttribute("provinceID", provinceID);
		req.setAttribute("cityID", cityID);
		req.setAttribute("areaID", areaID);
		reqParams.put("page", "userchangedinfo.jsp");
		_forward(req, res);
		return ErrorCode.OK;
	}
	
	private int cancelUserOrder() {
		
		return ErrorCode.OK;
	}
	
	private int viewUserOrderDetail() {
		return ErrorCode.OK;
		
	}
	

}
