/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: IActServlet.java
 * Created: 2012-7-2
 */
package com.iact.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.iact.IActException;
import com.iact.action.Action;
import com.iact.action.ActionFactory;

/**
 * 
 * @author Andy
 *
 */
public class IActServlet extends HttpServlet {

	/**
	 * Default serial version UUID
	 */
	private static final long serialVersionUID = 1L;
	
	private Log log = LogFactory.getLog(IActServlet.class);

	/**
	 * Constructor of the object.
	 */
	public IActServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String actionName = request.getParameter("action");
		if (actionName == null) {
			actionName = "ForwardAction";
		}

		try {
			Action action = ActionFactory.createAction(actionName,
					getServletContext());
			action.beforeAction(request, response);
			int result = action.doAction(request, response);
			action.afterAction(result, request, response);
		} catch (IActException e) {
			log.error("Sorry exception occured : ", e);
			request.setAttribute("error", e);

			request.getRequestDispatcher("WEB-INF/jsp/error.jsp").forward(
					request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
