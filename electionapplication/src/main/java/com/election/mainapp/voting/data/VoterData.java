package com.election.mainapp.voting.data;


import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.Data;

@Data
@Entity
@Table(name = "T_VOTER")
public class VoterData implements Serializable{

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	private Integer id;
	private String fullName;
	private Integer ssn; 
	private String idCard;
	private String nameStr;
	//private Name Name;
	//private Address address; 
	private String addressProof;
	private String ageProof;
	private String email;
	private String  mobile;
	
    private String userName;
    private String  password;
	
	//userId
	//governorateId
	//constituencyId
	//regionId

	@OneToOne
    @JoinColumn(name="governorate_Id")
    private GovernorateData governorateData;
	
	@Transient
	private Integer governorateId;

	@OneToOne
	@JoinColumn(name="constituency_Id")
	private ConstituencyData constituencyData;
	@Transient
	private Integer constituencyId;
	
//	@OneToOne
//	@JoinColumn(name="region_Id")
//	private RegionData regionData;
	@Transient
	private Integer regionId;
	
//	//This created user_id in T_voter
//    @OneToOne
//    @JoinColumn(name="user_id")
//    private UserData userData;
	
	//This did not create user_id in T_voter
    //@OneToOne(mappedBy = "vData")
    @OneToOne(mappedBy = "vData", fetch = FetchType.LAZY, cascade = CascadeType.ALL) 
    private UserData uData;
	
//	@ManyToOne	   
//	@JoinColumn(name = "candidate_id") 
//	private CandidateData candidateData; 
	
	private GenericDateAndTimeData genericDateAndTimeData;
	
	public VoterData() {
		
//		candidateData = new CandidateData();
		genericDateAndTimeData = new GenericDateAndTimeData();
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


}
