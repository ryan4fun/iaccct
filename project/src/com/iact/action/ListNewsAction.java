/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: ListNewsAction.java
 * Created: 2012-7-20
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.PlatforminformationDAO;
import com.iact.util.PageResultSet;
import com.iact.vo.Platforminformation;

public class ListNewsAction extends AbstractAction {
	/**
	 * DAO clazz name of platform information
	 */
	private static final String DAO_PLATFORM = "PlatforminformationDAO";
	private static final int PAGE_SIZE = 20;

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		PlatforminformationDAO infoDAO = (PlatforminformationDAO) DAOFactory
				.getDAO(DAO_PLATFORM);
		
		String pStr = (String) reqParams.get("pn");
		int curPage = pStr == null ? 1 : Integer.parseInt(pStr);

		int start = (curPage - 1) * PAGE_SIZE;
		int limit = PAGE_SIZE;

		String hsql = "from Platforminformation p order by p.addTime desc";
		List<Platforminformation> infos = infoDAO.findByHSQL(hsql, start, limit);

		PageResultSet result = new PageResultSet(infos, curPage, PAGE_SIZE);
		req.setAttribute("result", result);
		reqParams.put("page", "listnews.jsp");
		_forward(req, res);

		return 0;
	}

}
