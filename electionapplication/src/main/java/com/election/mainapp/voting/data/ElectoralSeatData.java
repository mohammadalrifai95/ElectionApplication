package com.election.mainapp.voting.data;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "T_ElectoralSeat")
public class ElectoralSeatData {


	public ElectoralSeatData() {
		// TODO Auto-generated constructor stub
	}

	
	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	private Integer id;
	
	private String Name;
	//number Of reserved Seat to each region  
	private Integer numberOfSeat;
	public String getNumberOfSeatStr() {
		return numberOfSeatStr;
	}

	public void setNumberOfSeatStr(String numberOfSeatStr) {
		this.numberOfSeatStr = numberOfSeatStr;
	}


	private String numberOfSeatStr;

	
	public Integer getNumberOfSeat() {
		return numberOfSeat;
	}

	public void setNumberOfSeat(Integer numberOfSeat) {
		this.numberOfSeat = numberOfSeat;
	}


	@ManyToOne(fetch = FetchType.LAZY)	   
	@JoinColumn(name = "region_id")
	private RegionData regionData;

	
	@ManyToOne(fetch = FetchType.LAZY)	   
	@JoinColumn(name = "constituency_id") 
	private ConstituencyData constituencyData;
	
	
	public ConstituencyData getConstituencyData() {
		return constituencyData;
	}

	public void setConstituencyData(ConstituencyData constituencyData) {
		this.constituencyData = constituencyData;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}
	

	public RegionData getRegionData() {
		return regionData;
	}

	public void setRegionData(RegionData regionData) {
		this.regionData = regionData;
	}
	
	
	
}
