package com.iact.vo;

import java.sql.Timestamp;
import java.util.Date;

/**
 * AbstractUserorder entity provides the base persistence definition of the
 * Userorder entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUserorder implements java.io.Serializable {

	// Fields

	private Long id;
	private Long user;
	private Bizpackage bizPackage;
	private String transactionId;
	private String orderId;
	private String orderType;
	private String spotType;
	private String subtitle;
	private String logoType;
	private java.sql.Blob logoData;
	private String packageInfo;
	private Integer packageNumber;
	private Date planDate;
	private Timestamp planBegin;
	private Timestamp planEnd;
	private Timestamp actBegin;
	private Timestamp actEnd;
	private Double planFee;
	private Double actFee;
	private Timestamp createTime;
	private Timestamp verifyTime;
	private String verifyMode;
	private Long verifyManager;
	private String verifyStatus;
	private String verifyInfo;
	private Timestamp handleTime;
	private String handleStatus;
	private String handleInfo;

	// Constructors

	/** default constructor */
	public AbstractUserorder() {
	}

	/** minimal constructor */
	public AbstractUserorder(Long id, Long user, Bizpackage bizPackage,
			String transactionId, String orderId, String orderType,
			String spotType, String subtitle, Integer packageNumber,
			Date planDate, Double planFee, String verifyStatus,
			String handleStatus) {
		this.id = id;
		this.user = user;
		this.bizPackage = bizPackage;
		this.transactionId = transactionId;
		this.orderId = orderId;
		this.orderType = orderType;
		this.spotType = spotType;
		this.subtitle = subtitle;
		this.packageNumber = packageNumber;
		this.planDate = planDate;
		this.planFee = planFee;
		this.verifyStatus = verifyStatus;
		this.handleStatus = handleStatus;
	}

	/** full constructor */
	public AbstractUserorder(Long id, Long user, Bizpackage bizPackage,
			String transactionId, String orderId, String orderType,
			String spotType, String subtitle, String logoType, java.sql.Blob logoData,
			String packageInfo, Integer packageNumber, Date planDate,
			Timestamp planBegin, Timestamp planEnd, Timestamp actBegin,
			Timestamp actEnd, Double planFee, Double actFee,
			Timestamp createTime, Timestamp verifyTime, String verifyMode,
			Long verifyManager, String verifyStatus, String verifyInfo,
			Timestamp handleTime, String handleStatus, String handleInfo) {
		this.id = id;
		this.user = user;
		this.bizPackage = bizPackage;
		this.transactionId = transactionId;
		this.orderId = orderId;
		this.orderType = orderType;
		this.spotType = spotType;
		this.subtitle = subtitle;
		this.logoType = logoType;
		this.logoData = logoData;
		this.packageInfo = packageInfo;
		this.packageNumber = packageNumber;
		this.planDate = planDate;
		this.planBegin = planBegin;
		this.planEnd = planEnd;
		this.actBegin = actBegin;
		this.actEnd = actEnd;
		this.planFee = planFee;
		this.actFee = actFee;
		this.createTime = createTime;
		this.verifyTime = verifyTime;
		this.verifyMode = verifyMode;
		this.verifyManager = verifyManager;
		this.verifyStatus = verifyStatus;
		this.verifyInfo = verifyInfo;
		this.handleTime = handleTime;
		this.handleStatus = handleStatus;
		this.handleInfo = handleInfo;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUser() {
		return this.user;
	}

	public void setUser(Long user) {
		this.user = user;
	}

	public Bizpackage getBizPackage() {
		return this.bizPackage;
	}

	public void setBizPackage(Bizpackage bizPackage) {
		this.bizPackage = bizPackage;
	}

	public String getTransactionId() {
		return this.transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	public String getOrderId() {
		return this.orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getOrderType() {
		return this.orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getSpotType() {
		return this.spotType;
	}

	public void setSpotType(String spotType) {
		this.spotType = spotType;
	}

	public String getSubtitle() {
		return this.subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getLogoType() {
		return this.logoType;
	}

	public void setLogoType(String logoType) {
		this.logoType = logoType;
	}

	public java.sql.Blob getLogoData() {
		return this.logoData;
	}

	public void setLogoData(java.sql.Blob logoData) {
		this.logoData = logoData;
	}

	public String getPackageInfo() {
		return this.packageInfo;
	}

	public void setPackageInfo(String packageInfo) {
		this.packageInfo = packageInfo;
	}

	public Integer getPackageNumber() {
		return this.packageNumber;
	}

	public void setPackageNumber(Integer packageNumber) {
		this.packageNumber = packageNumber;
	}

	public Date getPlanDate() {
		return this.planDate;
	}

	public void setPlanDate(Date planDate) {
		this.planDate = planDate;
	}

	public Timestamp getPlanBegin() {
		return this.planBegin;
	}

	public void setPlanBegin(Timestamp planBegin) {
		this.planBegin = planBegin;
	}

	public Timestamp getPlanEnd() {
		return this.planEnd;
	}

	public void setPlanEnd(Timestamp planEnd) {
		this.planEnd = planEnd;
	}

	public Timestamp getActBegin() {
		return this.actBegin;
	}

	public void setActBegin(Timestamp actBegin) {
		this.actBegin = actBegin;
	}

	public Timestamp getActEnd() {
		return this.actEnd;
	}

	public void setActEnd(Timestamp actEnd) {
		this.actEnd = actEnd;
	}

	public Double getPlanFee() {
		return this.planFee;
	}

	public void setPlanFee(Double planFee) {
		this.planFee = planFee;
	}

	public Double getActFee() {
		return this.actFee;
	}

	public void setActFee(Double actFee) {
		this.actFee = actFee;
	}

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Timestamp getVerifyTime() {
		return this.verifyTime;
	}

	public void setVerifyTime(Timestamp verifyTime) {
		this.verifyTime = verifyTime;
	}

	public String getVerifyMode() {
		return this.verifyMode;
	}

	public void setVerifyMode(String verifyMode) {
		this.verifyMode = verifyMode;
	}

	public Long getVerifyManager() {
		return this.verifyManager;
	}

	public void setVerifyManager(Long verifyManager) {
		this.verifyManager = verifyManager;
	}

	public String getVerifyStatus() {
		return this.verifyStatus;
	}

	public void setVerifyStatus(String verifyStatus) {
		this.verifyStatus = verifyStatus;
	}

	public String getVerifyInfo() {
		return this.verifyInfo;
	}

	public void setVerifyInfo(String verifyInfo) {
		this.verifyInfo = verifyInfo;
	}

	public Timestamp getHandleTime() {
		return this.handleTime;
	}

	public void setHandleTime(Timestamp handleTime) {
		this.handleTime = handleTime;
	}

	public String getHandleStatus() {
		return this.handleStatus;
	}

	public void setHandleStatus(String handleStatus) {
		this.handleStatus = handleStatus;
	}

	public String getHandleInfo() {
		return this.handleInfo;
	}

	public void setHandleInfo(String handleInfo) {
		this.handleInfo = handleInfo;
	}

}