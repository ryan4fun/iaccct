/**  
 * Copyright (c) Act Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: DAOFactory.java
 * Created: 2012-7-12
 */
package com.iact.dao;

import java.util.HashMap;
import java.util.Map;

import com.iact.IActException;

/**
 * 
 * DAO factory for getter of DAO instance.
 * 
 */
public class DAOFactory {

	/**
	 * DAO map, the key is DAO clazz name, the value is DAO instance.
	 */
	private static Map<String, IBaseHibernateDAO> DM = new HashMap<String, IBaseHibernateDAO>();

	private static String packagePrefix;
	/** Prepare current package's name */
	static {
		String tmp = DAOFactory.class.getName();
		int p = tmp.lastIndexOf(".");
		packagePrefix = tmp.substring(0, p + 1);
	}

	/**
	 * Getter of DAO instance with specified DAO clazz name.
	 * 
	 * @param daoClazzName
	 * @return
	 * @throws IActException
	 */
	public static synchronized IBaseHibernateDAO getDAO(String daoName)
			throws IActException {
		IBaseHibernateDAO dao = DM.get(daoName);
		if (dao == null) {
			String clazzName = packagePrefix + daoName;
			try {
				dao = (IBaseHibernateDAO) Class.forName(clazzName)
						.newInstance();
			} catch (InstantiationException e) {
				throw new IActException(e);
			} catch (IllegalAccessException e) {
				throw new IActException(e);
			} catch (ClassNotFoundException e) {
				throw new IActException(e);
			}
			DM.put(daoName, dao);
		}
		return dao;
	}
}
