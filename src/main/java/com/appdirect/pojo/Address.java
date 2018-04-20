package com.appdirect.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Address")
public class Address {

	private Integer id;
	private String addLine1;
	private String addCity;
	private String addState;
	private String addPincode;
	private User user;

	public Address() {
	}


	public Address(String addLine1, String addCity, String addState, String addPincode) {
		this.addLine1 = addLine1;
		this.addCity = addCity;
		this.addState = addState;
		this.addPincode = addPincode;
	}

	public Address(Integer id, String addLine1, String addCity, String addState, String addPincode, User user) {
		this.id = id;
		this.addLine1 = addLine1;
		this.addCity = addCity;
		this.addState = addState;
		this.addPincode = addPincode;
		this.user = user;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAddLine1() {
		return addLine1;
	}

	public void setAddLine1(String addLine1) {
		this.addLine1 = addLine1;
	}

	public String getAddCity() {
		return addCity;
	}

	public void setAddCity(String addCity) {
		this.addCity = addCity;
	}

	public String getAddState() {
		return addState;
	}

	public void setAddState(String addState) {
		this.addState = addState;
	}

	public String getAddPincode() {
		return addPincode;
	}

	public void setAddPincode(String addPincode) {
		this.addPincode = addPincode;
	}


	@ManyToOne
	@JoinColumn(name = "add_userid", nullable = false)
//	@Transient
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	@Override
	public String toString() {
		return "Address{" +
				"id=" + id +
				", addLine1='" + addLine1 + '\'' +
				", addCity='" + addCity + '\'' +
				", addState='" + addState + '\'' +
				", addPincode='" + addPincode + '\'' +
				", user=" + user +
				'}';
	}
}
