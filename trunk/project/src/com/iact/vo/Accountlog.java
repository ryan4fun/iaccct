package com.iact.vo;

import java.sql.Timestamp;

/**
 * Accountlog entity. @author MyEclipse Persistence Tools
 */
public class Accountlog extends AbstractAccountlog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Accountlog() {
	}

	/** minimal constructor */
	public Accountlog(Long id, Long user, Double expendAmount,
			Double incomeAmount, Double balance) {
		super(id, user, expendAmount, incomeAmount, balance);
	}

	/** full constructor */
	public Accountlog(Long id, Long user, String orderId, Long transactionId,
			Timestamp addTime, String alterMode, String alterContext,
			Double expendAmount, Double incomeAmount, Double balance) {
		super(id, user, orderId, transactionId, addTime, alterMode,
				alterContext, expendAmount, incomeAmount, balance);
	}

}
