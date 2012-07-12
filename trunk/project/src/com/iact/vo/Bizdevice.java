package com.iact.vo;

/**
 * Bizdevice entity. @author MyEclipse Persistence Tools
 */
public class Bizdevice extends AbstractBizdevice implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bizdevice() {
	}

	/** minimal constructor */
	public Bizdevice(Long id, Long bizSystem, Integer bizMode, String name) {
		super(id, bizSystem, bizMode, name);
	}

	/** full constructor */
	public Bizdevice(Long id, Long bizSystem, String bizCode, Integer bizMode,
			String name, String description) {
		super(id, bizSystem, bizCode, bizMode, name, description);
	}

}
