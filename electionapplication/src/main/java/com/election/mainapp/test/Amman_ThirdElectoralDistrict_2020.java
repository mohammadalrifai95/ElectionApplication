package com.election.mainapp.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Scanner;

import com.election.mainapp.generic.StringUtility;

public class Amman_ThirdElectoralDistrict_2020 {

	public Amman_ThirdElectoralDistrict_2020() {
		// TODO Auto-generated constructor stub
	}

	static ArrayList<String> voterNames = new ArrayList<String>();
	
	public static void main(String[] args) {
		
		String returnValue = "";
		while (!returnValue.equalsIgnoreCase("q")) { 
			//returnValue=  extracted();
			returnValue=  enterNewName(); 
		}
	}

	private static String enterNewName() {
		
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your full name as it appears in you id");
		String userName = input.nextLine();
		
		checkIfEnteredNameAlreadyRegistedIn2020(userName);
		
		return userName;
	}
	
	private static void checkIfEnteredNameAlreadyRegistedIn2020(String enteredName) {
		
		ArrayList<String> ammanVoterNames2020List = new ArrayList<String>();
		
		BufferedReader bufReader = null;
		try {
			FileReader fileReader=new FileReader("2020_Amman_FirstElectoralDistrict.txt");  
//			FileReader fileReader=new FileReader("2020_Amman_ThirdElectoralDistrict.pdf");  
			bufReader = new BufferedReader(fileReader);
			
			ArrayList<String> listOfLines = new ArrayList<>(); 
			String line = bufReader.readLine();
			int i = 0;
			boolean isTheEnteredNameValied = false;
			while (line != null) 
			{ 
				listOfLines.add(line); 
				line = bufReader.readLine(); 
				
				if(line != null && line.trim().equals(enteredName.trim()))
				{
					System.out.println("Name is valid and registered in 2020, you can go ahead and register in this application ");
					isTheEnteredNameValied = true;
					break;
				}
			}
			
			if(!isTheEnteredNameValied) {
				System.out.println("The name you entered is not registered in 2020, please register your name before you register in this application");
			}
			
			bufReader.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		
		
		for(String s: voterNames ) {
			if(StringUtility.isNoneEmpty(s)) {
				System.out.println(s.trim());				
			}
		}
		
	}
	
}
