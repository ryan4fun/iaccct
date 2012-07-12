package com.iact.vo;

import java.sql.Timestamp;

/**
 * Expendrecord entity. @author MyEclipse Persistence Tools
 */
public class Expendrecord extends AbstractExpendrecord implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Expendrecord() {
	}

	/** minimal constructor */
	public Expendrecord(Long id, Long user) {
		super(id, user);
	}

	/** full constructor */
	public Expendrecord(Long id, Long user, String orderId,
			Timestamp prepaidTime, Double prepaidAmount,
			Timestamp finalpaidTime, Double finalpaidAmount, String paidStatus) {
		super(id, user, orderId, prepaidTime, prepaidAmount, finalpaidTime,
				finalpaidAmount, paidStatus);
	}

}
