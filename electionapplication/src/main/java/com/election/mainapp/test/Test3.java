package com.election.mainapp.test;

import java.util.*;  

public class Test3 implements TestI{

	public Test3() {
		// TODO Auto-generated constructor stub
	}

	
	
	public static void main(String[] args) {
		
		
		for (int i = 0; i < 3; i++) {
			String str[] = enterTwoNumbers();
			//UseStringBuffer();
			Idial(str[0], str[1]);
		}
		
		
		
	}


	
	private static String[] enterTwoNumbers() {
		
		String [] strArray = new String[2];  
		Scanner sc= new Scanner(System.in);
		System.out.println("Enter a string: ");
		String str= sc.nextLine();              //reads string
		System.out.println("Enter a string: ");
		String str2= sc.nextLine();              //reads string
		
		strArray[0]=str;
		strArray[1]=str2;
		
		return strArray;
	}
	

	private static void Idial(String str, String str2) {
		

		
        StringBuilder  str2AsStringBuilder = new StringBuilder(str2);

        str2AsStringBuilder = str2AsStringBuilder.reverse();
		
        String str2Reverse = str2AsStringBuilder.toString();

        
		 if(str.equals(str2Reverse)) {
			 System.out.println("");	 
		 }else {
			
		}
	        
		
	}



	private static void UseStringBuffer() {
		
		Scanner sc= new Scanner(System.in); //System.in is a standard input stream  
		System.out.print("Enter a string: ");  
		String str= sc.nextLine();              //reads string   
		System.out.print("You have entered: "+str);      
		System.out.println();        
		
		StringBuffer  stringBuffer  = new StringBuffer("abcdefg");
		
		StringBuffer stringBufferreverse = stringBuffer.reverse();
		
		if(stringBuffer.equals(stringBufferreverse)) {
			System.out.println(true);
		}else {
			System.out.println(false);
		}
	}
	
	
	
	
	
}
