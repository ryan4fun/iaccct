/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: UserResourceAction.java
 * Created: 2012-7-16
 */
package com.iact.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Hibernate;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.ResultFile;
import com.iact.dao.DAOFactory;
import com.iact.dao.UserresourceDAO;
import com.iact.util.Tools;
import com.iact.util.json.JSONException;
import com.iact.vo.User;
import com.iact.vo.Userresource;

public class UserResourceAction extends AbstractAction {

	/*
	 * Max user resource size, the default value is 10;
	 */
	private static final int MAX_USER_RESOURCE_SIZE = 10;

	private static final String USER_RESOURCE_DAO = "UserresourceDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String type = (String) reqParams.get("type");
		if (type.equalsIgnoreCase("upload")) {
			ResultFile rst = Tools.uploadLogo(req);
			if (rst.getErrorCode() == ErrorCode.OK) {
				try {
					super.writeResponse(rst.toJSONObject().toString(), res);
				} catch (JSONException e) {
					throw new IActException(e);
				}
			} else {
				super.writeErrorMessage(rst.getErrorCode(), rst.getErrorMsg(),
						res);
			}
		} else if (type.equalsIgnoreCase("save")) {
			return submitResource(req, res);
		} else if (type.equalsIgnoreCase("dele")) {
			return deleUserResource(req, res);
		}
		return ErrorCode.OK;
	}

	private int submitResource(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String resType = (String) reqParams.get("resType");

		Userresource ures = new Userresource();
		User u = getSessionContainer(req).getUser();
		long userid = u.getId();
		ures.setUser(userid);

		Timestamp addTime = new Timestamp(System.currentTimeMillis());
		ures.setAddTime(addTime);
		ures.setDescription((String) reqParams.get("desc"));

		String subTitle = (String) reqParams.get("subTitle");
		ures.setSubtitle(subTitle);
		ures.setVerifyStatus("等待审核");
		ures.setSpotType("文字");

		if (resType.equalsIgnoreCase("1")) {
			// image
			String fileName = (String) reqParams.get("fileName");
			String fileFullPath = req.getSession().getServletContext()
					.getRealPath("/")
					+ "images/temp/" + fileName;
			File f = new File(fileFullPath);

			FileInputStream in;
			try {
				in = new FileInputStream(f);
				ures.setLogoData(Hibernate.createBlob(in));
			} catch (IOException e) {
				throw new IActException(e);
			}
			ures.setSpotType("图文");

			String imgScale = (String) reqParams.get("imgScale");
			if (imgScale == null || imgScale.equalsIgnoreCase("0")) {
				ures.setLogoX(120);
				ures.setLogoX(80);
			} else {
				ures.setLogoX(160);
				ures.setLogoX(120);
			}

			ures.setLogoType(Tools.getFileSuffix(fileName));
		}
		/**
		 * Save resource
		 */
		UserresourceDAO uresDAO = (UserresourceDAO) DAOFactory
				.getDAO(USER_RESOURCE_DAO);

		try {
			uresDAO.beginTransaction();
			uresDAO.save(ures);
			uresDAO.commitTransaction();
		} catch (Throwable t) {
			uresDAO.rollbackTransaction();
			throw new IActException(t);
		} finally {
			uresDAO.closeSession();
		}

		User user = getSessionContainer(req).getUser();
		int resNum = user.getResNum();
		getSessionContainer(req).getUser().setResNum(resNum + 1);

		try {
			res.sendRedirect("user.do?action=UserInfoAction&type=2");
		} catch (IOException e) {
			throw new IActException(e);
		}

		return ErrorCode.OK;
	}

	private int deleUserResource(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String ids = (String) reqParams.get("ids");
		UserresourceDAO uresDAO = (UserresourceDAO) DAOFactory
				.getDAO(USER_RESOURCE_DAO);
		if (ids != null) {
			String[] ss = ids.split(",");
			int len = ss.length;
			try {
				uresDAO.beginTransaction();
				for (int i = 0; i < len; i++) {
					long id = Long.parseLong(ss[i]);
					Userresource resource = uresDAO.findById(id);
					uresDAO.delete(resource);
				}
				uresDAO.commitTransaction();
			} catch (Throwable t) {
				uresDAO.rollbackTransaction();
			} finally {
				uresDAO.closeSession();
			}

			User user = getSessionContainer(req).getUser();
			int resNum = user.getResNum();
			getSessionContainer(req).getUser().setResNum(resNum - len);
		}

		try {
			res.sendRedirect("user.do?action=UserInfoAction&type=2");
		} catch (IOException e) {
			throw new IActException(e);
		}

		return ErrorCode.OK;
	}

}
