package com.election.mainapp.voting.data;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "T_USER")
public class UserData {

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	 private int id;

     private String userName;

     private String  Name;
     
     private String  firstName;
     
     private String  middleName;
     
     private String  lastName;

     private String  email;

     private String  mobile;

     private String  password;

     public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

 

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(String lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	public String getVoterFlag() {
		return voterFlag;
	}

	public void setVoterFlag(String voterFlag) {
		this.voterFlag = voterFlag;
	}

	private String  role;

     private String  status;

     private String  lastUpdate;
     
     private String  voterFlag;
	
	
	public UserData() {
		
	}
	
	@Override
    public String toString() {
        return "User [id=" + id + ", Name=" + Name + ", email=" + email
                + ", mobile=" + mobile + ", password=" + password + ", role="
                + role + ", status=" + status + ", lastUpdate=" + lastUpdate
                + "]";
    }

}
