package com.election.mainapp.voting.data;

public class AreaData {
	
	
	int id;
	String name;
	String description;
	

	public AreaData() {
		
		//GenericDateAndTimeData genericDateAndTimeData = new GenericDateAndTimeData();
		//genericDateAndTimeData.getId();
		
		
	}


	public int getId() {
		return id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

}
