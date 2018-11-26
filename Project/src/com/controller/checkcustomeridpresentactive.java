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
 * Servlet implementation class checkcustomeridpresentactive
 */
@WebServlet("/checkcustomeridpresentactive")
public class checkcustomeridpresentactive extends HttpServlet 
{
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		int acc_id=Integer.parseInt(request.getParameter("aid"));
		
		Service service=new Service();
		
		boolean result=service.checkcusaccService(acc_id);
		
		if(result==true)
		{
			request.getRequestDispatcher("accdetailserv").forward(request,response);
		}
		else
			request.getRequestDispatcher("CustNotActive.jsp").forward(request,response);
	    
	}

}
