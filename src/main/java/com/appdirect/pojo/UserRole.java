package com.appdirect.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UserRole")
public class UserRole {
	
	private Integer id;
	private Integer userId;
	private Integer roleId;

	public UserRole() {
	}

	public UserRole(Integer id, Integer userId, Integer roleId) {
		this.id = id;
		this.userId = userId;
		this.roleId = roleId;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	
	
	@Column
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	@Column
	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return "UserRole{" +
				"id=" + id +
				", userId=" + userId +
				", roleId=" + roleId +
				'}';
	}
}

