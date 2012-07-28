/**  
 * @copyRight IAct Software Co.,Ltd.  

 * @author Administrator
 * File: ForgetPwdAction.java
 * Created: 2012-7-28
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserDAO;
import com.iact.vo.User;

/**
 * @author Andy
 *
 */
public class ForgetPwdAction extends AbstractAction {
	
	private static final String USER_DAO  = "UserDAO";

	/* (non-Javadoc)
	 * @see com.iact.action.AbstractAction#_doAction(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String login = (String)reqParams.get("login");
		String email = (String)reqParams.get("email");
		
		UserDAO DAO = (UserDAO)DAOFactory.getDAO(USER_DAO);
		
		int start = 0; 
		int limit = 10;
		
		String hsql = "from User u where u.login='"+login+"' and email='" + email + "'" ;
		List<User> users = DAO.findByHSQL(hsql, start, limit);
		
		if (users != null && users.size() > 0) {
			// reset password and send to mail	
		} else {
			super.writeErrorMessage(ErrorCode.ERROR, "注册用户名或者邮箱地址错误", res);	
		}
		return ErrorCode.OK;
	}

}
