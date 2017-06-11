package com.favs.bean;

import java.sql.Timestamp;
import java.util.List;

/**
 * Car entity. @author MyEclipse Persistence Tools
 */

public class Car implements java.io.Serializable {

	// Fields

	private Integer carid;
//	private Integer cid;
//	private Integer statuid;
	private String cusername;
	private String susername;
	private String cphone;
	private String carpost;
	private String caddress;
	private Double cartotal;
	private String carremark;
	private Timestamp cardate;
	private Consumer consumer;
	private Statu statu;
	private List<Item> itemList;

	// Constructors

	/** default constructor */
	public Car() {
	}
	
	public Car(List<Item> itemList) {
		this.itemList = itemList;
	}

	/** minimal constructor */
	public Car(Timestamp cardate) {
		this.cardate = cardate;
	}

	// Property accessors

	public Integer getCarid() {
		return this.carid;
	}

	public void setCarid(Integer carid) {
		this.carid = carid;
	}

	public String getCusername() {
		return this.cusername;
	}

	public void setCusername(String cusername) {
		this.cusername = cusername;
	}

	public String getCphone() {
		return this.cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public String getCarpost() {
		return this.carpost;
	}

	public void setCarpost(String carpost) {
		this.carpost = carpost;
	}

	public String getCaddress() {
		return this.caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public Double getCartotal() {
		return this.cartotal;
	}

	public void setCartotal(Double cartotal) {
		this.cartotal = cartotal;
	}

	public String getCarremark() {
		return this.carremark;
	}

	public void setCarremark(String carremark) {
		this.carremark = carremark;
	}

	public Timestamp getCardate() {
		return this.cardate;
	}

	public void setCardate(Timestamp cardate) {
		this.cardate = cardate;
	}
	public Consumer getConsumer() {
		return consumer;
	}

	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}

	public Statu getStatu() {
		return statu;
	}

	public void setStatu(Statu statu) {
		this.statu = statu;
	}

	public List<Item> getItemList() {
		return itemList;
	}

	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}
	
	public String getSusername() {
		return susername;
	}
	
	public void setSusername(String susername) {
		this.susername = susername;
	}

}