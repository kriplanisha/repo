<%@ page session="true"%>
<%@ include file="makecon.jsp" %>
<%
 Integer slogid=(Integer)session.getAttribute("resume");
%>
<% 
int s3=slogid.intValue();
System.out.println("seek_id:"+s3);
%>
<%! 	
	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%
	String st1="you are selected for the Online Test";
	String st2="you are not selected for the Online Test";
	String op=request.getParameter("D1");
	String op1="Accept";
	
%>
<%	
	if((op.compareTo(op1))==0)
	{
	ps= con.prepareStatement("insert into online_testlogin values(?,?)");
	ps.setInt(1,s3);	
	ps.setString(2,st1);
	int j=ps.executeUpdate();
	if(j>0)
		out.println("message has been sent...");
	else
		out.println("sorry...");	
	}
	else
	{
                ps= con.prepareStatement("insert into online_testlogin values(?,?)");
	ps.setInt(1,s3);	
	ps.setString(2,st2);
	int j=ps.executeUpdate();
	if(j>0)
		out.println("message has been sent..");
	else
		out.println("sorry...");	
	}
               
              Integer r1=new Integer(s3+1);
              session.setAttribute("resume",r1);
 %>
 <a href="resumeprocessing.jsp">Next Click Here</a>
	
 











	

