package com.election.mainapp.voting.data;

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
import jakarta.persistence.Table;

@Entity
@Table(name = "T_REGION")
public class RegionData {

	public RegionData() {
		// TODO Auto-generated constructor stub
	}

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	private Integer id;
	
	@ManyToOne(fetch = FetchType.LAZY)		   
	@JoinColumn(name = "constituency_id")
	private ConstituencyData constituencyData; 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@OneToMany(mappedBy = "regionData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<ElectoralSeatData> electoralSeatDataSet;














	public Integer getId() {
		return id;
	}














	public void setId(Integer id) {
		this.id = id;
	}














	public ConstituencyData getConstituencyData() {
		return constituencyData;
	}














	public void setConstituencyData(ConstituencyData constituencyData) {
		this.constituencyData = constituencyData;
	}














	public Set<ElectoralSeatData> getElectoralSeatDataSet() {
		return electoralSeatDataSet;
	}














	public void setElectoralSeatDataSet(Set<ElectoralSeatData> electoralSeatDataSet) {
		this.electoralSeatDataSet = electoralSeatDataSet;
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
