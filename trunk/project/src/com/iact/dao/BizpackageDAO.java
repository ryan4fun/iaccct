package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Bizpackage;

/**
 * A data access object (DAO) providing persistence and search support for
 * Bizpackage entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Bizpackage
 * @author MyEclipse Persistence Tools
 */

public class BizpackageDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(BizpackageDAO.class);
	// property constants
	public static final String BIZ_AREA = "bizArea";
	public static final String BIZ_CODE = "bizCode";
	public static final String SEQUENCE_ID = "sequenceId";
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";
	public static final String BEGIN_TIME = "beginTime";
	public static final String END_TIME = "endTime";
	public static final String SPOT_TYPE = "spotType";
	public static final String SUBTITLE_SPEC = "subtitleSpec";
	public static final String SUBTITLE_INFO = "subtitleInfo";
	public static final String LOGO_SPEC = "logoSpec";
	public static final String LOGO_INFO = "logoInfo";
	public static final String PLAY_NUMBER = "playNumber";
	public static final String PRICE = "price";
	public static final String STATUS = "status";

	public void save(Bizpackage transientInstance) {
		log.debug("saving Bizpackage instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bizpackage persistentInstance) {
		log.debug("deleting Bizpackage instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bizpackage findById(java.lang.Long id) {
		log.debug("getting Bizpackage instance with id: " + id);
		try {
			Bizpackage instance = (Bizpackage) getSession().get(
					"com.iact.vo.Bizpackage", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bizpackage instance) {
		log.debug("finding Bizpackage instance by example");
		try {
			List results = getSession()
					.createCriteria("com.iact.vo.Bizpackage").add(
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
		log.debug("finding Bizpackage instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bizpackage as model where model."
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

	public List findByBeginTime(Object beginTime) {
		return findByProperty(BEGIN_TIME, beginTime);
	}

	public List findByEndTime(Object endTime) {
		return findByProperty(END_TIME, endTime);
	}

	public List findBySpotType(Object spotType) {
		return findByProperty(SPOT_TYPE, spotType);
	}

	public List findBySubtitleSpec(Object subtitleSpec) {
		return findByProperty(SUBTITLE_SPEC, subtitleSpec);
	}

	public List findBySubtitleInfo(Object subtitleInfo) {
		return findByProperty(SUBTITLE_INFO, subtitleInfo);
	}

	public List findByLogoSpec(Object logoSpec) {
		return findByProperty(LOGO_SPEC, logoSpec);
	}

	public List findByLogoInfo(Object logoInfo) {
		return findByProperty(LOGO_INFO, logoInfo);
	}

	public List findByPlayNumber(Object playNumber) {
		return findByProperty(PLAY_NUMBER, playNumber);
	}

	public List findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}

	public List findByStatus(Object status) {
		return findByProperty(STATUS, status);
	}

	public List findAll() {
		log.debug("finding all Bizpackage instances");
		try {
			String queryString = "from Bizpackage";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bizpackage merge(Bizpackage detachedInstance) {
		log.debug("merging Bizpackage instance");
		try {
			Bizpackage result = (Bizpackage) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bizpackage instance) {
		log.debug("attaching dirty Bizpackage instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bizpackage instance) {
		log.debug("attaching clean Bizpackage instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}