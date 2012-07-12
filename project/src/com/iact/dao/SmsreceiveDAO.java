package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Smsreceive;

/**
 * A data access object (DAO) providing persistence and search support for
 * Smsreceive entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Smsreceive
 * @author MyEclipse Persistence Tools
 */

public class SmsreceiveDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SmsreceiveDAO.class);
	// property constants
	public static final String PHONE_NUMBER = "phoneNumber";
	public static final String MESSAGE = "message";

	public void save(Smsreceive transientInstance) {
		log.debug("saving Smsreceive instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Smsreceive persistentInstance) {
		log.debug("deleting Smsreceive instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Smsreceive findById(java.lang.Long id) {
		log.debug("getting Smsreceive instance with id: " + id);
		try {
			Smsreceive instance = (Smsreceive) getSession().get(
					"com.iact.vo.Smsreceive", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Smsreceive instance) {
		log.debug("finding Smsreceive instance by example");
		try {
			List results = getSession()
					.createCriteria("com.iact.vo.Smsreceive").add(
							Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Smsreceive instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Smsreceive as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPhoneNumber(Object phoneNumber) {
		return findByProperty(PHONE_NUMBER, phoneNumber);
	}

	public List findByMessage(Object message) {
		return findByProperty(MESSAGE, message);
	}

	public List findAll() {
		log.debug("finding all Smsreceive instances");
		try {
			String queryString = "from Smsreceive";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Smsreceive merge(Smsreceive detachedInstance) {
		log.debug("merging Smsreceive instance");
		try {
			Smsreceive result = (Smsreceive) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Smsreceive instance) {
		log.debug("attaching dirty Smsreceive instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Smsreceive instance) {
		log.debug("attaching clean Smsreceive instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}