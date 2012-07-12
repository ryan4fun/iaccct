package com.iact.vo;

import java.sql.Timestamp;

/**
 * Payonlinelog entity. @author MyEclipse Persistence Tools
 */
public class Payonlinelog extends AbstractPayonlinelog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Payonlinelog() {
	}

	/** minimal constructor */
	public Payonlinelog(Long id, User user) {
		super(id, user);
	}

	/** full constructor */
	public Payonlinelog(Long id, User user, String orderId, String productId,
			String serialNumber, String payMode, Integer payAmount,
			String payContext, Timestamp addTime, String ipadress) {
		super(id, user, orderId, productId, serialNumber, payMode, payAmount,
				payContext, addTime, ipadress);
	}

}
