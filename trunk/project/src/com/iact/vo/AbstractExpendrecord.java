package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractExpendrecord entity provides the base persistence definition of the
 * Expendrecord entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractExpendrecord implements java.io.Serializable {

	// Fields

	private Long id;
	private Long user;
	private String orderId;
	private Timestamp prepaidTime;
	private Double prepaidAmount;
	private Timestamp finalpaidTime;
	private Double finalpaidAmount;
	private String paidStatus;

	// Constructors

	/** default constructor */
	public AbstractExpendrecord() {
	}

	/** minimal constructor */
	public AbstractExpendrecord(Long id, Long user) {
		this.id = id;
		this.user = user;
	}

	/** full constructor */
	public AbstractExpendrecord(Long id, Long user, String orderId,
			Timestamp prepaidTime, Double prepaidAmount,
			Timestamp finalpaidTime, Double finalpaidAmount, String paidStatus) {
		this.id = id;
		this.user = user;
		this.orderId = orderId;
		this.prepaidTime = prepaidTime;
		this.prepaidAmount = prepaidAmount;
		this.finalpaidTime = finalpaidTime;
		this.finalpaidAmount = finalpaidAmount;
		this.paidStatus = paidStatus;
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

	public String getOrderId() {
		return this.orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Timestamp getPrepaidTime() {
		return this.prepaidTime;
	}

	public void setPrepaidTime(Timestamp prepaidTime) {
		this.prepaidTime = prepaidTime;
	}

	public Double getPrepaidAmount() {
		return this.prepaidAmount;
	}

	public void setPrepaidAmount(Double prepaidAmount) {
		this.prepaidAmount = prepaidAmount;
	}

	public Timestamp getFinalpaidTime() {
		return this.finalpaidTime;
	}

	public void setFinalpaidTime(Timestamp finalpaidTime) {
		this.finalpaidTime = finalpaidTime;
	}

	public Double getFinalpaidAmount() {
		return this.finalpaidAmount;
	}

	public void setFinalpaidAmount(Double finalpaidAmount) {
		this.finalpaidAmount = finalpaidAmount;
	}

	public String getPaidStatus() {
		return this.paidStatus;
	}

	public void setPaidStatus(String paidStatus) {
		this.paidStatus = paidStatus;
	}

}