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
@WebServlet("/accdetailserv2")
public class accdetailserv2 extends HttpServlet 
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
   	    int	acc_id=Integer.parseInt(request.getParameter("aid"));
     	 int amt=Integer.parseInt(request.getParameter("amt"));
     	 
	    Service service=new Service();
		
         
		     
			      try {
					
			    	  ResultSet rs=service.accDetailService(acc_id);
			    	    if(rs.next())
			    	    {
			    	     HttpSession session = request.getSession(true);
					     session.setAttribute("Dcust_ID",rs.getInt(1));
					     session.setAttribute("Dacc_ID",rs.getInt(2));
					     session.setAttribute("Dacc_TYPE",rs.getString(3));
					     session.setAttribute("DBALANCE",rs.getInt(4));
					     session.setAttribute("Dstart_DATE",rs.getString(5));
					     session.setAttribute("Dend_DATE",rs.getString(6));
					     session.setAttribute("DSTATUS",rs.getString(7));
					     session.setAttribute("Dlast_UPDATED",rs.getString(8));
					     session.setAttribute("AMT", amt);
					
					 request.getRequestDispatcher("transferserv").forward(request,response);
			    	    }
			    	    else
			    	    	request.getRequestDispatcher("accountnotpresent.jsp").forward(request,response);
			    	    
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		     
			     
			

	}

}