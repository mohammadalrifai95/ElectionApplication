/**
 * 
 */
package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.sql.Date;

import java.util.Set;
import java.util.HashSet;

import com.election.mainapp.voting.dependency.Address;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

@Data
@Entity
@Table(name = "T_CANDIDATE")
public class CandidateData implements Serializable{

	
	
	@Id 
	@GeneratedValue( strategy=GenerationType.AUTO )	
	private Integer id;
	private String ssn;
	//private String name;
	private String fullName;
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
    private String userName;
    private String  password;
	private GenericDateAndTimeData genericDateAndTimeData;
	
	private String position;
	private String  mobile;
	private String  gender;
	private String status;
	private String  year;
	private String  electoralListNumber;
	private String  electoralListName;
	
    @OneToOne(mappedBy = "candidateData")
    private UserData userData ;
	
	 
	
	 

	public ConstituencyData getConstituencyData() {
		return constituencyData;
	}

	public void setConstituencyData(ConstituencyData constituencyData) {
		this.constituencyData = constituencyData;
	}

	@ManyToOne(fetch = FetchType.LAZY)	   
	@JoinColumn(name = "constituency_id") 
	private ConstituencyData constituencyData;


	String addressStr;
	String location;
	//Address address;
	
//	@OneToMany(mappedBy = "candidateData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//	Set<VoterData> voterDataSet;
	
	public CandidateData() {
		
//		voterDataSet = new HashSet<VoterData>();
		genericDateAndTimeData = new GenericDateAndTimeData(); 
	}
	
	
//	public Set<VoterData> getVoterDataSet() {
//		return voterDataSet;
//	}
//
//	public void setVoterDataSet(Set<VoterData> voterDataSet) {
//		this.voterDataSet = voterDataSet;
//	}
 

  


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
 
//	public Address getAddress() {
//		return address;
//	}


//	public void setAddress(Address address) {
//		this.address = address;
//	}


}
