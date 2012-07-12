package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractPlatforminformation entity provides the base persistence definition
 * of the Platforminformation entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPlatforminformation implements
		java.io.Serializable {

	// Fields

	private Long id;
	private Timestamp addTime;
	private Integer bizType;
	private String title;
	private String information;

	// Constructors

	/** default constructor */
	public AbstractPlatforminformation() {
	}

	/** minimal constructor */
	public AbstractPlatforminformation(Long id, Timestamp addTime,
			Integer bizType, String title) {
		this.id = id;
		this.addTime = addTime;
		this.bizType = bizType;
		this.title = title;
	}

	/** full constructor */
	public AbstractPlatforminformation(Long id, Timestamp addTime,
			Integer bizType, String title, String information) {
		this.id = id;
		this.addTime = addTime;
		this.bizType = bizType;
		this.title = title;
		this.information = information;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public Integer getBizType() {
		return this.bizType;
	}

	public void setBizType(Integer bizType) {
		this.bizType = bizType;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInformation() {
		return this.information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

}