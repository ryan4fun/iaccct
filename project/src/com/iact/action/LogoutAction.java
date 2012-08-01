/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: LogoutAction.java
 * Created: 2012-7-17
 */
package com.iact.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.IActException;
import com.iact.vo.User;

public class LogoutAction extends AbstractAction {

	/* (non-Javadoc)
	 * @see com.iact.action.AbstractAction#_doAction(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		
		User  user = super.getSessionContainer(req).getUser();
		if (user != null) {
			super.getSessionContainer(req).setUser(null);
			super.getSessionContainer(req).getCart().empty();
		}
		try {
			req.getRequestDispatcher("index.do?action=IndexAction").forward(req, res);
		} catch (ServletException e) {
			throw new IActException(e);
		} catch (IOException e) {
			throw new IActException(e);
		}
		return 0;
	}

}
