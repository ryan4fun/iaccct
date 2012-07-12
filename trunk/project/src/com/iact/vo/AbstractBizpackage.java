package com.iact.vo;

/**
 * AbstractBizpackage entity provides the base persistence definition of the
 * Bizpackage entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBizpackage implements java.io.Serializable {

	// Fields

	private Long id;
	private Long bizArea;
	private String bizCode;
	private String sequenceId;
	private String name;
	private String description;
	private String beginTime;
	private String endTime;
	private String spotType;
	private Integer subtitleSpec;
	private String subtitleInfo;
	private Integer logoSpec;
	private String logoInfo;
	private Integer playNumber;
	private Double price;
	private Integer status;

	// Constructors

	/** default constructor */
	public AbstractBizpackage() {
	}

	/** minimal constructor */
	public AbstractBizpackage(Long id, Long bizArea, String sequenceId,
			String name, String spotType, Integer subtitleSpec,
			Integer logoSpec, Integer playNumber, Double price, Integer status) {
		this.id = id;
		this.bizArea = bizArea;
		this.sequenceId = sequenceId;
		this.name = name;
		this.spotType = spotType;
		this.subtitleSpec = subtitleSpec;
		this.logoSpec = logoSpec;
		this.playNumber = playNumber;
		this.price = price;
		this.status = status;
	}

	/** full constructor */
	public AbstractBizpackage(Long id, Long bizArea, String bizCode,
			String sequenceId, String name, String description,
			String beginTime, String endTime, String spotType,
			Integer subtitleSpec, String subtitleInfo, Integer logoSpec,
			String logoInfo, Integer playNumber, Double price, Integer status) {
		this.id = id;
		this.bizArea = bizArea;
		this.bizCode = bizCode;
		this.sequenceId = sequenceId;
		this.name = name;
		this.description = description;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.spotType = spotType;
		this.subtitleSpec = subtitleSpec;
		this.subtitleInfo = subtitleInfo;
		this.logoSpec = logoSpec;
		this.logoInfo = logoInfo;
		this.playNumber = playNumber;
		this.price = price;
		this.status = status;
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

	public String getBeginTime() {
		return this.beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return this.endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getSpotType() {
		return this.spotType;
	}

	public void setSpotType(String spotType) {
		this.spotType = spotType;
	}

	public Integer getSubtitleSpec() {
		return this.subtitleSpec;
	}

	public void setSubtitleSpec(Integer subtitleSpec) {
		this.subtitleSpec = subtitleSpec;
	}

	public String getSubtitleInfo() {
		return this.subtitleInfo;
	}

	public void setSubtitleInfo(String subtitleInfo) {
		this.subtitleInfo = subtitleInfo;
	}

	public Integer getLogoSpec() {
		return this.logoSpec;
	}

	public void setLogoSpec(Integer logoSpec) {
		this.logoSpec = logoSpec;
	}

	public String getLogoInfo() {
		return this.logoInfo;
	}

	public void setLogoInfo(String logoInfo) {
		this.logoInfo = logoInfo;
	}

	public Integer getPlayNumber() {
		return this.playNumber;
	}

	public void setPlayNumber(Integer playNumber) {
		this.playNumber = playNumber;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}