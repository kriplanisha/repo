package com.controller;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.sql.INTERVALYM;

import com.bean.Customer;
import com.service.BankService;
import com.util.Random1;

/**
 * Servlet implementation class CreateController
 */
@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public CreateController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String ssn = request.getParameter("SSN_Id");

			String name = request.getParameter("customername");
			String email=request.getParameter("cutomerEmail");
			String age = request.getParameter("age");
			String add1 = request.getParameter("addrline1");
			String add2 = request.getParameter("addrline2");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String status = "Active";
			Customer cust = new Customer();
			cust.setSsn(Integer.parseInt(ssn));
			cust.setName(name);
			cust.setAge(Integer.parseInt(age));
			cust.setAdd1(add1);
			cust.setAdd2(add2);
			cust.setCity(city);
			cust.setState(state);
			cust.setStatus(status);
			cust.setCustId((long) 0);
			cust.setDate(null);
			int res = BankService.validate(ssn);
			if (res != 1) {
				request.setAttribute("result", ssn);
				request.getRequestDispatcher("AlreadyExist.jsp").forward(
						request, response);
			}
			int res1 = BankService.addCustomer(cust);
			if (res1 > 0) {
		/*		String password = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		        StringBuilder salt = new StringBuilder();
		        Random rnd = new Random();
		        while (salt.length()<9) { // length of the random string.
		            int index = (int) (rnd.nextFloat() * password.length());
		            salt.append(password.charAt(index));
		        }
		        String newPassword = salt.toString();
				long custid =  BankService.getCustId(ssn);
				System.out.println(custid);
				
				request.setAttribute("result", custid+"\n" +"PASSWORD:"+newPassword);
				request.getRequestDispatcher("CreateResult.jsp").forward(
						request, response); */
				
				long custid=BankService.getCustId(ssn);
				String password=Random1.getSaltString();
				int rs = BankService.insertCredentials(custid,password,email);
				if(rs!=-1)
				{
					request.setAttribute("result", custid+"  \n PASSWORD: "+password);
					request.getRequestDispatcher("CreateResult.jsp").forward(
							request, response);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
