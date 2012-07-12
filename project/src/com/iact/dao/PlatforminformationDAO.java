package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Platforminformation;

/**
 * A data access object (DAO) providing persistence and search support for
 * Platforminformation entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Platforminformation
 * @author MyEclipse Persistence Tools
 */

public class PlatforminformationDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(PlatforminformationDAO.class);
	// property constants
	public static final String BIZ_TYPE = "bizType";
	public static final String TITLE = "title";
	public static final String INFORMATION = "information";

	public void save(Platforminformation transientInstance) {
		log.debug("saving Platforminformation instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Platforminformation persistentInstance) {
		log.debug("deleting Platforminformation instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Platforminformation findById(java.lang.Long id) {
		log.debug("getting Platforminformation instance with id: " + id);
		try {
			Platforminformation instance = (Platforminformation) getSession()
					.get("com.iact.vo.Platforminformation", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Platforminformation instance) {
		log.debug("finding Platforminformation instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Platforminformation").add(
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
		log.debug("finding Platforminformation instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Platforminformation as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBizType(Object bizType) {
		return findByProperty(BIZ_TYPE, bizType);
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByInformation(Object information) {
		return findByProperty(INFORMATION, information);
	}

	public List findAll() {
		log.debug("finding all Platforminformation instances");
		try {
			String queryString = "from Platforminformation";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Platforminformation merge(Platforminformation detachedInstance) {
		log.debug("merging Platforminformation instance");
		try {
			Platforminformation result = (Platforminformation) getSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Platforminformation instance) {
		log.debug("attaching dirty Platforminformation instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Platforminformation instance) {
		log.debug("attaching clean Platforminformation instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}