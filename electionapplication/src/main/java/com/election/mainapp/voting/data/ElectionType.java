package com.election.mainapp.voting.data;


import java.io.Serializable;

import lombok.Data;

@Data
public class ElectionType{
	
	private GenericDateAndTimeData genericDateAndTimeData;
	
	public ElectionType() {

		genericDateAndTimeData = new GenericDateAndTimeData();
	}

	
}
