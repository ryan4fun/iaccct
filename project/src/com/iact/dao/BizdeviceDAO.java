package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Bizdevice;

/**
 * A data access object (DAO) providing persistence and search support for
 * Bizdevice entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Bizdevice
 * @author MyEclipse Persistence Tools
 */

public class BizdeviceDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(BizdeviceDAO.class);
	// property constants
	public static final String BIZ_SYSTEM = "bizSystem";
	public static final String BIZ_CODE = "bizCode";
	public static final String BIZ_MODE = "bizMode";
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";

	public void save(Bizdevice transientInstance) {
		log.debug("saving Bizdevice instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bizdevice persistentInstance) {
		log.debug("deleting Bizdevice instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bizdevice findById(java.lang.Long id) {
		log.debug("getting Bizdevice instance with id: " + id);
		try {
			Bizdevice instance = (Bizdevice) getSession().get(
					"com.iact.vo.Bizdevice", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bizdevice instance) {
		log.debug("finding Bizdevice instance by example");
		try {
			List results = getSession().createCriteria("com.iact.vo.Bizdevice")
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
		log.debug("finding Bizdevice instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bizdevice as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBizSystem(Object bizSystem) {
		return findByProperty(BIZ_SYSTEM, bizSystem);
	}

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
	}

	public List findByBizMode(Object bizMode) {
		return findByProperty(BIZ_MODE, bizMode);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findAll() {
		log.debug("finding all Bizdevice instances");
		try {
			String queryString = "from Bizdevice";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bizdevice merge(Bizdevice detachedInstance) {
		log.debug("merging Bizdevice instance");
		try {
			Bizdevice result = (Bizdevice) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bizdevice instance) {
		log.debug("attaching dirty Bizdevice instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bizdevice instance) {
		log.debug("attaching clean Bizdevice instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}