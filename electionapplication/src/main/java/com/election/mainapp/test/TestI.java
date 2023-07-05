package com.election.mainapp.test;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;


public interface TestI {
	
	default String leg() {
		
		return "This has four legs";
	}
	
	default String wings() {
		
		return "This has two wings"; 
	}

	default String tail() { 
		
		return "This has one tail";
	} 
	
//	public static long staticLeg() {
//		return 0;
//	}
//	public abstract long leg();
	
}
