package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.Service;

/**
 * Servlet implementation class depositserv
 */
@WebServlet("/depositserv")
public class depositserv extends HttpServlet 
   {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		int s_cust_id=Integer.parseInt(request.getParameter("cid"));
   	    int	s_acc_id=Integer.parseInt(request.getParameter("aid"));
	    String s_acc_type=request.getParameter("type"); 
		int amount=Integer.parseInt(request.getParameter("amt"));
	
		
		request.getSession().setAttribute("AMOUNT",amount);
				
	    Service service=new Service();
		
		
	    if(service.isActiveSerDep(s_cust_id,s_acc_id))
	      	{
			

		    boolean result=	service.depositSevice(s_cust_id,s_acc_id,s_acc_type,amount);
			
		    if(result)
		    {
			request.getRequestDispatcher("depositsuccess.jsp").forward(request,response);
		      
		    }
		    
		    else request.getRequestDispatcher("failureunknown.jsp").forward(request,response);
			
			
		    }   
		else request.getRequestDispatcher("failureexist.jsp").forward(request,response);

	}


}
