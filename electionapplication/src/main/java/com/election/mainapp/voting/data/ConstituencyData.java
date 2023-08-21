package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "T_CONSTITUENCY")
@Data
public class ConstituencyData implements Serializable{

	
    
	public ConstituencyData() {
		
		genericDateAndTimeData = new GenericDateAndTimeData(); 
		//voterData = new VoterData();
	}

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	private Integer id;
	private String name;
	private String arabicName;

	private GenericDateAndTimeData genericDateAndTimeData;


//	@OneToOne(mappedBy = "constituencyData")
	@OneToOne(mappedBy = "constituencyData", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private VoterData voterData;
    
    
	
	
	@ManyToOne(fetch = FetchType.LAZY)	   
	@JoinColumn(name = "governorate_id")
	private GovernorateData governorateData; 
	
	
	
	
	
	
	@OneToMany(mappedBy = "constituencyData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<RegionData> regionDataSet;
	
	
	
	@OneToMany(mappedBy = "constituencyData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<ElectoralSeatData> electoralSeatDataSet;
	

	
	@OneToMany(mappedBy = "constituencyData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<CandidateData> candidateDataSet;
	
	
	
	
	
	public Set<CandidateData> getCandidateDataSet() {
		return candidateDataSet;
	}


	public void setCandidateDataSet(Set<CandidateData> candidateDataSet) {
		this.candidateDataSet = candidateDataSet;
	}


//	public Integer getId() {
//		return id;
//	}
//
//
//	public void setId(Integer id) {
//		this.id = id;
//	}

	public Set<ElectoralSeatData> getElectoralSeatDataSet() {
		return electoralSeatDataSet;
	}

	public void setElectoralSeatDataSet(Set<ElectoralSeatData> electoralSeatDataSet) {
		this.electoralSeatDataSet = electoralSeatDataSet;
	}




	public String getName() {
		return name;
	}






	public void setName(String name) {
		this.name = name;
	}






	public GovernorateData getGovernorateData() {
		return governorateData;
	}






	public void setGovernorateData(GovernorateData governorateData) {
		this.governorateData = governorateData;
	}






	public Set<RegionData> getRegionDataSet() {
		return regionDataSet;
	}


	public void setRegionDataSet(Set<RegionData> regionDataSet) {
		this.regionDataSet = regionDataSet;
	}


	
	
	
	public String getArabicName() {
		return arabicName;
	}


	public void setArabicName(String arabicName) {
		this.arabicName = arabicName;
	}
	
	
	
	
	
	
}
