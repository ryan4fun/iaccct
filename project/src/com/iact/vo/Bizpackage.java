package com.iact.vo;

import java.util.Set;

/**
 * Bizpackage entity. @author MyEclipse Persistence Tools
 */
public class Bizpackage extends AbstractBizpackage implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bizpackage() {
	}

	/** minimal constructor */
	public Bizpackage(Long id, Long bizArea, String sequenceId, String name,
			String spotType, Integer subtitleSpec, Integer logoSpec,
			Integer playNumber, Double price, Integer status) {
		super(id, bizArea, sequenceId, name, spotType, subtitleSpec, logoSpec,
				playNumber, price, status);
	}

	/** full constructor */
	public Bizpackage(Long id, Long bizArea, String bizCode, String sequenceId,
			String name, String description, String beginTime, String endTime,
			String spotType, Integer subtitleSpec, String subtitleInfo,
			Integer logoSpec, String logoInfo, Integer playNumber,
			Double price, Integer status, Set items) {
		super(id, bizArea, bizCode, sequenceId, name, description, beginTime,
				endTime, spotType, subtitleSpec, subtitleInfo, logoSpec,
				logoInfo, playNumber, price, status, items);
	}

}
