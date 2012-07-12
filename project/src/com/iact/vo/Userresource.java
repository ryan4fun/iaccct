package com.iact.vo;

import java.sql.Timestamp;

/**
 * Userresource entity. @author MyEclipse Persistence Tools
 */
public class Userresource extends AbstractUserresource implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Userresource() {
	}

	/** minimal constructor */
	public Userresource(Long id, Long user, String spotType, String subtitle,
			Timestamp addTime, String verifyStatus) {
		super(id, user, spotType, subtitle, addTime, verifyStatus);
	}

	/** full constructor */
	public Userresource(Long id, Long user, String spotType, String subtitle,
			String logoType, Integer logoX, Integer logoY, String logoData,
			String description, Timestamp addTime, Timestamp verifyTime,
			Long verifyManager, String verifyStatus, String verifyInfo) {
		super(id, user, spotType, subtitle, logoType, logoX, logoY, logoData,
				description, addTime, verifyTime, verifyManager, verifyStatus,
				verifyInfo);
	}

}
