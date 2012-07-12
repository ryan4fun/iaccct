package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Payrecord;

/**
 * A data access object (DAO) providing persistence and search support for
 * Payrecord entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Payrecord
 * @author MyEclipse Persistence Tools
 */

public class PayrecordDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(PayrecordDAO.class);
	// property constants
	public static final String USER = "user";
	public static final String ORDER_ID = "orderId";
	public static final String PRODUCT_ID = "productId";
	public static final String SERIAL_NUMBER = "serialNumber";
	public static final String PAY_MODE = "payMode";
	public static final String PAY_AMOUNT = "payAmount";
	public static final String ADD_FEE = "addFee";
	public static final String IPADRESS = "ipadress";

	public void save(Payrecord transientInstance) {
		log.debug("saving Payrecord instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Payrecord persistentInstance) {
		log.debug("deleting Payrecord instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Payrecord findById(java.lang.Long id) {
		log.debug("getting Payrecord instance with id: " + id);
		try {
			Payrecord instance = (Payrecord) getSession().get(
					"com.iact.vo.Payrecord", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Payrecord instance) {
		log.debug("finding Payrecord instance by example");
		try {
			List results = getSession().createCriteria("com.iact.vo.Payrecord")
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
		log.debug("finding Payrecord instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Payrecord as model where model."
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

	public List findByAddFee(Object addFee) {
		return findByProperty(ADD_FEE, addFee);
	}

	public List findByIpadress(Object ipadress) {
		return findByProperty(IPADRESS, ipadress);
	}

	public List findAll() {
		log.debug("finding all Payrecord instances");
		try {
			String queryString = "from Payrecord";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Payrecord merge(Payrecord detachedInstance) {
		log.debug("merging Payrecord instance");
		try {
			Payrecord result = (Payrecord) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Payrecord instance) {
		log.debug("attaching dirty Payrecord instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Payrecord instance) {
		log.debug("attaching clean Payrecord instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}