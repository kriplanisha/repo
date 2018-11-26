package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CheckMethods;
import com.bean.Account;
import com.bean.Transaction;

/**
 * Servlet implementation class AccountStatementDate
 */
@WebServlet("/AccountStatementDate")
public class AccountStatementDate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountStatementDate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		int userid=(Integer) request.getSession().getAttribute("user_login");
		int id=Integer.parseInt(request.getParameter("id"));
		String d1=request.getParameter("sd");
		String d2=request.getParameter("ed");
		
		ArrayList<Transaction> trans=new ArrayList<Transaction>();
		trans=null;
		trans=CheckMethods.getAllTransaction(userid,id,d1,d2);
		if(trans.size()!=0)
     {
    	 request.setAttribute("trans",trans);
			request.getRequestDispatcher("ViewSummaryDate.jsp").forward(request, response);;
	
	}
		else
			response.sendRedirect("Error.jsp");
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
