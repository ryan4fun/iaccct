/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: FowardNewsAction.java
 * Created: 2012-7-23
 */
package com.iact.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.PlatforminformationDAO;
import com.iact.vo.Platforminformation;

public class ForwardNewsAction extends AbstractAction {

	/**
	 * DAO clazz name of platform information
	 */
	private static final String DAO_PLATFORM = "PlatforminformationDAO";
	
	/* (non-Javadoc)
	 * @see com.iact.action.AbstractAction#_doAction(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		// 2. Fetch plaform information's news
		PlatforminformationDAO infoDAO
				= (PlatforminformationDAO)DAOFactory.getDAO(DAO_PLATFORM);
		

		// 2. Fetch plaform information's news
		List<Platforminformation> news = getNews();
		req.setAttribute("news", news);

		// 3. Fetch platform infromation's AD
		List<Platforminformation> ads = getAds();
		req.setAttribute("ads", ads);
		
		try {
			req.getRequestDispatcher("/WEB-INF/jsp/news.jsp").forward(req, res);
		} catch (ServletException e) {
			throw new IActException(e);
		} catch (IOException e) {
			throw new IActException(e);
		}
		
		return ErrorCode.OK;
	}
	private List<Platforminformation> getNews() throws IActException {
		PlatforminformationDAO infoDAO = (PlatforminformationDAO) DAOFactory
				.getDAO(DAO_PLATFORM);
		String hsql = "from Platforminformation p where p.bizType = 20 order by p.addTime desc";
		int first = 0;
		int limit = 5;
		List<Platforminformation> infos = infoDAO.findByHSQL(hsql, first, limit);
		return infos;
	}
	
	private List<Platforminformation> getAds() throws IActException {
		PlatforminformationDAO infoDAO = (PlatforminformationDAO) DAOFactory
				.getDAO(DAO_PLATFORM);
		String hsql = "from Platforminformation p where p.bizType = 10 order by p.addTime desc";
		int first = 0;
		int limit = 5;
		List<Platforminformation> infos = infoDAO.findByHSQL(hsql, first, limit);
		
		return infos;
	}

}
