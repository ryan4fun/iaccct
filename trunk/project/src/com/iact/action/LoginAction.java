/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: LoginAction.java
 * Created: 2012-7-9
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserDAO;
import com.iact.vo.User;

/**
 * @author Andy
 * 
 */
public class LoginAction extends AbstractAction {

	private static final String DAO = "UserDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		String authCode = (String) req.getSession().getAttribute("authCode");
		String pAuthCode = (String) reqParams.get("authCode");

		if (!authCode.equalsIgnoreCase(pAuthCode)) {
			String errMsg = "验证码输入错误！";
			getSessionContainer(req).setUser(null);
			req.getSession().setAttribute("errMsg", errMsg);
			_forward(req, res);
			return 0;
		} else {
			String loginName = (String) reqParams.get("loginName");
			String password = (String) reqParams.get("password");
			String pMD5 = DigestUtils.md5Hex(password);

			UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAO);
			List<User> users = userDAO.findByLogin(loginName);
			if (users != null) {
				for (User user : users) {
					boolean matched = user.getPwd().equals(pMD5);
					if (matched) {
						getSessionContainer(req).setUser(user);
						_forward(req, res);

						return 0;
					}
				}
			}
		}

		String errMsg = "用户名或者密码输入错误！";
		getSessionContainer(req).setUser(null);
		req.getSession().setAttribute("errMsg", errMsg);
		_forward(req, res);

		return 0;
	}

}
