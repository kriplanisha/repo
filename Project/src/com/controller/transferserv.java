package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.Service;

/**
 * Servlet implementation class transferserv
 */
@WebServlet("/transferserv")
public class transferserv extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		 Service service=new Service();
		
		 
		 
		int s_cust_id= (Integer) request.getSession().getAttribute("cust_ID");
   	    int	s_acc_id=(Integer) request.getSession().getAttribute("acc_ID");
	    String s_acc_type=(String) request.getSession().getAttribute("acc_TYPE");
		int amount=(Integer) request.getSession().getAttribute("AMT");
		
		int	d_acc_id=(Integer) request.getSession().getAttribute("Dacc_ID");
	     int d_cust_id=(Integer)  request.getSession().getAttribute("Dcust_ID");
  	     String d_acc_type=(String) request.getSession().getAttribute("Dacc_TYPE");
				
		
        boolean result1=service.checkcusaccService(d_acc_id);
		
		if(result1==true)
		{
		
	

		
	   
		
		
	if(service.isActivedService(s_cust_id,s_acc_id,d_cust_id,d_acc_id))
		{
			if(service.checkServiceBalance(s_acc_id,d_acc_id,amount))
			{
			

		    boolean result=	service.transferSevice(s_cust_id,s_acc_id,s_acc_type,amount,d_cust_id,d_acc_id,d_acc_type);
			
		    if(result)
			request.getRequestDispatcher("transfersuccess.jsp").forward(request,response);
		    
		    else request.getRequestDispatcher("failureunknown.jsp").forward(request,response);
			
			}
			else request.getRequestDispatcher("failureamount.jsp").forward(request,response);
			
		}   
		else request.getRequestDispatcher("failureexist.jsp").forward(request,response);
	
	
	
		}
		else
			request.getRequestDispatcher("IdNotPresent.jsp").forward(request,response);
	

	}

	

}
