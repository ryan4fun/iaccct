package com.iact.vo;

/**
 * AbstractSysroledefine entity provides the base persistence definition of the
 * Sysroledefine entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSysroledefine implements java.io.Serializable {

	// Fields

	private Long id;
	private Long sysManager;
	private Long bizSystem;
	private Integer roleType;

	// Constructors

	/** default constructor */
	public AbstractSysroledefine() {
	}

	/** full constructor */
	public AbstractSysroledefine(Long id, Long sysManager, Long bizSystem,
			Integer roleType) {
		this.id = id;
		this.sysManager = sysManager;
		this.bizSystem = bizSystem;
		this.roleType = roleType;
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

	public Long getBizSystem() {
		return this.bizSystem;
	}

	public void setBizSystem(Long bizSystem) {
		this.bizSystem = bizSystem;
	}

	public Integer getRoleType() {
		return this.roleType;
	}

	public void setRoleType(Integer roleType) {
		this.roleType = roleType;
	}

}