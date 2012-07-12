package com.iact.vo;

/**
 * Bizprogram entity. @author MyEclipse Persistence Tools
 */
public class Bizprogram extends AbstractBizprogram implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bizprogram() {
	}

	/** minimal constructor */
	public Bizprogram(Long id, Long bizArea, String sequenceId, String name,
			String bizStatus) {
		super(id, bizArea, sequenceId, name, bizStatus);
	}

	/** full constructor */
	public Bizprogram(Long id, Long bizArea, Long bizSystem, Long bizDevice,
			String bizCode, String sequenceId, String name, String description,
			String bizStatus) {
		super(id, bizArea, bizSystem, bizDevice, bizCode, sequenceId, name,
				description, bizStatus);
	}

}
