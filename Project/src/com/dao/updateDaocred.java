package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class updateDaocred 
{
	public boolean setpass(int cust_id,String password)
	  {
		boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("update login_g2 set password=? WHERE CUST_ID=?");             
                   ps.setString(1,password);
                   ps.setInt(2,cust_id);
			       ResultSet rs= ps.executeQuery(); 
			       
			       while(rs.next())
			       {
			    	   result=true;
			    	   
			       }
			      
			    }catch (Exception e2) {System.out.println(e2);}  
		   System.out.println(result);
		   return result;
	  }
	
	public boolean checkCustomerIdPresentDao(int cust_id)
	{
		boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select * from ABC_CUSTOMER_G2 where cust_id=? and cust_status='active'");             
                   ps.setInt(1,cust_id);
			      ResultSet rs= ps.executeQuery(); 
			       
			       if(rs.next())
			       {
			    	   result=true;
			       } 
			    }catch (Exception e2) {System.out.println(e2);}  
		   System.out.println(result);   
		   return result;
	}
	public boolean checkcusaccDao(int cust_ssnid,String cust_name,int age,String cust_city)
	  {
		boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select * from ABC_CUSTOMER_G2 where cust_ssnid=? AND cust_name=? AND cust_age=? AND cust_city=?  ");             
                 ps.setInt(1,cust_ssnid);
                 ps.setString(2,cust_name);
                 ps.setInt(3,age);
                 ps.setString(4,cust_city);
			       ResultSet rs= ps.executeQuery(); 
			       
			       System.out.println();
			       while(rs.next())
			       {
			    	   result=true;
			    	   
			       }
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          System.out.println(result);
		   return result;
	}
	
	
}
