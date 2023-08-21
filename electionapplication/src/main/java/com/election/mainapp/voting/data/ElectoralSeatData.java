package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "T_ElectoralSeat")
public class ElectoralSeatData {//implements Serializable{


	public ElectoralSeatData() {

		genericDateAndTimeData = new GenericDateAndTimeData();
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
	private GenericDateAndTimeData genericDateAndTimeData;
	
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

	
	
}
