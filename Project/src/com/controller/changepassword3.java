package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.updateDaocred;

/**
 * Servlet implementation class changepassword3
 */
@WebServlet("/changepassword3")
public class changepassword3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepassword3() {
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
		  String newpass=request.getParameter("pass");
		  int cust_id= (Integer)request.getSession().getAttribute("custer");
		  
		  updateDaocred dao=new updateDaocred();
	      boolean resultee=dao.setpass(cust_id,newpass);
	      
	      if(resultee)
	    	  request.getRequestDispatcher("successfulchange.jsp").forward(request,response);
	      else
	    	  request.getRequestDispatcher("unsuccessfulchange.jsp").forward(request,response);
		  
	}

}
