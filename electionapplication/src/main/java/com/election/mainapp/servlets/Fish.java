package com.election.mainapp.servlets;

public class Fish extends Animal {

	public Fish() {
		// TODO Auto-generated constructor stub
	}

	
	@Override
	public void legs() {
		System.out.println("Fish does not have any legs");
	}

	
	public static void main(String[] args) {
 
		
		Animal fish = new  Fish();
		
		fish.legs();
		
	}
}
