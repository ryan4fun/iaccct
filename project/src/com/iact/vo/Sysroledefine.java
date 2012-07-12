package com.iact.vo;

/**
 * Sysroledefine entity. @author MyEclipse Persistence Tools
 */
public class Sysroledefine extends AbstractSysroledefine implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Sysroledefine() {
	}

	/** full constructor */
	public Sysroledefine(Long id, Long sysManager, Long bizSystem,
			Integer roleType) {
		super(id, sysManager, bizSystem, roleType);
	}

}
