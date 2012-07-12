package com.iact.vo;

/**
 * Sysmanager entity. @author MyEclipse Persistence Tools
 */
public class Sysmanager extends AbstractSysmanager implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Sysmanager() {
	}

	/** minimal constructor */
	public Sysmanager(Long id, String login, String pwd, Integer roleType,
			Integer status) {
		super(id, login, pwd, roleType, status);
	}

	/** full constructor */
	public Sysmanager(Long id, String login, String pwd, String name,
			String description, Integer roleType, String bizCode, Integer status) {
		super(id, login, pwd, name, description, roleType, bizCode, status);
	}

}
