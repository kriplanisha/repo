package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.Account;
import com.bean.Customer;
import com.bean.Transaction;
import com.util.DbTransaction;

public class BankDao {
	
	
	
	public boolean acccuscheckpDao(int cust_id)
	{
		boolean result=false;
		   try{  
			    Class.forName("oracle.jdbc.driver.OracleDriver");  
			    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","nanu1234"); 
			 
		           PreparedStatement ps=con.prepareStatement("select * from ABC_CUSTOMER_G2 where cust_id=? and cust_status='active' " );             
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
	
	
	
	

	public int createCust(Customer cust) {
		int res = -1;
		Connection con = DbTransaction.getConnection();

		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("Insert into ABC_Customer_G2 values (?,yash.nextval,?,?,?,?,?,?,'active',sysdate)");
			ps.setLong(1, cust.getSsn());
			ps.setString(2, cust.getName());
			ps.setInt(3, cust.getAge());
			ps.setString(4, cust.getAdd1());
			ps.setString(5, cust.getAdd2());
			ps.setString(6, cust.getCity());
			ps.setString(7, cust.getState());
			res = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;

	}

	public ResultSet view(String ssnId, String custId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = DbTransaction.getConnection();
		try {
			if (custId.trim() != "") {

				ps = con.prepareStatement("select * from ABC_Customer_G2 where cust_id=?");
				ps.setInt(1, Integer.parseInt(custId));
				rs = ps.executeQuery();
				return rs;
			}
			if (ssnId.trim() != "") {

				ps = con.prepareStatement("select * from ABC_Customer_G2 where cust_ssnid=?");
				ps.setInt(1, Integer.parseInt(ssnId));
				rs = ps.executeQuery();
				return rs;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	public int update(Customer cust) {
		PreparedStatement ps = null;
		int res = -1;
		Connection con = DbTransaction.getConnection();
		try {
			ps = con.prepareStatement("update ABC_CUSTOMER_G2 set cust_name=?, cust_age=?, addLine1=?, addLine2=?, cust_city=?, cust_state=?, cust_status=?, last_update=sysdate where cust_id=?");
			ps.setString(1, cust.getName());
			ps.setInt(2, cust.getAge());
			ps.setString(3, cust.getAdd1());
			ps.setString(4, cust.getAdd2());
			ps.setString(5, cust.getCity());
			ps.setString(6, cust.getState());

			ps.setString(7, cust.getStatus());
			ps.setLong(8, cust.getCustId());
			res = ps.executeUpdate();
			
			if(cust.getStatus().equalsIgnoreCase("deactive"))
			{	
		    PreparedStatement ps2=null;		
			ps2 = con.prepareStatement("update ABC_Account_G2 set status='active' where cust_id=?");
			ps2.setLong(1, cust.getCustId());
			ps2.executeUpdate();
			}
			
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}

	public ResultSet AccView(String accno) {
		PreparedStatement ps = null;
		ResultSet rs = null;

		Connection con = DbTransaction.getConnection();
		try {
			ps = con.prepareStatement("Select * from ABC_Account_G2 where status='active' AND Account_id=? ");
			ps.setLong(1, Integer.parseInt(accno));
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int AccDeact(String status, String accid) {
		PreparedStatement ps = null;
		int res = -1;
		Connection con = DbTransaction.getConnection();
		try {
			ps = con.prepareStatement("update ABC_Account_G2 set status=?, last_updated=sysdate where account_id=?");
			ps.setString(1, status);

			ps.setLong(2, Integer.parseInt(accid));
			res = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}

	public int validate(String ssn) {
		PreparedStatement ps = null;
		ResultSet rs = null;

		Connection con = DbTransaction.getConnection();
		try {
			ps = con.prepareStatement("select * from ABC_CUSTOMER_G2 where CUST_SSNID=?");
			ps.setLong(1, Integer.parseInt(ssn));
			rs = ps.executeQuery();
			if (rs.next())
				return -1;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}

	public long getCustId(String ssn) {
		PreparedStatement ps = null;

		ResultSet rs = null;
		Connection con = DbTransaction.getConnection();
		try {
			ps = con.prepareStatement("Select CUST_ID from ABC_CUSTOMER_G2 where CUST_SSNID=?");
			ps.setLong(1, Integer.parseInt(ssn));
			rs = ps.executeQuery();
			rs.next();
			return rs.getLong(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;

	}

	public boolean createDaoAcc(int cus_id, String acc_type, int amount) {
		boolean result = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP",
					"aja38core", "aja38core");

			PreparedStatement ps = con
					.prepareStatement("insert into ABC_ACCOUNT_G2 values (?,yash.nextval,?,?,sysdate,sysdate,'active',sysdate)");
			ps.setInt(1, cus_id);
			ps.setString(2, acc_type);
			ps.setInt(3, amount);

			int i = ps.executeUpdate();

			if (i == 1)
				result = true;

		} catch (Exception e2) {
			System.out.println(e2);
		}

		return result;
	}

	public ResultSet checkPresentDao(int cus_id, String acc_type) {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP",
					"aja38core", "aja38core");

			PreparedStatement ps = con
					.prepareStatement("select * from ABC_ACCOUNT_G2 where cust_id=? and account_type=?");
			ps.setInt(1, cus_id);
			ps.setString(2, acc_type);

			ResultSet rs = ps.executeQuery();

			return rs;

		} catch (Exception e2) {
			System.out.println(e2);
		}

		return null;
	}

	public static boolean LoginCheck(Long id, String pass) {
		Connection con = DbTransaction.getConnection();
		boolean result = false;
		try {
			con = DbTransaction.getConnection();
			ResultSet rs = null;
			String query = "SELECT * FROM login_g2 where cust_id=? and password=? ";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setLong(1,id);
		    ps.setString(2,pass);

			rs = ps.executeQuery();

			while (rs.next())
				result = true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return result;

	}

	public static Customer getAllCustomer(Long Cust_id) {
		Customer cust = new Customer();
		Connection con = DbTransaction.getConnection();
		try {
			con = DbTransaction.getConnection();
			ResultSet rs = null;

			String query = "select * from ABC_CUSTOMER_G2 where custid=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1, Cust_id);
			rs = ps.executeQuery();
			while (rs.next()) {

				cust.setCustId(rs.getLong(2));
				cust.setSsn(rs.getInt(1));
				cust.setAge(rs.getInt(4));
				cust.setAdd1(rs.getString(5));
				cust.setAdd2(rs.getString(6));
				cust.setCity(rs.getString(7));
				cust.setState(rs.getString(8));

			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cust;
	}

	public static ArrayList<Account> getAllAccount(Long cust_id) {
		Connection con = DbTransaction.getConnection();
		ArrayList<Account> account = new ArrayList<Account>();
		try {
			con = DbTransaction.getConnection();
			ResultSet rs = null;

			String query = "select * from ABC_ACCOUNT_G2 where CustID=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1, cust_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				Account newaccount = new Account();
				newaccount.setAccount_id(rs.getInt(2));
				newaccount.setAccount_type(rs.getString(3));
				newaccount.setBalance(rs.getInt(4));
				account.add(newaccount);
			}
		} catch (SQLException e) {
			System.out.println("no account found");
		}

		return account;
	}

	public static ArrayList<Transaction> getTransactionHistory(int id) {
		Connection con = DbTransaction.getConnection();
		ArrayList<Transaction> transaction = new ArrayList<Transaction>();
		ResultSet rs = null;
		try {

			String query = "select * From OPERATION_G2 where S_ACC_ID=? ";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				Transaction newTrans = new Transaction();
				// setter and getter
				newTrans.setS_cust_id(rs.getLong(1));
				newTrans.setS_acc_id(rs.getLong(2));
				newTrans.setS_acc_type(rs.getString(3));
				newTrans.setAmount(rs.getInt(4));
				newTrans.setD_acc_id(rs.getLong(6));
				newTrans.setTrans_date(rs.getString(8));
				newTrans.setTransID(rs.getLong(9));
				newTrans.setMode(rs.getString(10));

				transaction.add(newTrans);
				
				
			}
			return transaction;
		} catch (SQLException e) {
			System.out.println("no record found");
		}
		return null;
	}

	public int insertCredentials(long custid, String password,String email) {
		Connection con = DbTransaction.getConnection();
		PreparedStatement ps = null;
		int rs = -1;
		try {
			ps = con.prepareStatement("Insert into login_G2 values(?,?,?)");
			ps.setLong(1, custid);
			ps.setString(2, password);
			ps.setString(3, email);
			rs = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet viewCustDetail(String ssnId, String custId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = DbTransaction.getConnection();
		try {
			if (custId.trim() != "") {

				ps = con.prepareStatement("select * from ABC_Customer_G2 where cust_status='active' and cust_id=?");
				ps.setInt(1, Integer.parseInt(custId));
				rs = ps.executeQuery();
				return rs;
			}
			if (ssnId.trim() != "") {

				ps = con.prepareStatement("select * from ABC_Customer_G2 where cust_status='active' and cust_ssnid=?");
				ps.setInt(1, Integer.parseInt(ssnId));
				rs = ps.executeQuery();
				return rs;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
}
