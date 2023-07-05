package com.election.mainapp.test;

import java.util.Iterator;

public class HomeTest implements TestI {

	public HomeTest() {
		// TODO Auto-generated constructor stub
	}

	
	
	public static void main(String[] args) {
		
		//prime()  number 50 and 100
		
		boolean result ;
		for (int i = 50; i <= 100; i++) {
			
			result = isPrimNumber(i);
			
			System.out.println(" is "+i+ " prim number = " +result);
		}
		
	}



	private static boolean isPrimNumber(int num) {
		
		
		for (int i = 1; i <=num; i++) {
			if(num != i && i!=1) {
				if(num%i == 0) {
					return false;
				}
			}
		}
		
		return true;
		
		//50/50    1
		//50/51    
		//50/51
		//50/53
		//50/95
		//50/96
		//50/97
		//50/100
		
		
	}
}
