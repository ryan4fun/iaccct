package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Bizarea;

/**
 * A data access object (DAO) providing persistence and search support for
 * Bizarea entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Bizarea
 * @author MyEclipse Persistence Tools
 */

public class BizareaDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(BizareaDAO.class);
	// property constants
	public static final String AREA = "area";
	public static final String PARENT = "parent";
	public static final String LEVEL = "level";
	public static final String SEQUENCE_ID = "sequenceId";
	public static final String BIZ_CODE = "bizCode";
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";
	public static final String BIZ_STATUS = "bizStatus";

	public void save(Bizarea transientInstance) {
		log.debug("saving Bizarea instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bizarea persistentInstance) {
		log.debug("deleting Bizarea instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bizarea findById(java.lang.Long id) {
		log.debug("getting Bizarea instance with id: " + id);
		try {
			Bizarea instance = (Bizarea) getSession().get(
					"com.iact.vo.Bizarea", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bizarea instance) {
		log.debug("finding Bizarea instance by example");
		try {
			List results = getSession().createCriteria("com.iact.vo.Bizarea")
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
		log.debug("finding Bizarea instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bizarea as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByArea(Object area) {
		return findByProperty(AREA, area);
	}

	public List findByParent(Object parent) {
		return findByProperty(PARENT, parent);
	}

	public List findByLevel(Object level) {
		return findByProperty(LEVEL, level);
	}

	public List findBySequenceId(Object sequenceId) {
		return findByProperty(SEQUENCE_ID, sequenceId);
	}

	public List findByBizCode(Object bizCode) {
		return findByProperty(BIZ_CODE, bizCode);
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
		log.debug("finding all Bizarea instances");
		try {
			String queryString = "from Bizarea";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bizarea merge(Bizarea detachedInstance) {
		log.debug("merging Bizarea instance");
		try {
			Bizarea result = (Bizarea) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bizarea instance) {
		log.debug("attaching dirty Bizarea instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bizarea instance) {
		log.debug("attaching clean Bizarea instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}