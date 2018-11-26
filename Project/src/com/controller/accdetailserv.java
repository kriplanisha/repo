package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.Service;

/**
 * Servlet implementation class accdetailserv
 */
@WebServlet("/accdetailserv")
public class accdetailserv extends HttpServlet 
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
   	    int	acc_id=Integer.parseInt(request.getParameter("aid"));
				
	    Service service=new Service();
		
         
		     
			      try {
					
			    	  ResultSet rs=service.accDetailService(acc_id);
			    	    if(rs.next())
			    	    {
			    	     HttpSession session = request.getSession(true);
					     session.setAttribute("cust_ID",rs.getInt(1));
					     session.setAttribute("acc_ID",rs.getInt(2));
					     session.setAttribute("acc_TYPE",rs.getString(3));
					     session.setAttribute("BALANCE",rs.getInt(4));
					     session.setAttribute("start_DATE",rs.getString(5));
					     session.setAttribute("end_DATE",rs.getString(6));
					     session.setAttribute("STATUS",rs.getString(7));
					     session.setAttribute("last_UPDATED",rs.getString(8));
					
					 request.getRequestDispatcher("cashiersecond.jsp").forward(request,response);
			    	    }
			    	    else
			    	    	request.getRequestDispatcher("accountnotpresent.jsp").forward(request,response);
			    	    
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		     
			     
			

	}

}