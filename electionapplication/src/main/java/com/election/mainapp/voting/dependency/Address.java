package com.election.mainapp.voting.dependency;

public class Address {

	String name;
	String addressStr;
	String country;
	String state;
	String city;
	String county;
	//Al-Kourah Department is one of the nine departments that make up Irbid Governorate, in Jordan.
	//String subdistrict;
	String department;
	String village;
	
	
	
	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getDepartment() {
		return department;
	}



	public void setDepartment(String department) {
		this.department = department;
	}



	public Address() {

	}

}
