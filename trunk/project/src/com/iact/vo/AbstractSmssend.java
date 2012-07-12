package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractSmssend entity provides the base persistence definition of the
 * Smssend entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSmssend implements java.io.Serializable {

	// Fields

	private Long id;
	private String phoneNumber;
	private Timestamp addTime;
	private String bizCode;
	private String bizContext;
	private String message;

	// Constructors

	/** default constructor */
	public AbstractSmssend() {
	}

	/** minimal constructor */
	public AbstractSmssend(Long id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSmssend(Long id, String phoneNumber, Timestamp addTime,
			String bizCode, String bizContext, String message) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.addTime = addTime;
		this.bizCode = bizCode;
		this.bizContext = bizContext;
		this.message = message;
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

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
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

}