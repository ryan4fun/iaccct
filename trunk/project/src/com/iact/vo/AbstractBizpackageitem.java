package com.iact.vo;

/**
 * AbstractBizpackageitem entity provides the base persistence definition of the
 * Bizpackageitem entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBizpackageitem implements java.io.Serializable {

	// Fields

	private Long id;
	private Long bizPackage;
	private Long bizProgram;
	private String sequenceId;
	private String name;
	private String description;

	// Constructors

	/** default constructor */
	public AbstractBizpackageitem() {
	}

	/** minimal constructor */
	public AbstractBizpackageitem(Long id, Long bizPackage, Long bizProgram) {
		this.id = id;
		this.bizPackage = bizPackage;
		this.bizProgram = bizProgram;
	}

	/** full constructor */
	public AbstractBizpackageitem(Long id, Long bizPackage, Long bizProgram,
			String sequenceId, String name, String description) {
		this.id = id;
		this.bizPackage = bizPackage;
		this.bizProgram = bizProgram;
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

	public Long getBizPackage() {
		return this.bizPackage;
	}

	public void setBizPackage(Long bizPackage) {
		this.bizPackage = bizPackage;
	}

	public Long getBizProgram() {
		return this.bizProgram;
	}

	public void setBizProgram(Long bizProgram) {
		this.bizProgram = bizProgram;
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