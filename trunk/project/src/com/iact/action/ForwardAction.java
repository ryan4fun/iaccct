/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: ForwardAction.java
 * Created: 2012-7-9
 */
package com.iact.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.IActException;

/**
 * @author Andy
 *
 */
public class ForwardAction extends AbstractAction {

	
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String page = (String)reqParams.get("page");
		
		if (page == null) {
			page = "index.jsp";
		}
		
		try {
			req.getRequestDispatcher("WEB-INF/jsp/"+page).forward(req, res);
		} catch (ServletException e) {
			throw new IActException(e);
		} catch (IOException e) {
			throw new IActException(e);
		}
		return 0;
	}



}
