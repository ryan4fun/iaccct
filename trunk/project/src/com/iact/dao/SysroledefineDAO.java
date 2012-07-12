package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Sysroledefine;

/**
 * A data access object (DAO) providing persistence and search support for
 * Sysroledefine entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.iact.vo.Sysroledefine
 * @author MyEclipse Persistence Tools
 */

public class SysroledefineDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SysroledefineDAO.class);
	// property constants
	public static final String SYS_MANAGER = "sysManager";
	public static final String BIZ_SYSTEM = "bizSystem";
	public static final String ROLE_TYPE = "roleType";

	public void save(Sysroledefine transientInstance) {
		log.debug("saving Sysroledefine instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Sysroledefine persistentInstance) {
		log.debug("deleting Sysroledefine instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Sysroledefine findById(java.lang.Long id) {
		log.debug("getting Sysroledefine instance with id: " + id);
		try {
			Sysroledefine instance = (Sysroledefine) getSession().get(
					"com.iact.vo.Sysroledefine", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Sysroledefine instance) {
		log.debug("finding Sysroledefine instance by example");
		try {
			List results = getSession().createCriteria(
					"com.iact.vo.Sysroledefine").add(Example.create(instance))
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
		log.debug("finding Sysroledefine instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Sysroledefine as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findBySysManager(Object sysManager) {
		return findByProperty(SYS_MANAGER, sysManager);
	}

	public List findByBizSystem(Object bizSystem) {
		return findByProperty(BIZ_SYSTEM, bizSystem);
	}

	public List findByRoleType(Object roleType) {
		return findByProperty(ROLE_TYPE, roleType);
	}

	public List findAll() {
		log.debug("finding all Sysroledefine instances");
		try {
			String queryString = "from Sysroledefine";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Sysroledefine merge(Sysroledefine detachedInstance) {
		log.debug("merging Sysroledefine instance");
		try {
			Sysroledefine result = (Sysroledefine) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Sysroledefine instance) {
		log.debug("attaching dirty Sysroledefine instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Sysroledefine instance) {
		log.debug("attaching clean Sysroledefine instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}