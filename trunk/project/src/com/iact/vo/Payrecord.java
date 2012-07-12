package com.iact.vo;

import java.sql.Timestamp;

/**
 * Payrecord entity. @author MyEclipse Persistence Tools
 */
public class Payrecord extends AbstractPayrecord implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Payrecord() {
	}

	/** minimal constructor */
	public Payrecord(Long id, Long user, Timestamp addTime) {
		super(id, user, addTime);
	}

	/** full constructor */
	public Payrecord(Long id, Long user, Timestamp addTime, String orderId,
			String productId, String serialNumber, String payMode,
			Integer payAmount, Integer addFee, String ipadress) {
		super(id, user, addTime, orderId, productId, serialNumber, payMode,
				payAmount, addFee, ipadress);
	}

}
