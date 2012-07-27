/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: BizPackageAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.BizpackageDAO;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserorderDAO;
import com.iact.dao.UserresourceDAO;
import com.iact.util.Tools;
import com.iact.vo.Bizpackage;
import com.iact.vo.ShoppingCart;
import com.iact.vo.User;
import com.iact.vo.Userorder;
import com.iact.vo.Userresource;

/**
 * @author Andy
 */
public class BizPackageAction extends AbstractAction {

	private static final String BIZ_PACKAGE_DAO = "BizpackageDAO";

	private static final String USER_ORDER_DAO = "UserorderDAO";

	private static final String USER_RESOURCE_DAO = "UserresourceDAO";

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String ptype = (String) reqParams.get("ptype");
		if (ptype == null) {
			String spid = (String) reqParams.get("pid");
			long pid = Long.parseLong(spid);

			BizpackageDAO DAO = (BizpackageDAO) DAOFactory
					.getDAO(BIZ_PACKAGE_DAO);
			Bizpackage pack = DAO.findById(pid);
			if (pack != null) {
				req.setAttribute("bizpackage", pack);
			}
			reqParams.put("page", "packageitems.jsp");
			_forward(req, res);
			return ErrorCode.OK;

		} else if (ptype.equalsIgnoreCase("order")) {
			return orderPackage(req, res);
		} else {

		}

		return ErrorCode.OK;

	}

	private int orderPackage(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		SessionContainer sc = getSessionContainer(req);

		Userorder order = genUserOrder();
		if (sc.getUser() == null) {
			ShoppingCart cart = sc.getCart();
			cart.addOrder(order);

			reqParams.put("page", "login.jsp");
			_forward(req, res);
		} else {
			// 1. save order
			if (order != null) {
				order.setUser(sc.getUser().getId());
				UserorderDAO DAO = (UserorderDAO) DAOFactory
						.getDAO(USER_ORDER_DAO);
				try {
					DAO.beginTransaction();
					DAO.save(order);
					DAO.commitTransaction();
				} catch (Throwable t) {
					DAO.rollbackTransaction();
				} finally {
					DAO.closeSession();
				}
				// 2. forward to user order
				req
						.getRequestDispatcher("user.do?action=UserInfoAction&type=1");
			}
		}
		return ErrorCode.OK;
	}

	private Userorder genUserOrder() throws IActException {
		Userorder order = new Userorder();
		String orderId = Tools.getOrderID();
		order.setOrderId(orderId);
		
		String transId = Tools.getTransID();
		order.setTransactionId(transId);
	
		long pid = Long.parseLong((String) reqParams.get("pid"));
		order.setBizPackage(pid);

		Timestamp createTime = new Timestamp(System.currentTimeMillis());
		order.setCreateTime(createTime);

		order.setHandleStatus("新增");
		order.setOrderType("B");

		order.setPackageInfo((String) reqParams.get("pinfo"));

		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String sdate = (String) reqParams.get("sdate");
		Timestamp planBegin = null;
		if (sdate != null) {
			Date start;
			try {
				start = sf.parse(sdate);
			} catch (ParseException e) {
				start = new Date();
			}
			planBegin = new Timestamp(start.getTime());
		} else {
			Date start = new Date();
			planBegin = new Timestamp(start.getTime());
		}

		order.setPlanBegin(planBegin);

		String edate = (String) reqParams.get("edate");
		Timestamp planEnd = null;
		if (edate != null) {
			Date end;
			try {
				end = sf.parse(edate);
			} catch (ParseException e) {
				end = new Date();
			}
			planEnd = new Timestamp(end.getTime());
		} else {
			Date end = new Date();
			planEnd = new Timestamp(end.getTime());
		}
		order.setPlanEnd(planEnd);
		
		String pdate = (String) reqParams.get("plandate");
		Timestamp plandate = null;
		if (pdate != null) {
			Date p;
			try {
				p = sf.parse(pdate);
			} catch (ParseException e) {
				p = new Date();
			}
			plandate = new Timestamp(p.getTime());
		} else {
			Date p = new Date();
			plandate = new Timestamp(p.getTime());
		}
		order.setPlanDate(plandate);

		String resfrom = (String) reqParams.get("resfrom");
		if (resfrom.equalsIgnoreCase("0")) {
			String restype = (String) reqParams.get("restype");
			if (restype.equalsIgnoreCase("0")) {
				String subTitle = (String) reqParams.get("tsubtitle");
				order.setSubtitle(subTitle);
				order.setSpotType("文字");
			} else {
				String subTitle = (String) reqParams.get("tsubtitle");
				order.setSubtitle(subTitle);
				order.setSpotType("图文");
				// upload image
			}
		} else {
			String resid = (String) reqParams.get("resid");
			if (resid != null) {
				long rid = Long.parseLong(resid);
				UserresourceDAO resDAO = (UserresourceDAO) DAOFactory
						.getDAO(USER_RESOURCE_DAO);
				Userresource res = resDAO.findById(rid);
				order.setSpotType(res.getSpotType());
				order.setSubtitle(res.getSubtitle());
				if (res.getSpotType().equalsIgnoreCase("图文")) {
					// save image
				}
			}
		}

		String pnum = (String) reqParams.get("pnum");
		int num = 1;
		if (pnum != null) {
			try {
				num = Integer.parseInt(pnum);
			} catch (Throwable t) {
				num = 1;
			}
		} 
		order.setPackageNumber(num);
		String sprice = (String) reqParams.get("price");
		double price = Double.parseDouble(sprice);
		order.setPlanFee(price * num);
		
		return order;
	}

}
