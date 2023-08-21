package com.election.mainapp.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.Arrays;
import java.util.Iterator;

import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import org.aspectj.weaver.ast.Test;

import com.election.mainapp.generic.StringUtility;

import java.util.Scanner;
import java.io.*;  


public class Amman_FirstElectoralDistrict_2020 implements TestI{

	public Amman_FirstElectoralDistrict_2020() {
		// TODO Auto-generated constructor stub
	}
	
			
			static String string =  " احمد عادل عبد الغرباوى\r\n"
			+ " احمد عادل محمد المصري\r\n"
			+ " احمد عاصم فهمي سوالمه\r\n"
			+ " احمد عاطف ابراهيم رشيد\r\n"
			+ " احمد عامر احمد الحسون\r\n"
			+ " احمد عامر خليل عبابنه"
			+ ""
			+ ""
			;
	
	
	static ArrayList<String> strList = new ArrayList<String>();
	static ArrayList<String> voterNames = new ArrayList<String>();
	
	
	@Override
	public String leg() {
		
		return "Fish does not have any leg";
		
	}
	
	@Override
	public String wings() {
		
		return "Fish does not have any wings";
		
	}
	
	public static void main(String[] args) {

		//readFromFile();
		//converStringToArrayList();
		
		
		/*String returnValue = "";
		while (!returnValue.equalsIgnoreCase("q")) { 
			returnValue=  enterNewName(); 
		}*/
		
		
		findDuplicateNames();
	}

	
	private static void readFromFile() {
		
		BufferedReader bufReader = null;
		try {
			//FileReader fileReader=new FileReader("D:\\Election\\Ammanresion.txt");
			//FileReader fileReader=new FileReader("Ammanresion.txt");  
			FileReader fileReader=new FileReader("2020_Amman_1_FirstElectoralDistrict.txt");  
//			FileReader fileReader=new FileReader("2020_Amman_ThirdElectoralDistrict.pdf");  
			bufReader = new BufferedReader(fileReader);
			
			ArrayList<String> listOfLines = new ArrayList<>(); 
			String line = bufReader.readLine();
			int i = 0;
			while (line != null) 
			{ 
				listOfLines.add(line); 
				line = bufReader.readLine(); 
//				System.out.println(line + "ine number = "+i++);
				voterNames.add(line);
			}
			bufReader.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(String s: voterNames ) {
			
			//System.out.println(s+ "  "+voterNames.indexOf(s) );
			if(StringUtility.isNoneEmpty(s)) {
				System.out.println(s.trim());				
			}
		}
	}
	
	
	private static void converStringToArrayList() {
		String[] strSplit = string.split("\n");
        //strList = new ArrayList<String>(Arrays.asList(strSplit));
		//Remove the space from both end in the array and then add the name to Arraylist
        for (int i = 0; i < strSplit.length; i++){
        	 if(!strSplit[i].trim().equals("") || strSplit[i]!=null){
        		 strSplit[i] = strSplit[i].trim();
        		 strList.add(strSplit[i]);
        	 }
        }
	
        for (String s : strList)
            System.out.println(s);
	}
	
	
	
//	public static void main(String[] args) {
//		
//		EmployeeTest e1 = new EmployeeTest();
//		e1.salary=2000;
//		EmployeeTest e2 = new EmployeeTest();
//		e2.salary=1000;
//		EmployeeTest e3 = new EmployeeTest();
//		e3.salary=3000;
//		EmployeeTest e4 = new EmployeeTest();
//		e4.salary=500;
//		EmployeeTest e5 = new EmployeeTest();
//		e5.salary=30;
//		EmployeeTest e6 = new EmployeeTest();
//		e6.salary=600000;
//		EmployeeTest e7 = new EmployeeTest();
//		e7.salary=7000;
//		EmployeeTest e8 = new EmployeeTest();
//		e8.salary=14000;
//		
//		
//		Map<Integer, EmployeeTest> tm= new TreeMap<>();
//		tm.put(1,e1);
//		tm.put(2, e2);
//		tm.put(5, e5);
//		tm.put(6, e6);
//		tm.put(7, e7);
//		tm.put(8, e8);
//		tm.put(3, e3);
//		tm.put(4, e4);
//		
//		
//		for (Integer i: tm.keySet()) 
//            System.out.println("key: " + i);
//		
//	     for (EmployeeTest e : tm.values()) 
//	            System.out.println("EmployeeTest: " + e);
//		
////		Test2 t0 = new Test2();
////		t0.name="T0";
////		Test2 t1 = new Test2();
////		t1.name="T1";
////		Test2 t2 = new Test2();
////		t2.name="T2";
////		
////		t0=t1;
////		t1=t2;
////		System.out.println(t1.equals(t2));
////		System.out.println(t0.name);
////		System.out.println(t1.name);
////		System.out.println(t2.name);
//		
//		
//		
//	}

	private static String extracted() {

		Scanner input = new Scanner(System.in);
		System.out.println("Enter your full name");
		String userName = input.nextLine();
		
		if(strList.contains(userName.trim())) {
			System.out.println(true);
		} else {
			System.out.println(false);
		}
		System.out.println();
		System.out.print("Serial Number = ");
		System.out.print(strList.indexOf(userName.trim())+1);
		System.out.println();

		return userName;
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
			FileReader fileReader=new FileReader("2020_Amman_1_FirstElectoralDistrict.txt");  
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
		}
		
		for(String s: voterNames ) {
			//System.out.println(s+ "  "+voterNames.indexOf(s) );
			if(StringUtility.isNoneEmpty(s)) {
				System.out.println(s.trim());				
			}
		}
		
	}
	
	
		public static void findDuplicateNames() {
			
	    String setLine;
		boolean hasDuplicate = false;
		List<String> lines_First = textToList();
		
		for(String line: lines_First) {
			howManyTimeSameNameExist(line, lines_First);
		}
		
	}


	public static List	textToList(){
			
		ArrayList<String> listOfLines = null ;
			
			BufferedReader bufReader = null;
			try {
				FileReader fileReader=new FileReader("2020_Amman_1_FirstElectoralDistrict.txt");  
				bufReader = new BufferedReader(fileReader);
				
				listOfLines = new ArrayList<>(); 
				String line = bufReader.readLine();
				while (line != null) 
				{ 
					listOfLines.add(line); 
					line = bufReader.readLine(); 
				}
				bufReader.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			for(String s: voterNames ) {
				//System.out.println(s+ "  "+voterNames.indexOf(s) );
				if(StringUtility.isNoneEmpty(s)) {
					System.out.println(s.trim());				
				}
			}
			return listOfLines;
		}
	
	
		
	

		private static void howManyTimeSameNameExist(String line, List<String> lines_First) {

			int i=0;
			for (String newline : lines_First) {
				if (line.equals(newline)) {
					System.out.println(line);
				}
			}

		}
		
}
