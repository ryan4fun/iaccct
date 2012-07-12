/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: RegisterAction.java
 * Created: 2012-7-9
 */
package com.iact.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

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
public class RegisterAction extends AbstractAction {

	private static final String DAO = "UserDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		String userInfo = (String) reqParams.get("userInfo");

		try {
			JSONObject jo = new JSONObject(userInfo);

			User user = User.parse(jo);
			
			/**
			 * MD5 for password
			 */
			String pwd = user.getPwd();
			String pwdMd5 = DigestUtils.md5Hex(pwd);
			user.setPwd(pwdMd5);
			
			/**
			 * Save user
			 */
			UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAO);
			try {
				userDAO.beginTransaction();
				userDAO.save(user);
				userDAO.commitTransaction();
			} catch (Throwable t) {
				userDAO.rollbackTransaction();
				throw new IActException(t);
			} finally {
				userDAO.closeSession();			
			}
			
			try {
				_forward(req, res);
			} catch (Exception e) {
				throw new IActException(e);
			}
			return 0;
		} catch (JSONException e) {
			throw new IActException(e);
		}
		
	}

}
