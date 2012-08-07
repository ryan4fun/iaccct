/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: IndexAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.IActException;
import com.iact.dao.BizareaDAO;
import com.iact.dao.DAOFactory;
import com.iact.dao.PlatforminformationDAO;
import com.iact.vo.Bizarea;
import com.iact.vo.Platforminformation;

/**
 * @author Andy
 */
public class IndexAction extends AbstractAction {
	/**
	 * DAO clazz name of biz open area
	 */
	private static final String DAO_AREA = "BizareaDAO";

	/**
	 * DAO clazz name of platform information
	 */
	private static final String DAO_PLATFORM = "PlatforminformationDAO";

	/*
	 * (non-Javadoc)
	 * 
	 * @seecom.iact.action.AbstractAction#_doAction(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		// 1. Fetch Biz area
		BizareaDAO areaDAO = (BizareaDAO) DAOFactory.getDAO(DAO_AREA);
		areaDAO.beginTransaction();
		areaDAO.commitTransaction();
		List<Bizarea> areas = areaDAO.findAll();

		req.setAttribute("areas", areas);

		// 2. Fetch plaform information's news
		List<Platforminformation> news = getNews();
		req.setAttribute("news", news);

		// 3. Fetch platform infromation's AD
		List<Platforminformation> ads = getAds();
		req.setAttribute("ads", ads);

		try {
			req.getRequestDispatcher("/WEB-INF/jsp/index.jsp")
					.forward(req, res);
		} catch (ServletException e) {
			throw new IActException(e);
		} catch (IOException e) {
			throw new IActException(e);
		}

		return 0;
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
