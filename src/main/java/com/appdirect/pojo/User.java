package com.appdirect.pojo;

import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "user")
public class User {

	private  Integer id;
	private String firstName;
	private String lastName;
	private String userName;
//	@Email
//	@Pattern(regexp="(^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$)",message="Invalid email id")
	private String emailAddress;
	//@Pattern(regexp="((?=.*\\d)(?=.*[a-z])(?=.*[#@$*]).{5,20})",message="Invalid Password")
	private  String userPassword;
	//@Length(max=11,message="Invalid number")
	private String userContact;
	private Date createdOn;
	private Integer roleId;
	private String defaultAddress;
	private Boolean active;
	private List<Address> addressList;
	private List<Role> roles;

	public User() {
	}


	public User(Integer id, String firstName, String lastName, String userName, String emailAddress, String userPassword, String userContact, Date createdOn, Integer roleId, String defaultAddress, Boolean active) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.emailAddress = emailAddress;
		this.userPassword = userPassword;
		this.userContact = userContact;
		this.createdOn = createdOn;
		this.roleId = roleId;
		this.defaultAddress = defaultAddress;
		this.active = active;
		
	}

//	public User(String firstName, String lastName, String userName, String emailAddress, String userPassword, String userContact, Date createdOn, Integer roleId, String defaultAddress, Boolean active) {
//		this.firstName = firstName;
//		this.lastName = lastName;
//		this.userName = userName;
//		this.emailAddress = emailAddress;
//		this.userPassword = userPassword;
//		this.userContact = userContact;
//		this.createdOn = createdOn;
//		this.roleId = roleId;
//		this.defaultAddress = defaultAddress;
//		this.active = active;
//	}

	public User(String firstName, String lastName, String userName, String emailAddress, String userPassword, String userContact, Date createdOn,Integer roleId,  String defaultAddress, Boolean active, List<Address> addressList, List<Role> roles) {

		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.emailAddress = emailAddress;
		this.userPassword = userPassword;
		this.userContact = userContact;
		this.createdOn = createdOn;
		this.roleId = roleId;
		this.defaultAddress = defaultAddress;
		this.active = active;
		this.addressList = addressList;
		this.roles = roles;
	}

	public User(User user) {
		this.id = user.getId();
		this.firstName = user.getFirstName();
		this.lastName = user.getLastName();
		this.userName = user.getUserName();
		this.emailAddress = user.getEmailAddress();
		this.userPassword = user.getUserPassword();
		this.userContact = user.getUserContact();
		this.createdOn = user.getCreatedOn();
		this.roleId = user.getRoleId();
		this.defaultAddress = user.getDefaultAddress();
		this.active = user.getActive();
		
		
	}

//	public User(Integer id,String firstName, String lastName, String userName, String emailAddress, String userPassword, String userContact, String defaultAddress) {
//		this.id=id;
//		this.firstName = firstName;
//		this.lastName = lastName;
//		this.userName = userName;
//		this.emailAddress = emailAddress;
//		this.userPassword = userPassword;
//		this.userContact = userContact;
//		this.defaultAddress = defaultAddress;
//	}

//	public User(String userName, String userPassword) {
//		this.userName = userName;
//		this.userPassword = userPassword;
//	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "firstName")
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@Column(name = "lastName")
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@Column(name = "userName")

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Column(name = "emailAddress")

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	@Column(name = "userPassword")

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	@Column(name = "userContact")

	public String getUserContact() {
		return userContact;
	}

	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}
	@Column(name = "createdOn")

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}
	@Column(name = "roleId")

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	@Column(name = "defaultAddress")

	public String getDefaultAddress() {
		return defaultAddress;
	}

	public void setDefaultAddress(String defaultAddress) {
		this.defaultAddress = defaultAddress;
	}

	@Column(name = "active")
	
	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	@Column
	@OneToMany(mappedBy = "user",fetch = FetchType.EAGER,cascade = CascadeType.PERSIST)
	@Transient
	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

	@ManyToMany
	@JoinTable(name = "UserRole",joinColumns = { @JoinColumn(name = "userId") },
			inverseJoinColumns = { @JoinColumn(name = "roleId") })
	@Transient
	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "User{" +
				"id=" + id +
				", firstName='" + firstName + '\'' +
				", lastName='" + lastName + '\'' +
				", userName='" + userName + '\'' +
				", emailAddress='" + emailAddress + '\'' +
				", userPassword='" + userPassword + '\'' +
				", userContact='" + userContact + '\'' +
				", createdOn=" + createdOn +
				", roleId=" + roleId +
				", defaultAddress='" + defaultAddress + '\'' +
				", active=" + active +
				", addressList=" + addressList +
				", roles=" + roles +
				'}';
	}
}
