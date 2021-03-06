package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.bean.Account;
import com.dao.BankDao;

/**
 * Servlet implementation class ViewAccountDetails
 */
@WebServlet("/ViewAccountDetails")
public class ViewAccountDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewAccountDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ")
				.append(request.getContextPath());

		PrintWriter out = response.getWriter();
		Long userid = Long.parseLong(request.getParameter("userid"));
		ArrayList<Account> account = BankDao.getAllAccount(userid);

		if (account != null) {
			request.setAttribute("account", account);
			// res.sendRedirect("ViewCustDetails.jsp");
			request.getRequestDispatcher("ViewAccount.jsp").forward(request,
					response);
		}

		else {
			out.print("no record found");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
