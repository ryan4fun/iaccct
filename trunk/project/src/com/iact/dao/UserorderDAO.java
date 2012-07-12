package com.iact.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import com.iact.vo.Userorder;

/**
 * A data access object (DAO) providing persistence and search support for
 * Userorder entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.iact.vo.Userorder
 * @author MyEclipse Persistence Tools
 */

public class UserorderDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(UserorderDAO.class);
	// property constants
	public static final String USER = "user";
	public static final String BIZ_PACKAGE = "bizPackage";
	public static final String TRANSACTION_ID = "transactionId";
	public static final String ORDER_ID = "orderId";
	public static final String ORDER_TYPE = "orderType";
	public static final String SPOT_TYPE = "spotType";
	public static final String SUBTITLE = "subtitle";
	public static final String LOGO_TYPE = "logoType";
	public static final String LOGO_DATA = "logoData";
	public static final String PACKAGE_INFO = "packageInfo";
	public static final String PACKAGE_NUMBER = "packageNumber";
	public static final String PLAN_FEE = "planFee";
	public static final String ACT_FEE = "actFee";
	public static final String VERIFY_MODE = "verifyMode";
	public static final String VERIFY_MANAGER = "verifyManager";
	public static final String VERIFY_STATUS = "verifyStatus";
	public static final String VERIFY_INFO = "verifyInfo";
	public static final String HANDLE_STATUS = "handleStatus";
	public static final String HANDLE_INFO = "handleInfo";

	public void save(Userorder transientInstance) {
		log.debug("saving Userorder instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Userorder persistentInstance) {
		log.debug("deleting Userorder instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Userorder findById(java.lang.Long id) {
		log.debug("getting Userorder instance with id: " + id);
		try {
			Userorder instance = (Userorder) getSession().get(
					"com.iact.vo.Userorder", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Userorder instance) {
		log.debug("finding Userorder instance by example");
		try {
			List results = getSession().createCriteria("com.iact.vo.Userorder")
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
		log.debug("finding Userorder instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Userorder as model where model."
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

	public List findByBizPackage(Object bizPackage) {
		return findByProperty(BIZ_PACKAGE, bizPackage);
	}

	public List findByTransactionId(Object transactionId) {
		return findByProperty(TRANSACTION_ID, transactionId);
	}

	public List findByOrderId(Object orderId) {
		return findByProperty(ORDER_ID, orderId);
	}

	public List findByOrderType(Object orderType) {
		return findByProperty(ORDER_TYPE, orderType);
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

	public List findByLogoData(Object logoData) {
		return findByProperty(LOGO_DATA, logoData);
	}

	public List findByPackageInfo(Object packageInfo) {
		return findByProperty(PACKAGE_INFO, packageInfo);
	}

	public List findByPackageNumber(Object packageNumber) {
		return findByProperty(PACKAGE_NUMBER, packageNumber);
	}

	public List findByPlanFee(Object planFee) {
		return findByProperty(PLAN_FEE, planFee);
	}

	public List findByActFee(Object actFee) {
		return findByProperty(ACT_FEE, actFee);
	}

	public List findByVerifyMode(Object verifyMode) {
		return findByProperty(VERIFY_MODE, verifyMode);
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

	public List findByHandleStatus(Object handleStatus) {
		return findByProperty(HANDLE_STATUS, handleStatus);
	}

	public List findByHandleInfo(Object handleInfo) {
		return findByProperty(HANDLE_INFO, handleInfo);
	}

	public List findAll() {
		log.debug("finding all Userorder instances");
		try {
			String queryString = "from Userorder";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Userorder merge(Userorder detachedInstance) {
		log.debug("merging Userorder instance");
		try {
			Userorder result = (Userorder) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Userorder instance) {
		log.debug("attaching dirty Userorder instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Userorder instance) {
		log.debug("attaching clean Userorder instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}