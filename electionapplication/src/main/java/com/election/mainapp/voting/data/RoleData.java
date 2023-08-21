package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.sql.Date;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
//@Entity
//@Table(name = "T_ROLE")
public class RoleData{

//	@Id
//	@GeneratedValue( strategy=GenerationType.AUTO)
	private Long id;
	private String name;
	private GenericDateAndTimeData genericDateAndTimeData;

	public RoleData() {
		
		genericDateAndTimeData = new GenericDateAndTimeData();
		
	}

	
}
