package com.dao;
import com.service.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao 
{
	
	public boolean checkcusaccDao(int acc_id)
	  {
		boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps1=con.prepareStatement("select cust_id,status from ABC_ACCOUNT_G2 where account_id=? ");             
                   ps1.setInt(1,acc_id);
			       ResultSet rs1= ps1.executeQuery(); 
			       
			       while(rs1.next())
			       {
			    	   if(rs1.getString(2).equals("active"))
			    	   {
			    		 PreparedStatement ps2=con.prepareStatement("select cust_status from ABC_CUSTOMER_G2 where cust_id=? ");             
		                 ps2.setInt(1,rs1.getInt(1));
					     ResultSet rs2= ps2.executeQuery(); 
					     
					        while(rs2.next())
					        {
					          if(rs2.getString(1).equals("active"))
					         {
					    	 result=true;
					         }
					       }  
			    	   }
			       }
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		   return result;
	}
	
	
	
	public boolean checkCustomerIdPresentDao(int cust_id)
	{
		boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select * from ABC_CUSTOMER_G2 where cust_id=? ");             
                   ps.setInt(1,cust_id);
			      ResultSet rs= ps.executeQuery(); 
			       
			       if(rs.next())
			       {
			    	   System.out.println(rs.getString(9));
			    	   if(rs.getString(9).equalsIgnoreCase("active"))
			    	    result=true;
			      
			       } 
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		   return result;
	}
	
	
	public ResultSet customerDetailsDao(int cust_id)
	{
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select account_id from ABC_ACCOUNT_G2 where cust_id=?  ");              
		           ps.setInt(1,cust_id);
			       ResultSet rs=ps.executeQuery(); 
			         return rs;
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		   return null;
	}
	
	
	public ResultSet viewDao(int acc_id,int no_of_trans)
	{
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select * from OPERATION_G2 where (s_acc_id=? or d_acc_id=? ) order by trans_date desc");             

			       ps.setInt(1,acc_id);
			       ps.setInt(2,acc_id);
			      
			       ResultSet rs=ps.executeQuery(); 
			       return rs;
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		   return null;
	}
	

	
	public boolean isActiveDaoDep(int s_cust_id,int s_acc_id)
	{
		 boolean result1=false;
		 boolean result2=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select cust_status from ABC_CUSTOMER_G2 where cust_id=? "); 
			       ps.setInt(1,s_cust_id);  
			       ResultSet rs1=ps.executeQuery(); 
			       
			       while(rs1.next())
			       {
			    	   if(rs1.getString(1).equals("active"))
			    		   result1=true;
			    	   
			       }
			       
			       
			       PreparedStatement ps2=con.prepareStatement("select status from ABC_ACCOUNT_G2 where account_id=? "); 
			       ps2.setInt(1,s_acc_id);  
			       ResultSet rs2=ps2.executeQuery();  
			      
			       while(rs2.next())
			       {
			    	   if(rs2.getString(1).equals("active"))
			    		   result2=true;
			    	   
			       }
			       
			       
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		if(result1==true && result2==true)
			return true;
		
		return false;
		
	}
	
	
	public boolean depositDao(int s_cust_id,int s_acc_id,String s_acc_type,int amount)
	{
		 boolean result1=false;
		 boolean result2=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select balance from ABC_ACCOUNT_G2 where account_id=?"); 
			       ps.setInt(1,s_acc_id);  
			       ResultSet rs=ps.executeQuery(); 
			       
			       while(rs.next())
			       {
			        	 int balance=rs.getInt(1);
			    	  
			    		 PreparedStatement ps1=con.prepareStatement("update ABC_ACCOUNT_G2 set balance=? where account_id=?"); 
					     ps1.setInt(1,balance+amount);
					     ps1.setInt(2,s_acc_id);
					     ps1.executeUpdate(); 
					       
			    		 result1=true;
			       }
			      
			       
			      

	  
		           PreparedStatement p=con.prepareStatement("insert into OPERATION_G2 values (?,?,?,?,?,?,?,sysdate,yash.nextval,'deposit')"); 
			       p.setInt(1,s_cust_id);  
			       p.setInt(2,s_acc_id); 
			       p.setString(3,s_acc_type);  
			       p.setInt(4,amount); 
			       p.setInt(5,0);  
			       p.setInt(6,0); 
			       p.setString(7,null);
			      
			       int i=p.executeUpdate();  
			       
			       if(i==1)
			    	 result2=true;
			       
			       if(result1==true && result2==true)
			       {
			       PreparedStatement ps11=con.prepareStatement("update ABC_ACCOUNT_G2 set last_updated=sysdate where account_id=?"); 
			       ps11.setInt(1,s_acc_id);  
			       ps11.executeUpdate(); 
			       }
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			    
		   if(result1==true && result2==true)
			   return true;
			      
		return false;
	}
	
	
	public boolean withdrawDao(int s_cust_id,int s_acc_id,String s_acc_type,int amount)
	{
		 boolean result1=false;
		 boolean result2=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select balance from ABC_ACCOUNT_G2 where account_id=?"); 
			       ps.setInt(1,s_acc_id);  
			       ResultSet rs=ps.executeQuery(); 
			       
			       while(rs.next())
			       {
			        	 int balance=rs.getInt(1);
			        	 
			    	    if(balance>amount)
			    	    {
			    		 PreparedStatement ps1=con.prepareStatement("update ABC_ACCOUNT_G2 set balance=? where account_id=?"); 
					     ps1.setInt(1,balance-amount);
					     ps1.setInt(2,s_acc_id);
					     ps1.executeUpdate(); 
					       
			    		 result1=true;
			    	    }
			       }
			      
			       
			       
		           PreparedStatement p=con.prepareStatement("insert into OPERATION_G2 values (?,?,?,?,?,?,?,sysdate,yash.nextval,'withdraw')"); 
			       p.setInt(1,s_cust_id);  
			       p.setInt(2,s_acc_id); 
			       p.setString(3,s_acc_type);  
			       p.setInt(4,amount); 
			       p.setInt(5,0);  
			       p.setInt(6,0); 
			       p.setString(7,null);
			      
			       int i=p.executeUpdate();  
			       
			       if(i==1)
			    	 result2=true;
			       
			       if(result1==true && result2==true)
			       {
			       PreparedStatement ps11=con.prepareStatement("update ABC_ACCOUNT_G2 set last_updated=sysdate where account_id=?"); 
			       ps11.setInt(1,s_acc_id);  
			       ps11.executeUpdate(); 
			       }
			       
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			    
		   if(result1==true && result2==true)
			   return true;
			      
		return false;
	}

	public boolean isActivedDao(int s_cust_id,int s_acc_id,int d_cust_id,int d_acc_id)
	{
		 boolean result1=false;
		 boolean result2=false;
		 boolean result3=false;
		 boolean result4=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps1=con.prepareStatement("select cust_status from ABC_CUSTOMER_G2 where cust_id=?"); 
			       ps1.setInt(1,s_cust_id);  
			       ResultSet rs1=ps1.executeQuery(); 
			       
			       while(rs1.next())
			       {
			    	   if(rs1.getString(1).equals("active"))
			    		   result1=true;
			       }
			       
			       
			       PreparedStatement ps2=con.prepareStatement("select cust_status from ABC_CUSTOMER_G2 where cust_id=?"); 
			       ps2.setInt(1,d_cust_id); 
			       ResultSet rs2=ps2.executeQuery(); 
			       
			       while(rs2.next())
			       {
			    	   if(rs2.getString(1).equals("active"))
			    		   result2=true;
			       }
			       
			       PreparedStatement ps3=con.prepareStatement("select status from ABC_ACCOUNT_G2 where account_id=?"); 
			       ps3.setInt(1,s_acc_id); 
			       ResultSet rs3=ps3.executeQuery(); 
			       
			       while(rs3.next())
			       {
			    	   if(rs3.getString(1).equals("active"))
			    		   result3=true;
			       }
			       
			       
			       PreparedStatement ps4=con.prepareStatement("select status from ABC_ACCOUNT_G2 where account_id=?"); 
			       ps4.setInt(1,d_acc_id); 
			       ResultSet rs4=ps4.executeQuery(); 
			       
			       while(rs4.next())
			       {
			    	   if(rs4.getString(1).equals("active"))
			    		   result4=true;
			       }
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		if(result1==true && result2==true && result3==true && result4==true)
			return true;
		
		return false;
		
	}
	
	
	
	
	
	
	
	public boolean checkDaoBalance(int s_acc_id,int d_acc_id,int amount)
	{
		 boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
			       PreparedStatement pss=con.prepareStatement("select balance from ABC_ACCOUNT_G2 where account_id=?"); 
			       pss.setInt(1,d_acc_id);  
			       ResultSet rss=pss.executeQuery();
			       rss.next();
			       int balance2=rss.getInt(1);
			        
			    
			    
		           PreparedStatement ps=con.prepareStatement("select balance from ABC_ACCOUNT_G2 where account_id=?"); 
			       ps.setInt(1,s_acc_id);  
			       ResultSet rs1=ps.executeQuery(); 
			       
			       while(rs1.next())
			       {
			    	  int balance=rs1.getInt(1);
			    	  if(balance>amount)
			    	  {
			    		 PreparedStatement ps1=con.prepareStatement("update ABC_ACCOUNT_G2 set balance=? where account_id=?"); 
					     ps1.setInt(1,balance-amount);
					     ps1.setInt(2,s_acc_id);
					     ps1.executeUpdate(); 
					     
					     
					     PreparedStatement ps2=con.prepareStatement("update ABC_ACCOUNT_G2 set balance=? where account_id=?"); 
					     ps2.setInt(1,balance2+amount);
					     ps2.setInt(2,d_acc_id);
					     ps2.executeUpdate(); 
					    
			    		 result=true;
			    	  }
			       }
			      
			       
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
			      
		return result;
	}
	
	
	
	
	

	public boolean tranferDao(int s_cust_id,int s_acc_id,String s_acc_type,int amount,int d_cust_id,int d_acc_id,String d_acc_type)
	{
		 boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		         PreparedStatement ps=con.prepareStatement("insert into OPERATION_G2 values (?,?,?,?,?,?,?,sysdate,yash.nextval,'transfer')"); 
			       ps.setInt(1,s_cust_id);  
			       ps.setInt(2,s_acc_id); 
			       ps.setString(3,s_acc_type);  
			       ps.setInt(4,amount); 
			       ps.setInt(5,d_cust_id);  
			       ps.setInt(6,d_acc_id); 
			       ps.setString(7,d_acc_type);
			      
			       int i=ps.executeUpdate();  
			       
			       if(i==1)
			    	 result=true;
			       
			       if(result==true)
			       {
			       PreparedStatement ps11=con.prepareStatement("update ABC_ACCOUNT_G2 set last_updated=sysdate where account_id=?"); 
			       ps11.setInt(1,s_acc_id);  
			       ps11.executeUpdate(); 
			       
			       PreparedStatement ps12=con.prepareStatement("update ABC_ACCOUNT_G2 set last_updated=sysdate where account_id=?"); 
			       ps12.setInt(1,d_acc_id);  
			       ps12.executeUpdate(); 
			       
			       }
			    	   
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
			      
		return result;
	}
	
	public ResultSet accDetailDao(int acc_id)
	{
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
		           PreparedStatement ps=con.prepareStatement("select * from ABC_ACCOUNT_G2 where account_id=?");             
                   ps.setInt(1,acc_id);
			       
			       ResultSet rs=ps.executeQuery(); 
			       return rs;
			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
		   return null;
	}
	public boolean validateDao(String us,String ups, String type)
	{
		 boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP","aja38core","aja38core"); 
			 
			  
			      PreparedStatement ps=con.prepareStatement("select * from Employee_G2 where user_id=? and password=? and emp_type=?"); 
			       ps.setString(1,us);  
			       ps.setString(2,ups);  
			       ps.setString(3, type);
			       ResultSet rs=ps.executeQuery();  
			       
			       while(rs.next())
			    	  result=true; 

			      
			    }catch (Exception e2) {System.out.println(e2);}  
			          
			      
		return result;
	}
	
}

