package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractPayrecord entity provides the base persistence definition of the
 * Payrecord entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPayrecord implements java.io.Serializable {

	// Fields

	private Long id;
	private Long user;
	private Timestamp addTime;
	private String orderId;
	private String productId;
	private String serialNumber;
	private String payMode;
	private Integer payAmount;
	private Integer addFee;
	private String ipadress;

	// Constructors

	/** default constructor */
	public AbstractPayrecord() {
	}

	/** minimal constructor */
	public AbstractPayrecord(Long id, Long user, Timestamp addTime) {
		this.id = id;
		this.user = user;
		this.addTime = addTime;
	}

	/** full constructor */
	public AbstractPayrecord(Long id, Long user, Timestamp addTime,
			String orderId, String productId, String serialNumber,
			String payMode, Integer payAmount, Integer addFee, String ipadress) {
		this.id = id;
		this.user = user;
		this.addTime = addTime;
		this.orderId = orderId;
		this.productId = productId;
		this.serialNumber = serialNumber;
		this.payMode = payMode;
		this.payAmount = payAmount;
		this.addFee = addFee;
		this.ipadress = ipadress;
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

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public String getOrderId() {
		return this.orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getProductId() {
		return this.productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getSerialNumber() {
		return this.serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	public String getPayMode() {
		return this.payMode;
	}

	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}

	public Integer getPayAmount() {
		return this.payAmount;
	}

	public void setPayAmount(Integer payAmount) {
		this.payAmount = payAmount;
	}

	public Integer getAddFee() {
		return this.addFee;
	}

	public void setAddFee(Integer addFee) {
		this.addFee = addFee;
	}

	public String getIpadress() {
		return this.ipadress;
	}

	public void setIpadress(String ipadress) {
		this.ipadress = ipadress;
	}

}