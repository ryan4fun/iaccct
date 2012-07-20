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
import com.iact.dao.AreaDAO;
import com.iact.dao.DAOFactory;
import com.iact.dao.PlatforminformationDAO;
import com.iact.vo.Area;
import com.iact.vo.Platforminformation;

/**
 * @author Andy 
 */
public class IndexAction extends AbstractAction {
	/**
	 *  DAO clazz name of biz open area 
	 */
	private static final String DAO_AREA= "AreaDAO";
	
	
	/**
	 * DAO clazz name of platform information
	 */
	private static final String DAO_PLATFORM = "PlatforminformationDAO";
	
	/* (non-Javadoc)
	 * @see com.iact.action.AbstractAction#_doAction(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		
		// 1. Fetch Biz area
		AreaDAO areaDAO = (AreaDAO)DAOFactory.getDAO(DAO_AREA);
		
		String hsql = "from Area area where area.level=1 order by area.sequenceId asc";
		List<Area> areas = areaDAO.findByHSQL(hsql, 1, 20);
		req.setAttribute("areas", areas);
		
		// 2. Fetch plaform information's news
		PlatforminformationDAO infoDAO
				= (PlatforminformationDAO)DAOFactory.getDAO(DAO_PLATFORM);
		
		List<Platforminformation> news = infoDAO.findByBizType(1);
		req.setAttribute("news", news);
		
		// 3. Fetch plafrom infromation's AD
		List<Platforminformation> ads = infoDAO.findByBizType(2);
		req.setAttribute("ads", ads);
		
		
		try {
			req.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(req, res);
		} catch (ServletException e) {
			throw new IActException(e);
		} catch (IOException e) {
			throw new IActException(e);
		}
		
		return 0;
	}

}
