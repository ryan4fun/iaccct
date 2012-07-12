package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Smssendlog;

/**
 * A data access object (DAO) providing persistence and search support for
 * Smssendlog entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Smssendlog
 * @author MyEclipse Persistence Tools
 */

public class SmssendlogDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SmssendlogDAO.class);
	// property constants
	public static final String PHONE_NUMBER = "phoneNumber";
	public static final String ADD_TIME = "addTime";
	public static final String BIZ_CODE = "bizCode";
	public static final String BIZ_CONTEXT = "bizContext";
	public static final String MESSAGE = "message";
	public static final String SEND_STATUS = "sendStatus";
	public static final String SEND_INFO = "sendInfo";

	public void save(Smssendlog transientInstance) {
		log.debug("saving Smssendlog instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Smssendlog persistentInstance) {
		log.debug("deleting Smssendlog instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Smssendlog findById(java.lang.Long id) {
		log.debug("getting Smssendlog instance with id: " + id);
		try {
			Smssendlog instance = (Smssendlog) getSession().get(
					"com.iact.vo.Smssendlog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Smssendlog instance) {
		log.debug("finding Smssendlog instance by example");
		try {
			List results = getSession()
					.createCriteria("com.iact.vo.Smssendlog").add(
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
		log.debug("finding Smssendlog instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Smssendlog as model where model."
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

	public List findByAddTime(Object addTime) {
		return findByProperty(ADD_TIME, addTime);
	}

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
	}

	public List findByBizContext(Object bizContext) {
		return findByProperty(BIZ_CONTEXT, bizContext);
	}

	public List findByMessage(Object message) {
		return findByProperty(MESSAGE, message);
	}

	public List findBySendStatus(Object sendStatus) {
		return findByProperty(SEND_STATUS, sendStatus);
	}

	public List findBySendInfo(Object sendInfo) {
		return findByProperty(SEND_INFO, sendInfo);
	}

	public List findAll() {
		log.debug("finding all Smssendlog instances");
		try {
			String queryString = "from Smssendlog";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Smssendlog merge(Smssendlog detachedInstance) {
		log.debug("merging Smssendlog instance");
		try {
			Smssendlog result = (Smssendlog) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Smssendlog instance) {
		log.debug("attaching dirty Smssendlog instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Smssendlog instance) {
		log.debug("attaching clean Smssendlog instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}