package com.iact.vo;

/**
 * AbstractBizsystem entity provides the base persistence definition of the
 * Bizsystem entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBizsystem implements java.io.Serializable {

	// Fields

	private Long id;
	private Long bizArea;
	private String bizCode;
	private Integer bizMode;
	private String name;
	private String description;

	// Constructors

	/** default constructor */
	public AbstractBizsystem() {
	}

	/** minimal constructor */
	public AbstractBizsystem(Long id, Long bizArea, Integer bizMode, String name) {
		this.id = id;
		this.bizArea = bizArea;
		this.bizMode = bizMode;
		this.name = name;
	}

	/** full constructor */
	public AbstractBizsystem(Long id, Long bizArea, String bizCode,
			Integer bizMode, String name, String description) {
		this.id = id;
		this.bizArea = bizArea;
		this.bizCode = bizCode;
		this.bizMode = bizMode;
		this.name = name;
		this.description = description;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getBizArea() {
		return this.bizArea;
	}

	public void setBizArea(Long bizArea) {
		this.bizArea = bizArea;
	}

	public String getBizCode() {
		return this.bizCode;
	}

	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
	}

	public Integer getBizMode() {
		return this.bizMode;
	}

	public void setBizMode(Integer bizMode) {
		this.bizMode = bizMode;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}