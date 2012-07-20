/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: OpenNewsAction.java
 * Created: 2012-7-9
 */
package com.iact.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.PlatforminformationDAO;
import com.iact.vo.Platforminformation;

public class OpenNewsAction extends AbstractAction {
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
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		PlatforminformationDAO infoDAO = (PlatforminformationDAO) DAOFactory
				.getDAO(DAO_PLATFORM);
		try {
			String id = (String) reqParams.get("id");
			if (id != null) {
				Platforminformation pinfo = infoDAO
						.findById(Long.parseLong(id));
				req.setAttribute("info", pinfo);

				reqParams.put("page", "newspage.jsp");
				_forward(req, res);
			}
		} catch (IActException e) {
			throw e;
		} catch (Throwable t) {
			throw new IActException(t);
		}

		return ErrorCode.OK;
	}
}
