package com.service;

import java.sql.ResultSet;

import javax.jws.WebService;

import com.bean.Customer;
import com.dao.BankDao;
import com.dao.BankDao;
import com.dao.Dao;
public class BankService {
	public static int addCustomer(Customer cust) {
		BankDao obj = new BankDao();
		
		return obj.createCust(cust);
	}

	public static ResultSet view(String ssnid,String custId) {
		BankDao obj = new BankDao();
		return obj.view(ssnid,custId);
	}

	public static int update(Customer cust) {
		BankDao obj = new BankDao();
		return obj.update(cust);
		
	}

	public static ResultSet AccView(String accno) {
		BankDao obj = new BankDao();
		return obj.AccView(accno);

	}

	public static int AccDeact(String status,String accid) {
		BankDao obj = new BankDao();
		return obj.AccDeact(status,accid);
	}

	public static long getCustId(String ssn) {
		return (new BankDao().getCustId(ssn));
		
	}

	public static int  validate(String ssn) {
		return (new BankDao().validate(ssn));
		
	}
	
	public static boolean createServiceAcc(int cus_id,String acc_type,int amount)
	{	
		BankDao obj = new BankDao();	
		return obj.createDaoAcc(cus_id, acc_type,amount);
		
		
	}

	public static ResultSet checkPresent(int cus_id,String acc_type)
	{
		BankDao obj=new BankDao();
		return obj.checkPresentDao(cus_id, acc_type);
		
		
	}
	
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

public static int insertCredentials(long custid, String password,String email) {
	BankDao obj = new BankDao();
	return obj.insertCredentials(custid,password,email);
}

public static ResultSet viewCustDetail(String ssnid,String custId) {
	BankDao obj = new BankDao();
	return obj.viewCustDetail(ssnid,custId);
}
}