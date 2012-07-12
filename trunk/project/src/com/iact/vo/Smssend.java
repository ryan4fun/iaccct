package com.iact.vo;

import java.sql.Timestamp;

/**
 * Smssend entity. @author MyEclipse Persistence Tools
 */
public class Smssend extends AbstractSmssend implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Smssend() {
	}

	/** minimal constructor */
	public Smssend(Long id) {
		super(id);
	}

	/** full constructor */
	public Smssend(Long id, String phoneNumber, Timestamp addTime,
			String bizCode, String bizContext, String message) {
		super(id, phoneNumber, addTime, bizCode, bizContext, message);
	}

}
