package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Accountlog;

/**
 * A data access object (DAO) providing persistence and search support for
 * Accountlog entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Accountlog
 * @author MyEclipse Persistence Tools
 */

public class AccountlogDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory
			.getLog(AccountlogDAO.class);
	// property constants
	public static final String USER = "user";
	public static final String ORDER_ID = "orderId";
	public static final String TRANSACTION_ID = "transactionId";
	public static final String ALTER_MODE = "alterMode";
	public static final String ALTER_CONTEXT = "alterContext";
	public static final String EXPEND_AMOUNT = "expendAmount";
	public static final String INCOME_AMOUNT = "incomeAmount";
	public static final String BALANCE = "balance";

	public void save(Accountlog transientInstance) {
		log.debug("saving Accountlog instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Accountlog persistentInstance) {
		log.debug("deleting Accountlog instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Accountlog findById(java.lang.Long id) {
		log.debug("getting Accountlog instance with id: " + id);
		try {
			Accountlog instance = (Accountlog) getSession().get(
					"com.iact.vo.Accountlog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Accountlog instance) {
		log.debug("finding Accountlog instance by example");
		try {
			List results = getSession()
					.createCriteria("com.iact.vo.Accountlog").add(
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
		log.debug("finding Accountlog instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Accountlog as model where model."
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

	public List findByTransactionId(Object transactionId) {
		return findByProperty(TRANSACTION_ID, transactionId);
	}

	public List findByAlterMode(Object alterMode) {
		return findByProperty(ALTER_MODE, alterMode);
	}

	public List findByAlterContext(Object alterContext) {
		return findByProperty(ALTER_CONTEXT, alterContext);
	}

	public List findByExpendAmount(Object expendAmount) {
		return findByProperty(EXPEND_AMOUNT, expendAmount);
	}

	public List findByIncomeAmount(Object incomeAmount) {
		return findByProperty(INCOME_AMOUNT, incomeAmount);
	}

	public List findByBalance(Object balance) {
		return findByProperty(BALANCE, balance);
	}

	public List findAll() {
		log.debug("finding all Accountlog instances");
		try {
			String queryString = "from Accountlog";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Accountlog merge(Accountlog detachedInstance) {
		log.debug("merging Accountlog instance");
		try {
			Accountlog result = (Accountlog) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Accountlog instance) {
		log.debug("attaching dirty Accountlog instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Accountlog instance) {
		log.debug("attaching clean Accountlog instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}