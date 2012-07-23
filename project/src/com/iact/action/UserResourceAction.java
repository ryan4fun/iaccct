/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: UserResourceAction.java
 * Created: 2012-7-16
 */
package com.iact.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.util.json.JSONException;
import com.iact.util.json.JSONObject;
import com.iact.vo.User;

public class UserResourceAction extends AbstractAction {

	/**
	 * The max size of upload resource image
	 */
	private static final long MAX_SIZE = 3 * 1024 * 1024;

	/**
	 * File type of allowed upload
	 */
	private static final String[] ALLOWED_EXT = new String[] { "jpg", "jpeg",
			"png", "bmp" };

	/*
	 * Max user resource size, the default value is 10;
	 */
	private static final int MAX_USER_RESOURCE_SIZE = 10;

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload fileload = new ServletFileUpload(factory);
		String fileRes = null;
		fileload.setSizeMax(MAX_SIZE);
		try {
			List<FileItem> files = fileload.parseRequest(req);
			if (files != null) {
				for (FileItem item : files) {
					if (item.isFormField()) {
						continue;
					}

					if (item.getSize() > MAX_SIZE) {
						super.writeErrorMessage(
								ErrorCode.LARGER_THAN_MAX_UPSIZE, "上传文件超过3M",
								res);
						return ErrorCode.OK;
					}
					String fileName = item.getName();
					String ext = null;
					if (fileName != null) {
						int pos = fileName.lastIndexOf(".") + 1;
						ext = fileName.substring(pos);
						boolean allowed = allowed(ext);
						if (!allowed) {
							super.writeErrorMessage(
									ErrorCode.ILLEGAL_FILE_TYPE, "上传文件类型不对",
									res);
							return ErrorCode.OK;
						}
					}
					byte[] logo = item.get();
					fileRes = getFileName(req, ext);
					File f = new File(fileRes);
					if (f.exists()) {
						f.delete();
					}
					f = new File(fileRes);
					try {
						f.createNewFile();
					} catch (IOException e1) {
						throw new IActException(e1);
					}

					FileOutputStream out = null;
					try {
						out = new FileOutputStream(f);
						out.write(logo);
					} catch (IOException e) {
						throw new IActException(e);
					} finally {
						if (out != null) {
							try {
								out.flush();
								out.close();
							} catch (IOException e) {
								throw new IActException(e);
							}
						}
					}
					JSONObject o = new JSONObject();
					try {
						o.put("errorCode", ErrorCode.OK);

						o.put("fileName", fileRes.substring(fileRes.lastIndexOf("/") + 1));
					} catch (JSONException e) {
						throw new IActException(e);
					}
					super.writeResponse(o.toString(), res);
				}
			}
		} catch (FileUploadException e) {
			throw new IActException(e);
		}
		return ErrorCode.OK;
	}

	private boolean allowed(String fileExt) {
		for (int i = 0; i < ALLOWED_EXT.length; i++) {
			if (fileExt.equalsIgnoreCase(ALLOWED_EXT[i])) {
				return true;
			}
		}
		return false;
	}

	private String getFileName(HttpServletRequest req, String fileExt)
			throws IActException {
		User u = getSessionContainer(req).getUser();
		long id = u.getId();
		String realPath = req.getSession().getServletContext().getRealPath("/");

		if (realPath.endsWith("/")) {
			return realPath + "images/temp/" + id + "." + fileExt;
		} else {
			return realPath + "/images/temp/" + id + "." + fileExt;
		}
	}

	public static void main(String[] args) {
		String ss = "aa.jpg";

		System.out.println(ss.substring(ss.lastIndexOf(".") + 1));
	}
}
