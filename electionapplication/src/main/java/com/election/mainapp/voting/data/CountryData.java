package com.election.mainapp.voting.data;

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
public class CountryData implements GenericDateAndTimeDataI{

	
	public CountryData() {
		
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
	
	
	
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArabicName() {
		return arabicName;
	}
	public void setArabicName(String arabicName) {
		this.arabicName = arabicName;
	}
	
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public Set<GovernorateData> getGovernorateDataSet() {
		return governorateDataSet;
	}
	public void setGovernorateDataSet(Set<GovernorateData> governorateDataSet) {
		this.governorateDataSet = governorateDataSet;
	}
}
