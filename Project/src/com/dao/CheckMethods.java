package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.Account;
import com.bean.Customer;
import com.bean.Transaction;
import com.util.DbTransaction;

public class CheckMethods {
/*
	static Connection con = null;

	public static boolean CheckSsn(String ssnId) {
		// TODO Auto-generated method stub
		try {
			ResultSet rs = null;
			con = DbTransaction.getConnection();
			String query = "select * from ABC_CUSTOMER_G2 where ssnId=" + ssnId;
			PreparedStatement ps = con.prepareStatement(query);
			rs = ps.executeQuery();

			if (rs != null)
				return true;
		}

		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public static Customer getAllCustomer(long Cust_id) {

		Customer cust = new Customer();
		try {
			con = DbTransaction.getConnection();
			ResultSet rs = null;

			String query = "select * from ABC_CUSTOMER_G2 where CUST_ID=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1, Cust_id);
			rs = ps.executeQuery();
			while (rs.next()) {

				cust.setCust_id(rs.getLong(2));
				cust.setSsnId(rs.getLong(1));
				cust.setAge(rs.getInt(4));
				cust.setAddLine1(rs.getString(5));
				cust.setAddLine2(rs.getString(6));
				cust.setCity(rs.getString(7));
				cust.setState(rs.getString(8));

			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cust;
	}

	public static ArrayList<Account> getAllAccount(long cust_id) {

		ArrayList<Account> account = new ArrayList<Account>();
		try {
			con = DbTransaction.getConnection();
			ResultSet rs = null;

			String query = "select * from ABC_ACCOUNT_G2 where CUST_ID=?";
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
			System.out.println(e.getMessage());
		}

		return account;
	}

	public static ArrayList<Transaction> getTransactionHistory(long id) {

		ArrayList<Transaction> transaction = new ArrayList<Transaction>();

		try {
			con = DbTransaction.getConnection();
			ResultSet rs = null;
			String query = "select * from OPERATION_G2 where S_ACC_ID=? ";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1,id);
			
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
		} catch (SQLException e) {
			
			System.out.println(e.getMessage());
		}
		return transaction;

	}

	public static boolean LoginCheck(long id,String pass) 
	{
		boolean result=false;
		try 
		{
			con = DbTransaction.getConnection();
			ResultSet rs = null;
			String query = "SELECT * FROM login_g2 where cust_id=? and password=? ";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1,id);
			ps.setString(2,pass);
			rs = ps.executeQuery();
	       
			while(rs.next())
			result=true;;
			
		}
			catch (SQLException e) {
			System.out.println(e.getMessage());
		               }
		return result;
     }*/

	public static ArrayList<Transaction> getAllTransaction(int userid ,long id, String d1, String d2) {
			ArrayList<Transaction> newTrans=new ArrayList<Transaction>();
			Connection con = null;
			
			try 
			{
				con = DbTransaction.getConnection();
				ResultSet rs = null;
				String query = "SELECT * FROM OPERATION_G2 WHERE S_Cust_ID=? AND S_ACC_ID=? AND trans_date BETWEEN TO_DATE (?,'mm/dd/yyyy') AND TO_DATE (?,'mm/dd/yyyy')";
				PreparedStatement ps = con.prepareStatement(query);
				ps.setInt(1, userid);
				ps.setLong(2,id);
				ps.setString(3,d1);
				ps.setString(4,d2);
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					Transaction trans=new Transaction();
					trans.setS_acc_id(rs.getLong(2));
					trans.setS_acc_type(rs.getString(3));
					trans.setAmount(rs.getInt(4));
					trans.setD_acc_id(rs.getLong(6));
					trans.setTrans_date(rs.getString(8));
					trans.setTransID(rs.getLong(9));
					trans.setMode(rs.getString(10));
					
					newTrans.add(trans);
				}
				return newTrans;
			}
				catch (SQLException e) {
				System.out.println(e.getMessage());
				
		}
			
			
			
			return null;
			
	}


}
