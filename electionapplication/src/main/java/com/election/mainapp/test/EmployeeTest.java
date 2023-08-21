package com.election.mainapp.test;

import lombok.Data;

@Data
public class EmployeeTest implements Comparable<EmployeeTest>{

	double salary;
	
	
	public EmployeeTest() {
		// TODO Auto-generated constructor stub
	}


	@Override
	public int compareTo(EmployeeTest o) {
		
		if(this.salary>o.salary) {
			return 1;
		}else if(this.salary==o.salary) {
			return 0;
		}else if(this.salary<o.salary) {
			return -1;
		}
		 
		
		return 1;
	}

}
