/**  
 * Copyright (c) Jinfonet Inc. 2000-2009, All rights reserved.
 * File: IndexAction.java
 * Created: 2012-7-13
 */
package com.iact.action;

import java.util.List;

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
		
		// 4. Fetch common questions
		List<Platforminformation> questions = infoDAO.findByBizType(3);
		req.setAttribute("qs", questions);
		
		_forward(req, res);
		
		return 0;
	}

}
