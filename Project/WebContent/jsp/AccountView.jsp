<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.Customer"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AccDeactController" method="post">
		<center>
			<h2>
				<u>Account DETAILS</u>
			</h2>
			<br> <br>
			<%
				ResultSet rs = (ResultSet) request.getAttribute("res");
			%>
			<%
				while (rs.next()) {
			%>
			Cust Id : <input type="text" name="custid" value="<%=rs.getLong(1)%>"
				readonly><br> <br> Acc Id: <input type="text"
				name="accid" value="<%=rs.getLong(2)%>" readonly><br> <br>
			Acc Type: <input type="text" name=type " value="<%=rs.getString(3)%>"
				readonly><br> <br> Balance : <input type="text"
				name="bal" value="<%=rs.getLong(4)%>" readonly><br> <br>
			Start Date: <input type="text" name="start"
				value="<%=rs.getString(5)%>" readonly><br> <br>
			End Date: <input type="text" name="end" value="<%=rs.getString(6)%>"
				readonly><br> <br> Status : <input type="text"
				name="status" value="<%=rs.getString(7)%>"> <input
				type="submit" value="Act/Deact"><br> <br> Last
			Updated : <input type="text" name="lastupd"
				value="<%=rs.getString(8)%>" readonly><br> <br>
			<%
				}
			%>
		
</body>
</html>