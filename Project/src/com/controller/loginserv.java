package com.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.Service;


@WebServlet("/loginserv")
public class loginserv extends HttpServlet 
{

       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  	{
		String us=request.getParameter("user_id");
		String ups=request.getParameter("password");
		String type=request.getParameter("type");
		
		
		Service service=new Service();
		
		if(service.validateService(us,ups,type))
		{
			HttpSession session=request.getSession();
			session.setAttribute("user_login",us);
			
			if(type.equalsIgnoreCase("manager"))
			{
				request.getRequestDispatcher("ManagerMenu.jsp").forward(request,response);
			}
			else
			{
				request.getRequestDispatcher("cashierfirst.jsp").forward(request,response);
				
			}
		}
		
		else
		{
			response.sendRedirect("EmpLogin.jsp");
		}
	}

}
