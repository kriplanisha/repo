package com.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.Service;

/**
 * Servlet implementation class viewmini
 */
@WebServlet("/viewmini")
public class viewmini extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int acc_id=Integer.parseInt(request.getParameter("id"));
		int no_of_trans=Integer.parseInt(request.getParameter("type"));
		
		  Service service=new Service();
			
			    ResultSet rs=service.viewService(acc_id,no_of_trans);
				
			    if(rs!=null)
			    {
			    	request.setAttribute("result_set", rs);
			    	request.setAttribute("no_of_trans",no_of_trans);
				    request.getRequestDispatcher("viewsuccess.jsp").forward(request,response);
			    }
			    else request.getRequestDispatcher("viewfailure.jsp").forward(request,response);
				
	}

}
