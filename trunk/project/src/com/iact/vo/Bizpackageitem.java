package com.iact.vo;


/**
 * Bizpackageitem entity. @author MyEclipse Persistence Tools
 */
public class Bizpackageitem extends AbstractBizpackageitem implements
		java.io.Serializable, Comparable<Bizpackageitem> {

	// Constructors

	/** default constructor */
	public Bizpackageitem() {
	}

	/** minimal constructor */
	public Bizpackageitem(Long id, Bizpackage bizPackage, Bizprogram bizProgram) {

		super(id, bizPackage, bizProgram);
	}

	/** full constructor */
	public Bizpackageitem(Long id, Bizpackage bizPackage,
			Bizprogram bizProgram, String sequenceId, String name,
			String description) {
		super(id, bizPackage, bizProgram, sequenceId, name, description);
	}

	public int compareTo(Bizpackageitem o) {
		
		return getSequenceId().compareTo(o.getSequenceId());
	}

}
