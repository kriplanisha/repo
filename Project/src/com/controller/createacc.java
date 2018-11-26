package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BankDao;
import com.service.BankService;


@WebServlet("/createacc")
public class createacc extends HttpServlet 
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		int cus_id= Integer.parseInt(request.getParameter("custid"));
		String acc_type=request.getParameter("acctype");
		String amount=request.getParameter("depamt");
		
		BankDao bd = new BankDao();
		
	         if(bd.acccuscheckpDao(cus_id))
	         {
		
	      ResultSet rs=BankService.checkPresent(cus_id,acc_type);
	        try {
				if(rs.next())
				{
					if(rs.getString(7).equalsIgnoreCase("deactive"))
				    request.getRequestDispatcher("alreadypresentdeactive.jsp").forward(request,response); 
					
					else
						request.getRequestDispatcher("alreadypresentactive.jsp").forward(request,response);
				}
				 else
		           {
	              if(BankService.createServiceAcc(cus_id, acc_type,Integer.parseInt(amount)))
	            	request.getRequestDispatcher("AccCreated.jsp").forward(request,response);
	            
	               else
	            	request.getRequestDispatcher("AccCreationFailed.jsp").forward(request,response);	
		           }
				
			  } catch (SQLException e) { e.printStackTrace();}
				
			
	         }
	         else
	        	 request.getRequestDispatcher("MissingcustId.jsp").forward(request,response);
	        	 
	 
		
		
	}

}
