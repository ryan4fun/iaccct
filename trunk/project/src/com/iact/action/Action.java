/**  
 * @copyRight IAct Software Co.,Ltd.  

 * File: Action.java
 * Created: 2012-7-2
 */
package com.iact.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.IActException;

/**
 * Action interface of the whole IAct web application, all actions need to
 * implements the interface.
 * 
 * @author Andy
 * 
 */
public interface Action {

	/**
	 * Initialize the action <code>ServletContext</code>.
	 * 
	 * @param actionName
	 * @param context
	 */
	void init(String actionName, ServletContext context);

	/**
	 * 
	 * Do action with specified <code>ServletRequest</code>
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	void beforeAction(HttpServletRequest req, HttpServletResponse res);

	/**
	 * 
	 * Do action with specified <code>ServletRequest</code>
	 * 
	 * @param error
	 * @param req
	 * @param resp
	 * @return
	 */
	void afterAction(int error, HttpServletRequest req, HttpServletResponse res);

	/**
	 * 
	 * Do action with specified <code>ServletRequest</code>
	 * 
	 * @param req
	 * @param resp
	 * @return error code
	 */
	int doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException;
}
