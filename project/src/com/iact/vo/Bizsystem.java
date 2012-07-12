package com.iact.vo;

/**
 * Bizsystem entity. @author MyEclipse Persistence Tools
 */
public class Bizsystem extends AbstractBizsystem implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bizsystem() {
	}

	/** minimal constructor */
	public Bizsystem(Long id, Long bizArea, Integer bizMode, String name) {
		super(id, bizArea, bizMode, name);
	}

	/** full constructor */
	public Bizsystem(Long id, Long bizArea, String bizCode, Integer bizMode,
			String name, String description) {
		super(id, bizArea, bizCode, bizMode, name, description);
	}

}
