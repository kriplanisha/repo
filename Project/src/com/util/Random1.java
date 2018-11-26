package com.util;

import java.util.Random;


public class Random1 {

	
	public static String getSaltString() {
	
			int len=10;
	        String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	        String Small_chars = "abcdefghijklmnopqrstuvwxyz";
	        String numbers = "0123456789";
	        String symbols = "$@$!%*#?&";
	 
	 
	        String values = Capital_chars + Small_chars +
	                        numbers + symbols;
	 
	        Random rndm_method = new Random();
	 
	        char[] password = new char[len];
	 
	        for (int i = 0; i < len; i++)
	            password[i] = values.charAt(rndm_method.nextInt(values.length()));
	 
	        
	        
	        String sr=new String(password);
	        
	        return sr;
			
		}
	
	
}