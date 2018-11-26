package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.updateDaocred;

/**
 * Servlet implementation class changepassword2
 */
@WebServlet("/changepassword2")
public class changepassword2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepassword2() {
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
      int cust_ssnid=Integer.parseInt(request.getParameter("ssnid"));
      String cust_name=request.getParameter("ename");
      int age=Integer.parseInt(request.getParameter("age"));
      String cust_city=request.getParameter("city");
      
      updateDaocred dao=new updateDaocred();
      boolean resultee=dao.checkcusaccDao(cust_ssnid,cust_name,age,cust_city);
      
      if(resultee)
    	  request.getRequestDispatcher("changep.jsp").forward(request,response);
      else
    	  request.getRequestDispatcher("invalidcredent.jsp").forward(request,response);
	  
		
	}

}
