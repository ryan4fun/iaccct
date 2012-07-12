package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Bizpackageitem;

/**
 * A data access object (DAO) providing persistence and search support for
 * Bizpackageitem entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Bizpackageitem
 * @author MyEclipse Persistence Tools
 */

public class BizpackageitemDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(BizpackageitemDAO.class);
	// property constants
	public static final String BIZ_PACKAGE = "bizPackage";
	public static final String BIZ_PROGRAM = "bizProgram";
	public static final String SEQUENCE_ID = "sequenceId";
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";

	public void save(Bizpackageitem transientInstance) {
		log.debug("saving Bizpackageitem instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bizpackageitem persistentInstance) {
		log.debug("deleting Bizpackageitem instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bizpackageitem findById(java.lang.Long id) {
		log.debug("getting Bizpackageitem instance with id: " + id);
		try {
			Bizpackageitem instance = (Bizpackageitem) getSession().get(
					"com.iact.vo.Bizpackageitem", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bizpackageitem instance) {
		log.debug("finding Bizpackageitem instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Bizpackageitem").add(Example.create(instance))
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
		log.debug("finding Bizpackageitem instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Bizpackageitem as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBizPackage(Object bizPackage) {
		return findByProperty(BIZ_PACKAGE, bizPackage);
	}

	public List findByBizProgram(Object bizProgram) {
		return findByProperty(BIZ_PROGRAM, bizProgram);
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

	public List findAll() {
		log.debug("finding all Bizpackageitem instances");
		try {
			String queryString = "from Bizpackageitem";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bizpackageitem merge(Bizpackageitem detachedInstance) {
		log.debug("merging Bizpackageitem instance");
		try {
			Bizpackageitem result = (Bizpackageitem) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bizpackageitem instance) {
		log.debug("attaching dirty Bizpackageitem instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bizpackageitem instance) {
		log.debug("attaching clean Bizpackageitem instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}