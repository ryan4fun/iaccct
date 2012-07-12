package com.iact.dao;

import org.hibernate.Session;


/**
 * Data access object (DAO) for domain model
 * @author MyEclipse Persistence Tools
 */
public class BaseHibernateDAO implements IBaseHibernateDAO {
	
	public Session getSession() {
		return HibernateSessionFactory.getSession();
	}
	
	/**
	 * Begin
	 */
	public void beginTransaction() {
		HibernateSessionFactory.beginTransaction();
	}

	/**
	 * Commit
	 */
	public void commitTransaction() {
		HibernateSessionFactory.commitTransaction();
	}
	
	/**
	 * Close current session
	 */
	public void closeSession() {
		HibernateSessionFactory.closeSession();		
	}

	/**
	 * Rollback
	 */
	public void rollbackTransaction() {
		HibernateSessionFactory.rollbackTransaction();
	}
	
	
}