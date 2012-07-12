package com.iact.vo;

import java.sql.Timestamp;

/**
 * Smssendlog entity. @author MyEclipse Persistence Tools
 */
public class Smssendlog extends AbstractSmssendlog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Smssendlog() {
	}

	/** minimal constructor */
	public Smssendlog(Long id, String phoneNumber, String addTime) {
		super(id, phoneNumber, addTime);
	}

	/** full constructor */
	public Smssendlog(Long id, String phoneNumber, String addTime,
			String bizCode, String bizContext, String message,
			Timestamp sendTime, String sendStatus, String sendInfo) {
		super(id, phoneNumber, addTime, bizCode, bizContext, message, sendTime,
				sendStatus, sendInfo);
	}

}
