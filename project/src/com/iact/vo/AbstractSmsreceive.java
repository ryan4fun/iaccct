package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractSmsreceive entity provides the base persistence definition of the
 * Smsreceive entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSmsreceive implements java.io.Serializable {

	// Fields

	private Long id;
	private String phoneNumber;
	private Timestamp receiveTime;
	private String message;

	// Constructors

	/** default constructor */
	public AbstractSmsreceive() {
	}

	/** minimal constructor */
	public AbstractSmsreceive(Long id, String phoneNumber, Timestamp receiveTime) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.receiveTime = receiveTime;
	}

	/** full constructor */
	public AbstractSmsreceive(Long id, String phoneNumber,
			Timestamp receiveTime, String message) {
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.receiveTime = receiveTime;
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

}