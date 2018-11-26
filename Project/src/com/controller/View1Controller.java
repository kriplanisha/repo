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
 * Servlet implementation class DeactController
 */
@WebServlet("/View1Controller")
public class View1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View1Controller() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{

			String ssnId= request.getParameter("SSN_Id");
			String custId= request.getParameter("custid");
			
			ResultSet rs = BankService.view(ssnId,custId);
			request.setAttribute("result_set", rs);
			request.getRequestDispatcher("act-deact.jsp").forward(request, response);
		}catch(Exception e){e.printStackTrace();}
	}

}
