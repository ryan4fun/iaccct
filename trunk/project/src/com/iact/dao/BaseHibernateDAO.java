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
	protected void beginTransaction() {
		HibernateSessionFactory.beginTransaction();
	}

	/**
	 * Commit
	 */
	protected void commitTransaction() {
		HibernateSessionFactory.commitTransaction();
	}
	
	/**
	 * Close current session
	 */
	protected void closeSession() {
		HibernateSessionFactory.closeSession();		
	}

	/**
	 * Rollback
	 */
	protected void rollbackTransaction() {
		HibernateSessionFactory.rollbackTransaction();
	}
	
	
}