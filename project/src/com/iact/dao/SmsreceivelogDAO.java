package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Smsreceivelog;

/**
 * A data access object (DAO) providing persistence and search support for
 * Smsreceivelog entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Smsreceivelog
 * @author MyEclipse Persistence Tools
 */

public class SmsreceivelogDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SmsreceivelogDAO.class);
	// property constants
	public static final String PHONE_NUMBER = "phoneNumber";
	public static final String MESSAGE = "message";
	public static final String BIZ_CODE = "bizCode";
	public static final String BIZ_CONTEXT = "bizContext";
	public static final String HANDLE_STATUS = "handleStatus";
	public static final String HANDLE_INFO = "handleInfo";

	public void save(Smsreceivelog transientInstance) {
		log.debug("saving Smsreceivelog instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Smsreceivelog persistentInstance) {
		log.debug("deleting Smsreceivelog instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Smsreceivelog findById(java.lang.Long id) {
		log.debug("getting Smsreceivelog instance with id: " + id);
		try {
			Smsreceivelog instance = (Smsreceivelog) getSession().get(
					"com.iact.vo.Smsreceivelog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Smsreceivelog instance) {
		log.debug("finding Smsreceivelog instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Smsreceivelog").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Smsreceivelog instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Smsreceivelog as model where model."
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

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
	}

	public List findByBizContext(Object bizContext) {
		return findByProperty(BIZ_CONTEXT, bizContext);
	}

	public List findByHandleStatus(Object handleStatus) {
		return findByProperty(HANDLE_STATUS, handleStatus);
	}

	public List findByHandleInfo(Object handleInfo) {
		return findByProperty(HANDLE_INFO, handleInfo);
	}

	public List findAll() {
		log.debug("finding all Smsreceivelog instances");
		try {
			String queryString = "from Smsreceivelog";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Smsreceivelog merge(Smsreceivelog detachedInstance) {
		log.debug("merging Smsreceivelog instance");
		try {
			Smsreceivelog result = (Smsreceivelog) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Smsreceivelog instance) {
		log.debug("attaching dirty Smsreceivelog instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Smsreceivelog instance) {
		log.debug("attaching clean Smsreceivelog instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}