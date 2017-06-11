package com.favs.bean;

/**
 * Supplier entity. @author MyEclipse Persistence Tools
 */

public class Supplier implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String susername;
	private String spassword;
	private String ssex;
	private Integer sage;
	private String sphone;
	private Integer srole;

	// Constructors

	/** default constructor */
	public Supplier() {
	}

	/** minimal constructor */
	public Supplier(String susername, String spassword, Integer srole) {
		this.susername = susername;
		this.spassword = spassword;
		this.srole = srole;
	}

	/** full constructor */
	public Supplier(String susername, String spassword, String ssex,
			Integer sage, String sphone, Integer srole) {
		this.susername = susername;
		this.spassword = spassword;
		this.ssex = ssex;
		this.sage = sage;
		this.sphone = sphone;
		this.srole = srole;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSusername() {
		return this.susername;
	}

	public void setSusername(String susername) {
		this.susername = susername;
	}

	public String getSpassword() {
		return this.spassword;
	}

	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}

	public String getSsex() {
		return this.ssex;
	}

	public void setSsex(String ssex) {
		this.ssex = ssex;
	}

	public Integer getSage() {
		return this.sage;
	}

	public void setSage(Integer sage) {
		this.sage = sage;
	}

	public String getSphone() {
		return this.sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public Integer getSrole() {
		return this.srole;
	}

	public void setSrole(Integer srole) {
		this.srole = srole;
	}

}