package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Expendrecord;

/**
 * A data access object (DAO) providing persistence and search support for
 * Expendrecord entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Expendrecord
 * @author MyEclipse Persistence Tools
 */

public class ExpendrecordDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(ExpendrecordDAO.class);
	// property constants
	public static final String USER = "user";
	public static final String ORDER_ID = "orderId";
	public static final String PREPAID_AMOUNT = "prepaidAmount";
	public static final String FINALPAID_AMOUNT = "finalpaidAmount";
	public static final String PAID_STATUS = "paidStatus";

	public void save(Expendrecord transientInstance) {
		log.debug("saving Expendrecord instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Expendrecord persistentInstance) {
		log.debug("deleting Expendrecord instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Expendrecord findById(java.lang.Long id) {
		log.debug("getting Expendrecord instance with id: " + id);
		try {
			Expendrecord instance = (Expendrecord) getSession().get(
					"com.iact.vo.Expendrecord", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Expendrecord instance) {
		log.debug("finding Expendrecord instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Expendrecord").add(Example.create(instance))
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
		log.debug("finding Expendrecord instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Expendrecord as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUser(Object user) {
		return findByProperty(USER, user);
	}

	public List findByOrderId(Object orderId) {
		return findByProperty(ORDER_ID, orderId);
	}

	public List findByPrepaidAmount(Object prepaidAmount) {
		return findByProperty(PREPAID_AMOUNT, prepaidAmount);
	}

	public List findByFinalpaidAmount(Object finalpaidAmount) {
		return findByProperty(FINALPAID_AMOUNT, finalpaidAmount);
	}

	public List findByPaidStatus(Object paidStatus) {
		return findByProperty(PAID_STATUS, paidStatus);
	}

	public List findAll() {
		log.debug("finding all Expendrecord instances");
		try {
			String queryString = "from Expendrecord";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Expendrecord merge(Expendrecord detachedInstance) {
		log.debug("merging Expendrecord instance");
		try {
			Expendrecord result = (Expendrecord) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Expendrecord instance) {
		log.debug("attaching dirty Expendrecord instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Expendrecord instance) {
		log.debug("attaching clean Expendrecord instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}