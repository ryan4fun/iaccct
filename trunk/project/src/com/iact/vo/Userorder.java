package com.iact.vo;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Userorder entity. @author MyEclipse Persistence Tools
 */
public class Userorder extends AbstractUserorder implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Userorder() {
	}

	/** minimal constructor */
	public Userorder(Long id, Long user, Bizpackage bizPackage, String transactionId,
			String orderId, String orderType, String spotType, String subtitle,
			Integer packageNumber, Date planDate, Double planFee,
			String verifyStatus, String handleStatus) {
		super(id, user, bizPackage, transactionId, orderId, orderType,
				spotType, subtitle, packageNumber, planDate, planFee,
				verifyStatus, handleStatus);
	}

	/** full constructor */
	public Userorder(Long id, Long user, Bizpackage bizPackage, String transactionId,
			String orderId, String orderType, String spotType, String subtitle,
			String logoType, java.sql.Blob logoData, String packageInfo,
			Integer packageNumber, Date planDate, Timestamp planBegin,
			Timestamp planEnd, Timestamp actBegin, Timestamp actEnd,
			Double planFee, Double actFee, Timestamp createTime,
			Timestamp verifyTime, String verifyMode, Long verifyManager,
			String verifyStatus, String verifyInfo, Timestamp handleTime,
			String handleStatus, String handleInfo) {
		super(id, user, bizPackage, transactionId, orderId, orderType,
				spotType, subtitle, logoType, logoData, packageInfo,
				packageNumber, planDate, planBegin, planEnd, actBegin, actEnd,
				planFee, actFee, createTime, verifyTime, verifyMode,
				verifyManager, verifyStatus, verifyInfo, handleTime,
				handleStatus, handleInfo);
	}

}
