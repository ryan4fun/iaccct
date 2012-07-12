package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Userresource;

/**
 * A data access object (DAO) providing persistence and search support for
 * Userresource entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Userresource
 * @author MyEclipse Persistence Tools
 */

public class UserresourceDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(UserresourceDAO.class);
	// property constants
	public static final String USER = "user";
	public static final String SPOT_TYPE = "spotType";
	public static final String SUBTITLE = "subtitle";
	public static final String LOGO_TYPE = "logoType";
	public static final String LOGO_X = "logoX";
	public static final String LOGO_Y = "logoY";
	public static final String LOGO_DATA = "logoData";
	public static final String DESCRIPTION = "description";
	public static final String VERIFY_MANAGER = "verifyManager";
	public static final String VERIFY_STATUS = "verifyStatus";
	public static final String VERIFY_INFO = "verifyInfo";

	public void save(Userresource transientInstance) {
		log.debug("saving Userresource instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Userresource persistentInstance) {
		log.debug("deleting Userresource instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Userresource findById(java.lang.Long id) {
		log.debug("getting Userresource instance with id: " + id);
		try {
			Userresource instance = (Userresource) getSession().get(
					"com.iact.vo.Userresource", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Userresource instance) {
		log.debug("finding Userresource instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Userresource").add(Example.create(instance))
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
		log.debug("finding Userresource instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Userresource as model where model."
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

	public List findBySpotType(Object spotType) {
		return findByProperty(SPOT_TYPE, spotType);
	}

	public List findBySubtitle(Object subtitle) {
		return findByProperty(SUBTITLE, subtitle);
	}

	public List findByLogoType(Object logoType) {
		return findByProperty(LOGO_TYPE, logoType);
	}

	public List findByLogoX(Object logoX) {
		return findByProperty(LOGO_X, logoX);
	}

	public List findByLogoY(Object logoY) {
		return findByProperty(LOGO_Y, logoY);
	}

	public List findByLogoData(Object logoData) {
		return findByProperty(LOGO_DATA, logoData);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findByVerifyManager(Object verifyManager) {
		return findByProperty(VERIFY_MANAGER, verifyManager);
	}

	public List findByVerifyStatus(Object verifyStatus) {
		return findByProperty(VERIFY_STATUS, verifyStatus);
	}

	public List findByVerifyInfo(Object verifyInfo) {
		return findByProperty(VERIFY_INFO, verifyInfo);
	}

	public List findAll() {
		log.debug("finding all Userresource instances");
		try {
			String queryString = "from Userresource";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Userresource merge(Userresource detachedInstance) {
		log.debug("merging Userresource instance");
		try {
			Userresource result = (Userresource) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Userresource instance) {
		log.debug("attaching dirty Userresource instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Userresource instance) {
		log.debug("attaching clean Userresource instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}