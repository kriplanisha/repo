package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.updateDaocred;

/**
 * Servlet implementation class changepassword
 */
@WebServlet("/changepassword")
public class changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 int cust_id=Integer.parseInt(request.getParameter("customerid"));
		
		 updateDaocred dao=new updateDaocred();
		
		 boolean result=dao.checkCustomerIdPresentDao(cust_id);
		 
		 if(result==true)
		 {
		 request.getSession().setAttribute("custer",cust_id);
		 request.getRequestDispatcher("fillques.jsp").forward(request,response);
		 } 
		 else
		 request.getRequestDispatcher("cusidnotexistfill.jsp").forward(request,response);
		
	}
	
	

}
