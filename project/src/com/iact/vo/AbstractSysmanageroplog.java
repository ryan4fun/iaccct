package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractSysmanageroplog entity provides the base persistence definition of
 * the Sysmanageroplog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSysmanageroplog implements java.io.Serializable {

	// Fields

	private Long id;
	private Long sysManager;
	private Timestamp optime;
	private String opadress;
	private Integer optype;
	private String opcontext;
	private String opdata;

	// Constructors

	/** default constructor */
	public AbstractSysmanageroplog() {
	}

	/** minimal constructor */
	public AbstractSysmanageroplog(Long id, Long sysManager, Timestamp optime,
			Integer optype) {
		this.id = id;
		this.sysManager = sysManager;
		this.optime = optime;
		this.optype = optype;
	}

	/** full constructor */
	public AbstractSysmanageroplog(Long id, Long sysManager, Timestamp optime,
			String opadress, Integer optype, String opcontext, String opdata) {
		this.id = id;
		this.sysManager = sysManager;
		this.optime = optime;
		this.opadress = opadress;
		this.optype = optype;
		this.opcontext = opcontext;
		this.opdata = opdata;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getSysManager() {
		return this.sysManager;
	}

	public void setSysManager(Long sysManager) {
		this.sysManager = sysManager;
	}

	public Timestamp getOptime() {
		return this.optime;
	}

	public void setOptime(Timestamp optime) {
		this.optime = optime;
	}

	public String getOpadress() {
		return this.opadress;
	}

	public void setOpadress(String opadress) {
		this.opadress = opadress;
	}

	public Integer getOptype() {
		return this.optype;
	}

	public void setOptype(Integer optype) {
		this.optype = optype;
	}

	public String getOpcontext() {
		return this.opcontext;
	}

	public void setOpcontext(String opcontext) {
		this.opcontext = opcontext;
	}

	public String getOpdata() {
		return this.opdata;
	}

	public void setOpdata(String opdata) {
		this.opdata = opdata;
	}

}