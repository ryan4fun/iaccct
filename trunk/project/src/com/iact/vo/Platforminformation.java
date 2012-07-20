package com.iact.vo;

import java.sql.Timestamp;

/**
 * Platforminformation entity. @author MyEclipse Persistence Tools
 */
public class Platforminformation extends AbstractPlatforminformation implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Platforminformation() {
	}

	/** minimal constructor */
	public Platforminformation(Long id, Timestamp addTime, Integer bizType,
			String title) {
		super(id, addTime, bizType, title);
	}

	/** full constructor */
	public Platforminformation(Long id, Timestamp addTime, Integer bizType,
			String title, java.sql.Blob information) {
		super(id, addTime, bizType, title, information);
	}

}
