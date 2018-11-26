package com.service;

import java.sql.ResultSet;

import com.controller.*;
import com.dao.Dao;

public class Service 
{
	public boolean checkcusaccService(int acc_id)
	   {
		   Dao dao=new Dao();
		   
		   return dao.checkcusaccDao(acc_id);
	   
	   }

	
	public boolean checkCustomerIdPresentSer(int cust_id)
	   {
		   Dao dao=new Dao();
		   
		   return dao.checkCustomerIdPresentDao(cust_id);
	   
	   }
	
	
	public ResultSet customerDetailsSer(int cust_id)
	{
		Dao dao=new Dao();
		return dao.customerDetailsDao(cust_id);
		
	}
	public ResultSet viewService(int acc_id,int no_of_trans)
	   {
		   Dao dao=new Dao();
		   
		   return dao.viewDao(acc_id,no_of_trans);
	   
	   }
	
	
	
	public boolean isActiveSerDep(int s_cust_id,int s_acc_id)
	   {
		   Dao dao=new Dao();
		   
		   return dao.isActiveDaoDep(s_cust_id,s_acc_id);
	   
	   }
	
		
   public boolean depositSevice(int s_cust_id,int s_acc_id,String s_acc_type,int amount)
   {
	   Dao dao=new Dao();
	   
	   return dao.depositDao(s_cust_id,s_acc_id,s_acc_type,amount);
	      
   }  
   
   public boolean withdrawSevice(int s_cust_id,int s_acc_id,String s_acc_type,int amount)
   {
	   Dao dao=new Dao();
	   
	   return dao.withdrawDao(s_cust_id,s_acc_id,s_acc_type,amount);
	      
   }
   
   public boolean isActivedService(int s_cust_id,int s_acc_id,int d_cust_id,int d_acc_id)
   {
	   Dao dao=new Dao();
	   
	   return dao.isActivedDao(s_cust_id,s_acc_id,d_cust_id,d_acc_id);
   
   }


public boolean checkServiceBalance(int s_acc_id,int d_acc_id,int amount)
   {
	   Dao dao=new Dao();
	   
	   return dao.checkDaoBalance(s_acc_id,d_acc_id,amount);
   
   }



public boolean transferSevice(int s_cust_id,int s_acc_id,String s_acc_type,int amount,int d_cust_id,int d_acc_id,String d_acc_type)
{
   Dao dao=new Dao();
   
   return dao.tranferDao(s_cust_id,s_acc_id,s_acc_type,amount,d_cust_id,d_acc_id,d_acc_type);
   
   
}

   public ResultSet accDetailService(int acc_id)
    {
	   Dao dao=new Dao();
	 
	   return dao.accDetailDao(acc_id);
	}

   public boolean validateService(String us,String ups, String type)
	{
		Dao dao=new Dao();
		
	  return dao.validateDao(us, ups,type);
	}
	
}



