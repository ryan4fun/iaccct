package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractPayonlinelog entity provides the base persistence definition of the
 * Payonlinelog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPayonlinelog implements java.io.Serializable {

	// Fields

	private Long id;
	private Long user;
	private String orderId;
	private String productId;
	private String serialNumber;
	private String payMode;
	private Integer payAmount;
	private String payContext;
	private Timestamp addTime;
	private String ipadress;

	// Constructors

	/** default constructor */
	public AbstractPayonlinelog() {
	}

	/** minimal constructor */
	public AbstractPayonlinelog(Long id, Long user) {
		this.id = id;
		this.user = user;
	}

	/** full constructor */
	public AbstractPayonlinelog(Long id, Long user, String orderId,
			String productId, String serialNumber, String payMode,
			Integer payAmount, String payContext, Timestamp addTime,
			String ipadress) {
		this.id = id;
		this.user = user;
		this.orderId = orderId;
		this.productId = productId;
		this.serialNumber = serialNumber;
		this.payMode = payMode;
		this.payAmount = payAmount;
		this.payContext = payContext;
		this.addTime = addTime;
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

	public String getPayContext() {
		return this.payContext;
	}

	public void setPayContext(String payContext) {
		this.payContext = payContext;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public String getIpadress() {
		return this.ipadress;
	}

	public void setIpadress(String ipadress) {
		this.ipadress = ipadress;
	}

}