package com.iact.vo;

/**
 * Bizpackageitem entity. @author MyEclipse Persistence Tools
 */
public class Bizpackageitem extends AbstractBizpackageitem implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bizpackageitem() {
	}

	/** minimal constructor */
	public Bizpackageitem(Long id, Long bizPackage, Long bizProgram) {
		super(id, bizPackage, bizProgram);
	}

	/** full constructor */
	public Bizpackageitem(Long id, Long bizPackage, Long bizProgram,
			String sequenceId, String name, String description) {
		super(id, bizPackage, bizProgram, sequenceId, name, description);
	}

}
