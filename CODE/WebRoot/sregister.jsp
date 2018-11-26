<%@ include file="makecon.jsp" %>

<%@ page import="java.sql.Date"%>
<%@page session="true"%>
<% Integer slogid=(Integer)session.getAttribute("slogin1");%>

<% 
int sn2=slogid.intValue();
%>
<%!	
	ResultSet rs=null;
	PreparedStatement ps,ps1,ps2,ps3,ps4,ps5=null;
%>
<%
try
{


 	String st1=request.getParameter("fname");
	String st2=request.getParameter("lname");


	String dob1=request.getParameter("dob");


	String it4=request.getParameter("cellno");

	String st3=request.getParameter("sex");
	String st4=request.getParameter("passportno");
	String st5=request.getParameter("email");
	String st6=request.getParameter("hobbies");


	String st7=request.getParameter("p_streetname");
	String st8=request.getParameter("p_area");
	String st9=request.getParameter("p_city");


	String st10=request.getParameter("c_streetname");
	String st11=request.getParameter("c_area");
	String st12=request.getParameter("c_city");

	String dt1=request.getParameter("phno");




	String st13=request.getParameter("qualification");
	String st14=request.getParameter("branch");
	String st15=request.getParameter("skills");
	String st16=request.getParameter("o_qualifications");
	double dt2=Double.parseDouble(request.getParameter("experience"));

	String st17=request.getParameter("quali");
	String st18=request.getParameter("m_board");
	String st19=request.getParameter("m_year");
	double dt3=Double.parseDouble(request.getParameter("m_per"));


	String st20=request.getParameter("degree");
	String st21=request.getParameter("i_board");
	String st22=request.getParameter("i_year");
	double dt4=Double.parseDouble(request.getParameter("i_per"));

	String st23=request.getParameter("higher");
	String st24=request.getParameter("u_university");
	String st25=request.getParameter("u_year");
	double dt5=Double.parseDouble(request.getParameter("u_per"));


	String st26=request.getParameter("ssc");
	String st27=request.getParameter("p_university");
	String st28=request.getParameter("p_year");
	double dt6=Double.parseDouble(request.getParameter("p_per"));

	String st29=request.getParameter("passwd");
	String st30=request.getParameter("retypepassword");
	String st31=request.getParameter("question");
	String st32=request.getParameter("answer");

%>  
<% session.setAttribute("pwd",st29);%>


 <%

 		
	ps=con.prepareStatement("insert into seek_per values(?,?,?,?,?,?,?,?,?)");
	
	ps.setInt(1,sn2);
	ps.setString(2,st1);
	ps.setString(3,st2);

	ps.setString(4,dob1);

	ps.setString(5,it4);

	ps.setString(6,st3);
	ps.setString(7,st4);
	ps.setString(8,st5);
	ps.setString(9,st6);
	
	int i=ps.executeUpdate();
	
		if (i>0)
		{             
			
			System.out.println("first record updated");
                          			
	
		}
		else
		{	System.out.println("Sorry");
			
		}



	ps1=con.prepareStatement("insert into seek_add values(?,?,?,?,?,?,?,?)");

	ps1.setInt(1,sn2);
	ps1.setString(2,st7);
	ps1.setString(3,st8);
	ps1.setString(4,st9);
	ps1.setString(5,st10);
	ps1.setString(6,st11);
	ps1.setString(7,st12);
	ps1.setString(8,dt1);
	
	int j=ps1.executeUpdate();
	
		if (j>0)
		{             
			
			System.out.println("second record updated");
                          			
	
		}
		else
		{	System.out.println("Sorry");
			
		}


	ps2=con.prepareStatement("insert into seek_resume values(?,?,?,?,?,?)");

	ps2.setInt(1,sn2);
	ps2.setString(2,st13);
	ps2.setString(3,st14);
	ps2.setString(4,st15);
	ps2.setString(5,st16);
	ps2.setDouble(6,dt2);
	
	int k=ps2.executeUpdate();
	
		if (k>0)
		{             
			
			System.out.println("third record updated");
                          			
	
		}
		else
		{	System.out.println("Sorry");
			
		}



	ps3=con.prepareStatement("insert into seek_edu values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

	ps3.setInt(1,sn2);
	ps3.setString(2,st17);
	ps3.setString(3,st18);
	ps3.setString(4,st19);
	ps3.setDouble(5,dt3);

	ps3.setString(6,st20);
	ps3.setString(7,st21);
	ps3.setString(8,st22);
	ps3.setDouble(9,dt4);

	ps3.setString(10,st23);
	ps3.setString(11,st24);
	ps3.setString(12,st25);
	ps3.setDouble(13,dt5);

	ps3.setString(14,st26);
	ps3.setString(15,st27);
	ps3.setString(16,st28);
	ps3.setDouble(17,dt6);

	
	int l=ps3.executeUpdate();
	
		if (l>0)
		{             
			
			System.out.println("fourth record updated");
                          			
	
		}
		else
		{	System.out.println("Sorry");
			
		}




	ps4=con.prepareStatement("insert into seek_login values(?,?,?,?)");

	ps4.setInt(1,sn2);
	ps4.setString(2,st29);
	ps4.setString(3,st31);
	ps4.setString(4,st32);
	
	
	
	int m=ps4.executeUpdate();
	
		if (m>0)
		{             
			
			System.out.println("fifth record updated");
                          			
	
		}
		else
		{	System.out.println("Sorry");
			
		}


        if(i>0 && j>0 && k>0 && l>0 && m>0)
	{	
		
		response.sendRedirect("sreg.jsp");
	}
	else
	{
		out.println("Sorry..! Please Try Again");		
	}

}	
catch(Exception e)
{
 System.out.println("error"+e);
}
/*finally
{
	rs.close();
	ps.close();
	ps1.close();
	ps2.close();
	ps3.close();
	ps4.close();
	ps5.close();
	st.close();
	con.close();
}*/
%>