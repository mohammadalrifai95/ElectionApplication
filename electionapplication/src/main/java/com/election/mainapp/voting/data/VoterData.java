package com.election.mainapp.voting.data;

import com.election.mainapp.voting.dependency.*;

public class VoterData {

	int id;
	int ssn;
	String idCard;
	String nameStr;
	Name Name;
	Address address; 
	String addressProof;
	String ageProof;
	
	
	
	
	public int getSsn() {
		return ssn;
	}
	public void setSsn(int ssn) {
		this.ssn = ssn;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getNameStr() {
		return nameStr;
	}
	public void setNameStr(String nameStr) {
		this.nameStr = nameStr;
	}
	public Name getName() {
		return Name;
	}
	public void setName(Name name) {
		Name = name;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getAddressProof() {
		return addressProof;
	}
	public void setAddressProof(String addressProof) {
		this.addressProof = addressProof;
	}
	public String getAgeProof() {
		return ageProof;
	}
	public void setAgeProof(String ageProof) {
		this.ageProof = ageProof;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public VoterData() {

	}

}
