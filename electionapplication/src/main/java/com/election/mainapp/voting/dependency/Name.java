package com.election.mainapp.voting.dependency;

public class Name {

	String firstName;
	String MiddleName;
	String thirdName;
	String LastName;
	
	
	public Name() {
		
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getMiddleName() {
		return MiddleName;
	}


	public void setMiddleName(String middleName) {
		MiddleName = middleName;
	}


	public String getThirdName() {
		return thirdName;
	}


	public void setThirdName(String thirdName) {
		this.thirdName = thirdName;
	}


	public String getLastName() {
		return LastName;
	}


	public void setLastName(String lastName) {
		LastName = lastName;
	}

}
