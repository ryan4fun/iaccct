package com.iact.vo;

import java.sql.Timestamp;

/**
 * AbstractUserresource entity provides the base persistence definition of the
 * Userresource entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUserresource implements java.io.Serializable {

	// Fields

	private Long id;
	private Long user;
	private String spotType;
	private String subtitle;
	private String logoType;
	private Integer logoX;
	private Integer logoY;
	private String logoData;
	private String description;
	private Timestamp addTime;
	private Timestamp verifyTime;
	private Long verifyManager;
	private String verifyStatus;
	private String verifyInfo;

	// Constructors

	/** default constructor */
	public AbstractUserresource() {
	}

	/** minimal constructor */
	public AbstractUserresource(Long id, Long user, String spotType,
			String subtitle, Timestamp addTime, String verifyStatus) {
		this.id = id;
		this.user = user;
		this.spotType = spotType;
		this.subtitle = subtitle;
		this.addTime = addTime;
		this.verifyStatus = verifyStatus;
	}

	/** full constructor */
	public AbstractUserresource(Long id, Long user, String spotType,
			String subtitle, String logoType, Integer logoX, Integer logoY,
			String logoData, String description, Timestamp addTime,
			Timestamp verifyTime, Long verifyManager, String verifyStatus,
			String verifyInfo) {
		this.id = id;
		this.user = user;
		this.spotType = spotType;
		this.subtitle = subtitle;
		this.logoType = logoType;
		this.logoX = logoX;
		this.logoY = logoY;
		this.logoData = logoData;
		this.description = description;
		this.addTime = addTime;
		this.verifyTime = verifyTime;
		this.verifyManager = verifyManager;
		this.verifyStatus = verifyStatus;
		this.verifyInfo = verifyInfo;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUser() {
		return this.user;
	}

	public void setUser(Long user) {
		this.user = user;
	}

	public String getSpotType() {
		return this.spotType;
	}

	public void setSpotType(String spotType) {
		this.spotType = spotType;
	}

	public String getSubtitle() {
		return this.subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getLogoType() {
		return this.logoType;
	}

	public void setLogoType(String logoType) {
		this.logoType = logoType;
	}

	public Integer getLogoX() {
		return this.logoX;
	}

	public void setLogoX(Integer logoX) {
		this.logoX = logoX;
	}

	public Integer getLogoY() {
		return this.logoY;
	}

	public void setLogoY(Integer logoY) {
		this.logoY = logoY;
	}

	public String getLogoData() {
		return this.logoData;
	}

	public void setLogoData(String logoData) {
		this.logoData = logoData;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public Timestamp getVerifyTime() {
		return this.verifyTime;
	}

	public void setVerifyTime(Timestamp verifyTime) {
		this.verifyTime = verifyTime;
	}

	public Long getVerifyManager() {
		return this.verifyManager;
	}

	public void setVerifyManager(Long verifyManager) {
		this.verifyManager = verifyManager;
	}

	public String getVerifyStatus() {
		return this.verifyStatus;
	}

	public void setVerifyStatus(String verifyStatus) {
		this.verifyStatus = verifyStatus;
	}

	public String getVerifyInfo() {
		return this.verifyInfo;
	}

	public void setVerifyInfo(String verifyInfo) {
		this.verifyInfo = verifyInfo;
	}

}