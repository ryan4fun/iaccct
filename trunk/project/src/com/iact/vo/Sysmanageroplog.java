package com.iact.vo;

import java.sql.Timestamp;

/**
 * Sysmanageroplog entity. @author MyEclipse Persistence Tools
 */
public class Sysmanageroplog extends AbstractSysmanageroplog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Sysmanageroplog() {
	}

	/** minimal constructor */
	public Sysmanageroplog(Long id, Long sysManager, Timestamp optime,
			Integer optype) {
		super(id, sysManager, optime, optype);
	}

	/** full constructor */
	public Sysmanageroplog(Long id, Long sysManager, Timestamp optime,
			String opadress, Integer optype, String opcontext, String opdata) {
		super(id, sysManager, optime, opadress, optype, opcontext, opdata);
	}

}
