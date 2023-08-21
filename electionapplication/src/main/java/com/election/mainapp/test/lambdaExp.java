package com.election.mainapp.test;

import java.util.ArrayList;
import java.util.*;

public class lambdaExp {

	public lambdaExp() {
		// TODO Auto-generated constructor stub
	}

	
	
	public static void main(String[] args) {
		
		List digits = new ArrayList<>();
		digits.add(6);
		digits.add(7);
		digits.add(8);
		digits.add(9);
		digits.add(4);
		digits.add(10);
		digits.add(3);
		digits.add(2);
		digits.add(1);
		digits.add(5);
		
		
		//98764 123510
		//first 5 in desengin order
		//last 5 in assending order
//		);
//		digits.forEach(a ->);
		
		//Collections.sort(digits, Comparator.comparingInt(p -> p));

		Collections.sort(digits);
//		digits.forEach(a -> Collections.sort(a));
		
		System.out.println(digits);
		
		
		
		
	}
	
	
	
}
