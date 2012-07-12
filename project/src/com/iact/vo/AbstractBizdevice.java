package com.iact.vo;

/**
 * AbstractBizdevice entity provides the base persistence definition of the
 * Bizdevice entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBizdevice implements java.io.Serializable {

	// Fields

	private Long id;
	private Long bizSystem;
	private String bizCode;
	private Integer bizMode;
	private String name;
	private String description;

	// Constructors

	/** default constructor */
	public AbstractBizdevice() {
	}

	/** minimal constructor */
	public AbstractBizdevice(Long id, Long bizSystem, Integer bizMode,
			String name) {
		this.id = id;
		this.bizSystem = bizSystem;
		this.bizMode = bizMode;
		this.name = name;
	}

	/** full constructor */
	public AbstractBizdevice(Long id, Long bizSystem, String bizCode,
			Integer bizMode, String name, String description) {
		this.id = id;
		this.bizSystem = bizSystem;
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

	public Long getBizSystem() {
		return this.bizSystem;
	}

	public void setBizSystem(Long bizSystem) {
		this.bizSystem = bizSystem;
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