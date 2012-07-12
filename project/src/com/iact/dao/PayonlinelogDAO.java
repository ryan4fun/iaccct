package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Payonlinelog;

/**
 * A data access object (DAO) providing persistence and search support for
 * Payonlinelog entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Payonlinelog
 * @author MyEclipse Persistence Tools
 */

public class PayonlinelogDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(PayonlinelogDAO.class);
	// property constants
	public static final String ORDER_ID = "orderId";
	public static final String PRODUCT_ID = "productId";
	public static final String SERIAL_NUMBER = "serialNumber";
	public static final String PAY_MODE = "payMode";
	public static final String PAY_AMOUNT = "payAmount";
	public static final String PAY_CONTEXT = "payContext";
	public static final String IPADRESS = "ipadress";

	public void save(Payonlinelog transientInstance) {
		log.debug("saving Payonlinelog instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Payonlinelog persistentInstance) {
		log.debug("deleting Payonlinelog instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Payonlinelog findById(java.lang.Long id) {
		log.debug("getting Payonlinelog instance with id: " + id);
		try {
			Payonlinelog instance = (Payonlinelog) getSession().get(
					"com.iact.vo.Payonlinelog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Payonlinelog instance) {
		log.debug("finding Payonlinelog instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Payonlinelog").add(Example.create(instance))
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
		log.debug("finding Payonlinelog instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Payonlinelog as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByOrderId(Object orderId) {
		return findByProperty(ORDER_ID, orderId);
	}

	public List findByProductId(Object productId) {
		return findByProperty(PRODUCT_ID, productId);
	}

	public List findBySerialNumber(Object serialNumber) {
		return findByProperty(SERIAL_NUMBER, serialNumber);
	}

	public List findByPayMode(Object payMode) {
		return findByProperty(PAY_MODE, payMode);
	}

	public List findByPayAmount(Object payAmount) {
		return findByProperty(PAY_AMOUNT, payAmount);
	}

	public List findByPayContext(Object payContext) {
		return findByProperty(PAY_CONTEXT, payContext);
	}

	public List findByIpadress(Object ipadress) {
		return findByProperty(IPADRESS, ipadress);
	}

	public List findAll() {
		log.debug("finding all Payonlinelog instances");
		try {
			String queryString = "from Payonlinelog";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Payonlinelog merge(Payonlinelog detachedInstance) {
		log.debug("merging Payonlinelog instance");
		try {
			Payonlinelog result = (Payonlinelog) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Payonlinelog instance) {
		log.debug("attaching dirty Payonlinelog instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Payonlinelog instance) {
		log.debug("attaching clean Payonlinelog instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}