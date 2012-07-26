/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: BizPackageAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.BizpackageDAO;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserorderDAO;
import com.iact.vo.Bizpackage;
import com.iact.vo.Bizpackageitem;
import com.iact.vo.ShoppingCart;
import com.iact.vo.Userorder;

/**
 * @author Andy
 */
public class BizPackageAction extends AbstractAction {

	private static final String BIZ_PACKAGE_DAO = "BizpackageDAO";
	
	private static final String USER_ORDER_DAO = "UserorderDAO";

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String spid = (String) reqParams.get("pid");
		long pid = Long.parseLong(spid);

		BizpackageDAO DAO = (BizpackageDAO) DAOFactory.getDAO(BIZ_PACKAGE_DAO);
		Bizpackage pack = DAO.findById(pid);
		if (pack != null) {
			Set<Bizpackageitem> items = pack.getItems();
			req.setAttribute("items", items);
		}

		reqParams.put("page", "packageitems.jsp");

		_forward(req, res);
		return ErrorCode.OK;
	}
	
	private int orderPackage(HttpServletRequest req, HttpServletResponse res) throws IActException {
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
				UserorderDAO DAO = (UserorderDAO)DAOFactory.getDAO(USER_ORDER_DAO);
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
				req.getRequestDispatcher("user.do?action=UserInfoAction&type=2");
			}
		}
		return ErrorCode.OK;
	}
	
	private Userorder genUserOrder() {
		Userorder order = null;
		
		return null;
		
	}
	

}
