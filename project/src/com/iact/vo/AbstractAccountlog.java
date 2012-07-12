package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractAccountlog entity provides the base persistence definition of the
 * Accountlog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractAccountlog implements java.io.Serializable {

	// Fields

	private Long id;
	private Long user;
	private String orderId;
	private Long transactionId;
	private Timestamp addTime;
	private String alterMode;
	private String alterContext;
	private Double expendAmount;
	private Double incomeAmount;
	private Double balance;

	// Constructors

	/** default constructor */
	public AbstractAccountlog() {
	}

	/** minimal constructor */
	public AbstractAccountlog(Long id, Long user, Double expendAmount,
			Double incomeAmount, Double balance) {
		this.id = id;
		this.user = user;
		this.expendAmount = expendAmount;
		this.incomeAmount = incomeAmount;
		this.balance = balance;
	}

	/** full constructor */
	public AbstractAccountlog(Long id, Long user, String orderId,
			Long transactionId, Timestamp addTime, String alterMode,
			String alterContext, Double expendAmount, Double incomeAmount,
			Double balance) {
		this.id = id;
		this.user = user;
		this.orderId = orderId;
		this.transactionId = transactionId;
		this.addTime = addTime;
		this.alterMode = alterMode;
		this.alterContext = alterContext;
		this.expendAmount = expendAmount;
		this.incomeAmount = incomeAmount;
		this.balance = balance;
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

	public Long getTransactionId() {
		return this.transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public String getAlterMode() {
		return this.alterMode;
	}

	public void setAlterMode(String alterMode) {
		this.alterMode = alterMode;
	}

	public String getAlterContext() {
		return this.alterContext;
	}

	public void setAlterContext(String alterContext) {
		this.alterContext = alterContext;
	}

	public Double getExpendAmount() {
		return this.expendAmount;
	}

	public void setExpendAmount(Double expendAmount) {
		this.expendAmount = expendAmount;
	}

	public Double getIncomeAmount() {
		return this.incomeAmount;
	}

	public void setIncomeAmount(Double incomeAmount) {
		this.incomeAmount = incomeAmount;
	}

	public Double getBalance() {
		return this.balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

}