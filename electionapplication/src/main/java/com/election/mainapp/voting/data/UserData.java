package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.util.Set;
import java.util.HashSet;

import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "T_USER")
public class UserData implements Serializable{ 

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	 private Integer id;
	
	//GenericDateAndTimeData genericDateAndTimeData;

     private String userName;
     
     private String  password;
     
     private String  role;
     
     private String  status;

     private String  Name;
     
     private String  firstName;
     
     private String  middleName;
     
     private String  lastName;

     private String  email;

     private String  mobile;

     private String  lastUpdate;
     
     private String  voterFlag;
	
	
//     @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//     @JoinTable(name = "user_roles", joinColumns = @JoinColumn (name = "user_id"), inverseJoinColumns = @JoinColumn(name ="role_id"))
//     private Set<RoleData> roleDataSet = new HashSet<>(); 
     
 
     public Integer getId() {
		return id;
	}

//	public Set<RoleData> getRoleDataSet() {
//		return roleDataSet;
//	}
//
//	public void setRoleDataSet(Set<RoleData> roleDataSet) {
//		this.roleDataSet = roleDataSet;
//	}

	public void setId(Integer id) {
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
