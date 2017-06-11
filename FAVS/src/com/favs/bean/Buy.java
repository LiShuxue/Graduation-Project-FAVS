package com.favs.bean;

import java.util.Date;

/**
 * Buy entity. @author MyEclipse Persistence Tools
 */

public class Buy implements java.io.Serializable {

	// Fields

	private Integer bid;
	//private Integer cid;
	private String btitle;
	private String bcontent;
	private Date btime;
	
	//配置外键，级联查询
	private Consumer consumer;

	// Constructors

	/** default constructor */
	public Buy() {
	}

//	/** minimal constructor */
//	public Buy(Integer cid, String btitle, String bcontent) {
//		this.cid = cid;
//		this.btitle = btitle;
//		this.bcontent = bcontent;
//	}
//
//	/** full constructor */
//	public Buy(Integer cid, String btitle, String bcontent, Date btime) {
//		this.cid = cid;
//		this.btitle = btitle;
//		this.bcontent = bcontent;
//		this.btime = btime;
//	}

	// Property accessors

	public Integer getBid() {
		return this.bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

//	public Integer getCid() {
//		return this.cid;
//	}
//
//	public void setCid(Integer cid) {
//		this.cid = cid;
//	}

	public String getBtitle() {
		return this.btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return this.bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public Date getBtime() {
		return this.btime;
	}

	public void setBtime(Date btime) {
		this.btime = btime;
	}
	
	public Consumer getConsumer() {
		return consumer;
	}
	
	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}

}