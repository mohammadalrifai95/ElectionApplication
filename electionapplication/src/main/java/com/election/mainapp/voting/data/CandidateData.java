/**
 * 
 */
package com.election.mainapp.voting.data;

import java.sql.Date;

import com.election.mainapp.voting.dependency.Address;

public class CandidateData {

	String id;
	String ssn;
	String name;
	String email;
	String AreaAppliedfor;
	String DepartmentOfAppliedPosition;
	Date date;
	String title;
	String resume;
	String companyName;
	String status;
	String position;
	String addressStr;
	Address address;
	
	
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
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



	public Address getAddress() {
		return address;
	}



	public void setAddress(Address address) {
		this.address = address;
	}



	public CandidateData() {
		
	}

}