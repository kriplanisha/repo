package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbTransaction {
	public static Connection getConnection() {
		 Connection connection=null;
		try {
		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			  connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","nanu1234");
			} catch (SQLException e) {
			
			e.printStackTrace();
			} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			}
			return connection;
	}
	public static void closeConnection(Connection connection) {
		try
		{
		if(connection != null && connection.isClosed() == false)
		connection.close();
		connection = null;
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		}
	}
	

}
