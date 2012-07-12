package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractSmssendlog entity provides the base persistence definition of the
 * Smssendlog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSmssendlog implements java.io.Serializable {

	// Fields

	private Long id;
	private String phoneNumber;
	private String addTime;
	private String bizCode;
	private String bizContext;
	private String message;
	private Timestamp sendTime;
	private String sendStatus;
	private String sendInfo;

	// Constructors

	/** default constructor */
	public AbstractSmssendlog() {
	}

	/** minimal constructor */
	public AbstractSmssendlog(Long id, String phoneNumber, String addTime) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.addTime = addTime;
	}

	/** full constructor */
	public AbstractSmssendlog(Long id, String phoneNumber, String addTime,
			String bizCode, String bizContext, String message,
			Timestamp sendTime, String sendStatus, String sendInfo) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.addTime = addTime;
		this.bizCode = bizCode;
		this.bizContext = bizContext;
		this.message = message;
		this.sendTime = sendTime;
		this.sendStatus = sendStatus;
		this.sendInfo = sendInfo;
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

	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
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

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Timestamp getSendTime() {
		return this.sendTime;
	}

	public void setSendTime(Timestamp sendTime) {
		this.sendTime = sendTime;
	}

	public String getSendStatus() {
		return this.sendStatus;
	}

	public void setSendStatus(String sendStatus) {
		this.sendStatus = sendStatus;
	}

	public String getSendInfo() {
		return this.sendInfo;
	}

	public void setSendInfo(String sendInfo) {
		this.sendInfo = sendInfo;
	}

}