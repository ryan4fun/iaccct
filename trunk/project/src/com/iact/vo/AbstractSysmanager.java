package com.iact.vo;

/**
 * AbstractSysmanager entity provides the base persistence definition of the
 * Sysmanager entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSysmanager implements java.io.Serializable {

	// Fields

	private Long id;
	private String login;
	private String pwd;
	private String name;
	private String description;
	private Integer roleType;
	private String bizCode;
	private Integer status;

	// Constructors

	/** default constructor */
	public AbstractSysmanager() {
	}

	/** minimal constructor */
	public AbstractSysmanager(Long id, String login, String pwd,
			Integer roleType, Integer status) {
		this.id = id;
		this.login = login;
		this.pwd = pwd;
		this.roleType = roleType;
		this.status = status;
	}

	/** full constructor */
	public AbstractSysmanager(Long id, String login, String pwd, String name,
			String description, Integer roleType, String bizCode, Integer status) {
		this.id = id;
		this.login = login;
		this.pwd = pwd;
		this.name = name;
		this.description = description;
		this.roleType = roleType;
		this.bizCode = bizCode;
		this.status = status;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public Integer getRoleType() {
		return this.roleType;
	}

	public void setRoleType(Integer roleType) {
		this.roleType = roleType;
	}

	public String getBizCode() {
		return this.bizCode;
	}

	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}