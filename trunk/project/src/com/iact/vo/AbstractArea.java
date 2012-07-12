package com.iact.vo;

/**
 * AbstractArea entity provides the base persistence definition of the Area
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractArea implements java.io.Serializable {

	// Fields

	private Long id;
	private Long parent;
	private Integer level;
	private String sequenceId;
	private String name;
	private String description;

	// Constructors

	/** default constructor */
	public AbstractArea() {
	}

	/** minimal constructor */
	public AbstractArea(Long id, Integer level, String sequenceId, String name) {
		this.id = id;
		this.level = level;
		this.sequenceId = sequenceId;
		this.name = name;
	}

	/** full constructor */
	public AbstractArea(Long id, Long parent, Integer level, String sequenceId,
			String name, String description) {
		this.id = id;
		this.parent = parent;
		this.level = level;
		this.sequenceId = sequenceId;
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