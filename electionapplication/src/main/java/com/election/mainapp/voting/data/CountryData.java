package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.util.Set;

import com.election.mainapp.generic.interfaces.GenericDateAndTimeDataI;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "T_COUNTRY")
public class CountryData {//implements Serializable, GenericDateAndTimeDataI{

	
	public CountryData() {
		
		genericDateAndTimeData = new GenericDateAndTimeData();
	}
	
	@Id 
	@GeneratedValue( strategy=GenerationType.AUTO )	
	private Long id;
	private String name;
	private String arabicName;
	private String countryCode;
	private GenericDateAndTimeData genericDateAndTimeData; 
	
	@OneToMany(mappedBy = "countryData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<GovernorateData> governorateDataSet;
	 
	public Set<GovernorateData> getGovernorateDataSet() {
		return governorateDataSet;
	}
	public void setGovernorateDataSet(Set<GovernorateData> governorateDataSet) {
		this.governorateDataSet = governorateDataSet;
	}
}
