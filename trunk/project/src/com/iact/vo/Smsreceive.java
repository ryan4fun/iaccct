package com.iact.vo;

import java.sql.Timestamp;

/**
 * Smsreceive entity. @author MyEclipse Persistence Tools
 */
public class Smsreceive extends AbstractSmsreceive implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Smsreceive() {
	}

	/** minimal constructor */
	public Smsreceive(Long id, String phoneNumber, Timestamp receiveTime) {
		super(id, phoneNumber, receiveTime);
	}

	/** full constructor */
	public Smsreceive(Long id, String phoneNumber, Timestamp receiveTime,
			String message) {
		super(id, phoneNumber, receiveTime, message);
	}

}
