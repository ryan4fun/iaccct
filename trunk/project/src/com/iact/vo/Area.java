package com.iact.vo;

/**
 * Area entity. @author MyEclipse Persistence Tools
 */
public class Area extends AbstractArea implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Area() {
	}

	/** minimal constructor */
	public Area(Long id, Integer level, String sequenceId, String name) {
		super(id, level, sequenceId, name);
	}

	/** full constructor */
	public Area(Long id, Long parent, Integer level, String sequenceId,
			String name, String description) {
		super(id, parent, level, sequenceId, name, description);
	}

}
