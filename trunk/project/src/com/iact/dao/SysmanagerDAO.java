package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Sysmanager;

/**
 * A data access object (DAO) providing persistence and search support for
 * Sysmanager entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Sysmanager
 * @author MyEclipse Persistence Tools
 */

public class SysmanagerDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SysmanagerDAO.class);
	// property constants
	public static final String LOGIN = "login";
	public static final String PWD = "pwd";
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";
	public static final String ROLE_TYPE = "roleType";
	public static final String BIZ_CODE = "bizCode";
	public static final String STATUS = "status";

	public void save(Sysmanager transientInstance) {
		log.debug("saving Sysmanager instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Sysmanager persistentInstance) {
		log.debug("deleting Sysmanager instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Sysmanager findById(java.lang.Long id) {
		log.debug("getting Sysmanager instance with id: " + id);
		try {
			Sysmanager instance = (Sysmanager) getSession().get(
					"com.iact.vo.Sysmanager", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Sysmanager instance) {
		log.debug("finding Sysmanager instance by example");
		try {
			List results = getSession()
					.createCriteria("com.iact.vo.Sysmanager").add(
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
		log.debug("finding Sysmanager instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Sysmanager as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLogin(Object login) {
		return findByProperty(LOGIN, login);
	}

	public List findByPwd(Object pwd) {
		return findByProperty(PWD, pwd);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findByRoleType(Object roleType) {
		return findByProperty(ROLE_TYPE, roleType);
	}

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
	}

	public List findByStatus(Object status) {
		return findByProperty(STATUS, status);
	}

	public List findAll() {
		log.debug("finding all Sysmanager instances");
		try {
			String queryString = "from Sysmanager";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Sysmanager merge(Sysmanager detachedInstance) {
		log.debug("merging Sysmanager instance");
		try {
			Sysmanager result = (Sysmanager) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Sysmanager instance) {
		log.debug("attaching dirty Sysmanager instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Sysmanager instance) {
		log.debug("attaching clean Sysmanager instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}