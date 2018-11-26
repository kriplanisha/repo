package com.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.BankService;


/**
 * Servlet implementation class getyourserv
 */
@WebServlet("/getyourserv")
public class getyourserv extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		int cust_id=Integer.parseInt(request.getParameter("cid"));
		BankService service=new BankService();
		
		boolean presentcs=service.checkCustomerIdPresentSer(cust_id);
		if(presentcs)
		{
		ResultSet rs=service.customerDetailsSer(cust_id);
		
		request.setAttribute("customer_realid",cust_id);
		request.setAttribute("result_rr",rs);
		request.getRequestDispatcher("cashiernext.jsp").forward(request,response);
		}
		else
			request.getRequestDispatcher("failurecusnot.jsp").forward(request,response);
		
	}

}
