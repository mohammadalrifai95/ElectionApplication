/**
 * 
 */
package com.election.mainapp.voting.data;

import java.sql.Date;
import java.util.Set;
import java.util.HashSet;

import com.election.mainapp.voting.dependency.Address;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

@Entity
@Table(name = "T_CANDIDATE")
public class CandidateData {

	@Id 
	@GeneratedValue( strategy=GenerationType.AUTO )	
	private int id;
	private String ssn;
	private String name;
	private String firstName;
	private String lastName;
	private String email;
	private String AreaAppliedfor;
	private String DepartmentOfAppliedPosition;
	private Date date;
	private String title;
	private String resume;
	private String companyName;
	private String  role;

	private String status;
	private String position;
	private String  mobile;
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Set<VoterData> getVoterDataSet() {
		return voterDataSet;
	}

	public void setVoterDataSet(Set<VoterData> voterDataSet) {
		this.voterDataSet = voterDataSet;
	}

	String addressStr;
	String location;
	//Address address;
	
	@OneToMany(mappedBy = "candidateData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<VoterData> voterDataSet;
	
	public CandidateData() {
		
		voterDataSet = new HashSet<VoterData>();
		
	}
	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getSsn() {
		return ssn;
	}



	public void setSsn(String ssn) {
		this.ssn = ssn;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAreaAppliedfor() {
		return AreaAppliedfor;
	}



	public void setAreaAppliedfor(String areaAppliedfor) {
		AreaAppliedfor = areaAppliedfor;
	}



	public String getDepartmentOfAppliedPosition() {
		return DepartmentOfAppliedPosition;
	}



	public void setDepartmentOfAppliedPosition(String departmentOfAppliedPosition) {
		DepartmentOfAppliedPosition = departmentOfAppliedPosition;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getResume() {
		return resume;
	}



	public void setResume(String resume) {
		this.resume = resume;
	}



	public String getCompanyName() {
		return companyName;
	}



	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getPosition() {
		return position;
	}



	public void setPosition(String position) {
		this.position = position;
	}



	public String getAddressStr() {
		return addressStr;
	}



	public void setAddressStr(String addressStr) {
		this.addressStr = addressStr;
	}
	
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}


	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
//	public Address getAddress() {
//		return address;
//	}



//	public void setAddress(Address address) {
//		this.address = address;
//	}


}
