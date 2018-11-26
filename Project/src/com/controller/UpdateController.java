package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Customer;
import com.service.BankService;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
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
			Customer cust = new Customer();
			cust.setSsn(Integer.parseInt(request.getParameter("SSN_Id")));	
			cust.setCustId(Long.parseLong(request.getParameter("custid")));
			cust.setName(request.getParameter("username"));
			cust.setAge(Integer.parseInt(request.getParameter("age")));
			cust.setAdd1(request.getParameter("address1"));
			cust.setAdd2(request.getParameter("address2"));
			cust.setCity(request.getParameter("city"));
			cust.setState(request.getParameter("state"));
			cust.setStatus(request.getParameter("status"));
			cust.setDate(request.getParameter("lastupdate"));
			int res = BankService.update(cust);
			request.setAttribute("result", res);
			
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}catch(Exception e){e.printStackTrace();}
	}

}
