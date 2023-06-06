package com.election.mainapp.voting.data;

import com.election.mainapp.voting.dependency.*;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "T_VOTER")
public class VoterData {

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	private int id;
	private int ssn;
	private String idCard;
	private String nameStr;
	//private Name Name;
	//private Address address; 
	private String addressProof;
	private String ageProof;
	
	@ManyToOne	   
	private CandidateData candidateData; 
	
	public VoterData() {
		
		candidateData = new CandidateData();
	}
	
	
	public CandidateData getCandidateData() {
		return candidateData;
	}


	public void setCandidateData(CandidateData candidateData) {
		this.candidateData = candidateData;
	}
	
	
	
	
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
//	public Name getName() {
//		return Name;
//	}
//	public void setName(Name name) {
//		Name = name;
//	}
//	public Address getAddress() {
//		return address;
//	}
//	public void setAddress(Address address) {
//		this.address = address;
//	}
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


}
