package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Smssend;

/**
 * A data access object (DAO) providing persistence and search support for
 * Smssend entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Smssend
 * @author MyEclipse Persistence Tools
 */

public class SmssendDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SmssendDAO.class);
	// property constants
	public static final String PHONE_NUMBER = "phoneNumber";
	public static final String BIZ_CODE = "bizCode";
	public static final String BIZ_CONTEXT = "bizContext";
	public static final String MESSAGE = "message";

	public void save(Smssend transientInstance) {
		log.debug("saving Smssend instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Smssend persistentInstance) {
		log.debug("deleting Smssend instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Smssend findById(java.lang.Long id) {
		log.debug("getting Smssend instance with id: " + id);
		try {
			Smssend instance = (Smssend) getSession().get(
					"com.iact.vo.Smssend", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Smssend instance) {
		log.debug("finding Smssend instance by example");
		try {
			List results = getSession().createCriteria("com.iact.vo.Smssend")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Smssend instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Smssend as model where model."
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

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
	}

	public List findByBizContext(Object bizContext) {
		return findByProperty(BIZ_CONTEXT, bizContext);
	}

	public List findByMessage(Object message) {
		return findByProperty(MESSAGE, message);
	}

	public List findAll() {
		log.debug("finding all Smssend instances");
		try {
			String queryString = "from Smssend";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Smssend merge(Smssend detachedInstance) {
		log.debug("merging Smssend instance");
		try {
			Smssend result = (Smssend) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Smssend instance) {
		log.debug("attaching dirty Smssend instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Smssend instance) {
		log.debug("attaching clean Smssend instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}