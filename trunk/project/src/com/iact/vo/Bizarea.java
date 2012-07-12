package com.iact.vo;

/**
 * Bizarea entity. @author MyEclipse Persistence Tools
 */
public class Bizarea extends AbstractBizarea implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bizarea() {
	}

	/** minimal constructor */
	public Bizarea(Long id, Long area, String sequenceId, String name,
			Integer bizStatus) {
		super(id, area, sequenceId, name, bizStatus);
	}

	/** full constructor */
	public Bizarea(Long id, Long area, Long parent, Integer level,
			String sequenceId, String bizCode, String name, String description,
			Integer bizStatus) {
		super(id, area, parent, level, sequenceId, bizCode, name, description,
				bizStatus);
	}

}
