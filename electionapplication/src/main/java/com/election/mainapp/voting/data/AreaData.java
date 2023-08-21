package com.election.mainapp.voting.data;

import java.io.Serializable;

import lombok.Data;

@Data
public class AreaData{
	
	
	int id;
	String name;
	String description;
	private GenericDateAndTimeData genericDateAndTimeData;

	public AreaData() {
		//GenericDateAndTimeData genericDateAndTimeData = new GenericDateAndTimeData();
		//genericDateAndTimeData.getId();
		genericDateAndTimeData = new GenericDateAndTimeData(); 
	}

}
