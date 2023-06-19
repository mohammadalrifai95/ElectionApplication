package com.election.mainapp.test;

public class Test3 {

	public Test3() {
		// TODO Auto-generated constructor stub
	}

	
	
	public static void main(String[] args) {
		
		
		StringBuffer  stringBuffer  = new StringBuffer("abcdefg");
		
		
		StringBuffer stringBufferreverse = stringBuffer.reverse();
		
		if(stringBuffer.equals(stringBufferreverse)) {
			System.out.println(true);
		}else {
			System.out.println(false);
		}
		
		
	}
}
