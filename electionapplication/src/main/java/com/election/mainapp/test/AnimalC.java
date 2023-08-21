package com.election.mainapp.test;

import lombok.Data;

@Data
public class AnimalC extends Object {

	public AnimalC() {
		// TODO Auto-generated constructor stub
	}

	
	protected String legs() {

		return "This animal has 4 legs";

	}
	
	
	@Override
	public String toString() {
		return "Animal";
	}
	
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
}
