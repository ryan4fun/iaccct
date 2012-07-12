package com.iact.vo;

/**
 * AbstractBizprogram entity provides the base persistence definition of the
 * Bizprogram entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBizprogram implements java.io.Serializable {

	// Fields

	private Long id;
	private Long bizArea;
	private Long bizSystem;
	private Long bizDevice;
	private String bizCode;
	private String sequenceId;
	private String name;
	private String description;
	private String bizStatus;

	// Constructors

	/** default constructor */
	public AbstractBizprogram() {
	}

	/** minimal constructor */
	public AbstractBizprogram(Long id, Long bizArea, String sequenceId,
			String name, String bizStatus) {
		this.id = id;
		this.bizArea = bizArea;
		this.sequenceId = sequenceId;
		this.name = name;
		this.bizStatus = bizStatus;
	}

	/** full constructor */
	public AbstractBizprogram(Long id, Long bizArea, Long bizSystem,
			Long bizDevice, String bizCode, String sequenceId, String name,
			String description, String bizStatus) {
		this.id = id;
		this.bizArea = bizArea;
		this.bizSystem = bizSystem;
		this.bizDevice = bizDevice;
		this.bizCode = bizCode;
		this.sequenceId = sequenceId;
		this.name = name;
		this.description = description;
		this.bizStatus = bizStatus;
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

	public Long getBizSystem() {
		return this.bizSystem;
	}

	public void setBizSystem(Long bizSystem) {
		this.bizSystem = bizSystem;
	}

	public Long getBizDevice() {
		return this.bizDevice;
	}

	public void setBizDevice(Long bizDevice) {
		this.bizDevice = bizDevice;
	}

	public String getBizCode() {
		return this.bizCode;
	}

	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
	}

	public String getSequenceId() {
		return this.sequenceId;
	}

	public void setSequenceId(String sequenceId) {
		this.sequenceId = sequenceId;
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

	public String getBizStatus() {
		return this.bizStatus;
	}

	public void setBizStatus(String bizStatus) {
		this.bizStatus = bizStatus;
	}

}