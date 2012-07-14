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

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserDAO;
import com.iact.util.json.JSONException;
import com.iact.util.json.JSONObject;
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
		String loginName = (String) reqParams.get("loginName");
		String password = (String) reqParams.get("password");

		if (!authCode.equalsIgnoreCase(pAuthCode)) {

			String errMsg = "验证码错误！";
			getSessionContainer(req).setUser(null);
			writeErrorMessage(ErrorCode.AUTH_FAILURE, errMsg, res);

			return 0;
		} else {

			String pMD5 = DigestUtils.md5Hex(password);

			UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAO);
			List<User> users = userDAO.findByLogin(loginName);
			if (users != null) {
				for (User user : users) {
					boolean matched = user.getPwd().equals(pMD5);
					if (matched) {
						getSessionContainer(req).setUser(user);
						JSONObject jo = new JSONObject();
						try {
							jo.put("errorCode", ErrorCode.OK);
						} catch (JSONException e) {
							throw new IActException(e);
						}
						writeResponse(jo.toString(), res);
						return 0;
					}
				}
			}
		}

		String errMsg = "用户名或密码错误！";
		getSessionContainer(req).setUser(null);
		writeErrorMessage(ErrorCode.UN_UP, errMsg, res);
		return 0;
	}
	
	public static void main(String[] args) {
		String un = "admin";
		String pwd = "admin";
		
		System.out.println(DigestUtils.md5Hex(pwd));
		
	}
}
