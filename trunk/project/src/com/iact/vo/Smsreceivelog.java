package com.iact.vo;

import java.sql.Timestamp;

/**
 * Smsreceivelog entity. @author MyEclipse Persistence Tools
 */
public class Smsreceivelog extends AbstractSmsreceivelog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Smsreceivelog() {
	}

	/** minimal constructor */
	public Smsreceivelog(Long id, String phoneNumber, Timestamp receiveTime) {
		super(id, phoneNumber, receiveTime);
	}

	/** full constructor */
	public Smsreceivelog(Long id, String phoneNumber, Timestamp receiveTime,
			String message, String bizCode, String bizContext,
			Timestamp handleTime, String handleStatus, String handleInfo) {
		super(id, phoneNumber, receiveTime, message, bizCode, bizContext,
				handleTime, handleStatus, handleInfo);
	}

}
