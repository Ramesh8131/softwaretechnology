package com.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.lang.NonNull;

@Entity
@Table(name = "users")
public class Users {
	
	@Id
	@GeneratedValue(
			strategy = GenerationType.IDENTITY, generator = "native"
			)
	@GenericGenerator(
			name = "native", 
			strategy = "native"
			)
	@Column(name ="Id", nullable = false, unique = true)
	
	private int id;
	
	@Column(name = "name", nullable = false)
	private String name;
	
	@Column(nullable=false)
	private String gender; 
	
	@NonNull
	private int phoneno;
	
	@NonNull
	private String email;
	
	@NotNull
	private String password;
	
	private String companyname;
	
	private String companyaddress;
	
	@NotNull
	private int userType; // 1 : admin, 2: user
	
	private int status; // [0: DEACTIVE 1: ACTIVE]
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public int getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(int phoneno) {
		this.phoneno = phoneno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	
	public String getCompanyaddress() {
		return companyaddress;
	}

	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
	}
	
	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int i) {
		this.status = i;
	}
}



