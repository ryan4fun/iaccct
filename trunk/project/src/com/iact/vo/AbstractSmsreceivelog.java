package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractSmsreceivelog entity provides the base persistence definition of the
 * Smsreceivelog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSmsreceivelog implements java.io.Serializable {

	// Fields

	private Long id;
	private String phoneNumber;
	private Timestamp receiveTime;
	private String message;
	private String bizCode;
	private String bizContext;
	private Timestamp handleTime;
	private String handleStatus;
	private String handleInfo;

	// Constructors

	/** default constructor */
	public AbstractSmsreceivelog() {
	}

	/** minimal constructor */
	public AbstractSmsreceivelog(Long id, String phoneNumber,
			Timestamp receiveTime) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.receiveTime = receiveTime;
	}

	/** full constructor */
	public AbstractSmsreceivelog(Long id, String phoneNumber,
			Timestamp receiveTime, String message, String bizCode,
			String bizContext, Timestamp handleTime, String handleStatus,
			String handleInfo) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.receiveTime = receiveTime;
		this.message = message;
		this.bizCode = bizCode;
		this.bizContext = bizContext;
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

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Timestamp getReceiveTime() {
		return this.receiveTime;
	}

	public void setReceiveTime(Timestamp receiveTime) {
		this.receiveTime = receiveTime;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getBizCode() {
		return this.bizCode;
	}

	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
	}

	public String getBizContext() {
		return this.bizContext;
	}

	public void setBizContext(String bizContext) {
		this.bizContext = bizContext;
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