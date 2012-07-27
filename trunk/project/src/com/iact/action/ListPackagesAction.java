/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: ListPackageAction.java
 * Created: 2012-7-26
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.BizareaDAO;
import com.iact.dao.BizpackageDAO;
import com.iact.dao.DAOFactory;
import com.iact.util.PageResultSet;
import com.iact.vo.Bizarea;
import com.iact.vo.Bizpackage;

public class ListPackagesAction extends AbstractAction {

	private static final String BIZ_PACKAGE_DAO = "BizpackageDAO";
	
	private static final String BIZ_AREA_DAO = "BizareaDAO";
	
	private static final int PAGE_SIZE = 10;

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		BizpackageDAO packageDAO = (BizpackageDAO) DAOFactory
				.getDAO(BIZ_PACKAGE_DAO);
		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		String bizAreaStr = (String) reqParams.get("bizarea");

		List<Bizpackage> packages = null;
		
		String packTitle = null;
		if (bizAreaStr == null) {
			/**
			 * IP location for biz area or find all packages, if using IP
			 * location, it will use third party web service or pure IP DB such
			 * as QQ.
			 */
			String hsql = "from Bizpackage";
			packages = packageDAO.findByHSQL(hsql, start, limit);
			packTitle = "所有开通地区节目套餐";
		} else {
			long bizArea = Long.parseLong(bizAreaStr);
			String hsql = "from Bizpackage o where o.bizArea = " + bizArea;
			packages = packageDAO.findByHSQL(hsql, start, limit);
			
			BizareaDAO areaDAO  = (BizareaDAO)DAOFactory.getDAO(BIZ_AREA_DAO);
			Bizarea area = areaDAO.findById(bizArea);
			
			packTitle = area.getName() + "节目套餐";
		
		}
		
		PageResultSet result = new PageResultSet(packages, curPage, PAGE_SIZE);
		req.setAttribute("result", result);
		req.setAttribute("packTitle", packTitle);
		reqParams.put("page", "listpackages.jsp");

		_forward(req, res);
		
		return ErrorCode.OK;
	}

}
