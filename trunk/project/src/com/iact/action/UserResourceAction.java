/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: UserResourceAction.java
 * Created: 2012-7-16
 */
package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.iact.IActException;

public class UserResourceAction extends AbstractAction{

	/**
	 * The max size of upload resource image
	 */
	private static final long MAX_SIZE = 3 * 1024; 
	
	/**
	 * File type of allowed upload
	 */
	private static final String[] ALLOWED_EXT = new String[]{"jpg", "jpeg", "png", "bmp"};
	
	/*
	 * Max user resource size, the default value is 10;
	 */
	private static final int MAX_USER_RESOURCE_SIZE = 10;
	
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload fileload = new ServletFileUpload(factory);
		
		fileload.setSizeMax(MAX_SIZE);
		try {
			List<FileItem> files = fileload.parseRequest(req);
			if (files != null) {
				for (FileItem item: files) {
					if (item.isFormField()) {
						continue;
					}
					
					if (item.getSize() > MAX_SIZE) {
						
					}
					String fileName = item.getName();
					if (fileName != null) {
						
					}
					byte[] logo = item.get();
					
				}
			}
		} catch (FileUploadException e) {
			throw new IActException(e);
		}
		
		return 0;
	}
	
	private boolean allowed(String fileName) {
		return true;
	}

}
