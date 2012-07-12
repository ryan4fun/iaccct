package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Bizprogram;

/**
 * A data access object (DAO) providing persistence and search support for
 * Bizprogram entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Bizprogram
 * @author MyEclipse Persistence Tools
 */

public class BizprogramDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(BizprogramDAO.class);
	// property constants
	public static final String BIZ_AREA = "bizArea";
	public static final String BIZ_SYSTEM = "bizSystem";
	public static final String BIZ_DEVICE = "bizDevice";
	public static final String BIZ_CODE = "bizCode";
	public static final String SEQUENCE_ID = "sequenceId";
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";
	public static final String BIZ_STATUS = "bizStatus";

	public void save(Bizprogram transientInstance) {
		log.debug("saving Bizprogram instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bizprogram persistentInstance) {
		log.debug("deleting Bizprogram instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bizprogram findById(java.lang.Long id) {
		log.debug("getting Bizprogram instance with id: " + id);
		try {
			Bizprogram instance = (Bizprogram) getSession().get(
					"com.iact.vo.Bizprogram", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bizprogram instance) {
		log.debug("finding Bizprogram instance by example");
		try {
			List results = getSession()
					.createCriteria("com.iact.vo.Bizprogram").add(
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
		log.debug("finding Bizprogram instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bizprogram as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBizArea(Object bizArea) {
		return findByProperty(BIZ_AREA, bizArea);
	}

	public List findByBizSystem(Object bizSystem) {
		return findByProperty(BIZ_SYSTEM, bizSystem);
	}

	public List findByBizDevice(Object bizDevice) {
		return findByProperty(BIZ_DEVICE, bizDevice);
	}

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
	}

	public List findBySequenceId(Object sequenceId) {
		return findByProperty(SEQUENCE_ID, sequenceId);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findByBizStatus(Object bizStatus) {
		return findByProperty(BIZ_STATUS, bizStatus);
	}

	public List findAll() {
		log.debug("finding all Bizprogram instances");
		try {
			String queryString = "from Bizprogram";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bizprogram merge(Bizprogram detachedInstance) {
		log.debug("merging Bizprogram instance");
		try {
			Bizprogram result = (Bizprogram) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bizprogram instance) {
		log.debug("attaching dirty Bizprogram instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bizprogram instance) {
		log.debug("attaching clean Bizprogram instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}