package com.iact.vo;

/**
 * AbstractBizarea entity provides the base persistence definition of the
 * Bizarea entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBizarea implements java.io.Serializable {

	// Fields

	private Long id;
	private Long area;
	private Long parent;
	private Integer level;
	private String sequenceId;
	private String bizCode;
	private String name;
	private String description;
	private Integer bizStatus;

	// Constructors

	/** default constructor */
	public AbstractBizarea() {
	}

	/** minimal constructor */
	public AbstractBizarea(Long id, Long area, String sequenceId, String name,
			Integer bizStatus) {
		this.id = id;
		this.area = area;
		this.sequenceId = sequenceId;
		this.name = name;
		this.bizStatus = bizStatus;
	}

	/** full constructor */
	public AbstractBizarea(Long id, Long area, Long parent, Integer level,
			String sequenceId, String bizCode, String name, String description,
			Integer bizStatus) {
		this.id = id;
		this.area = area;
		this.parent = parent;
		this.level = level;
		this.sequenceId = sequenceId;
		this.bizCode = bizCode;
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

	public Long getArea() {
		return this.area;
	}

	public void setArea(Long area) {
		this.area = area;
	}

	public Long getParent() {
		return this.parent;
	}

	public void setParent(Long parent) {
		this.parent = parent;
	}

	public Integer getLevel() {
		return this.level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getSequenceId() {
		return this.sequenceId;
	}

	public void setSequenceId(String sequenceId) {
		this.sequenceId = sequenceId;
	}

	public String getBizCode() {
		return this.bizCode;
	}

	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
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

	public Integer getBizStatus() {
		return this.bizStatus;
	}

	public void setBizStatus(Integer bizStatus) {
		this.bizStatus = bizStatus;
	}

}