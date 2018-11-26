<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.Customer"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>SICURO BANK</title>
</head>
<body>
	<form action="DeactController" method="post">
		<center>
			<h2>
				<u>CUSTOMER DETAILS</u>
			</h2>
			<br> <br>
			<%
				ResultSet rs = (ResultSet) request.getAttribute("result_set");
			%>
			<%
				while (rs.next()) {
			%>
			SSN ID : <input type="text" name="SSN_Id" value="<%=rs.getInt(1)%>"><br>
			<br> CUST ID : <input type="text" name="custid"
				value="<%=rs.getInt(2)%>"><br> <br> NAME : <input
				type="text" name="name" value="<%=rs.getString(3)%>"><br>
			<br> AGE : <input type="text" name="age"
				value="<%=rs.getInt(4)%>"><br> <br> ADD1 : <input
				type="text" name="add1" value="<%=rs.getString(5)%>"><br>
			<br> ADD2 : <input type="text" name="add2"
				value="<%=rs.getString(6)%>"><br> <br> CITY : <input
				type="text" name="city" value="<%=rs.getString(7)%>"><br>
			<br> STATE : <input type="text" name="state"
				value="<%=rs.getString(8)%>"><br> <br> STATUS : <input
				type="text" name="status" value="<%=rs.getString(9)%>"> <input
				type="submit" value="Act/Deact"> <br> <br> LAST
			UPDATE : <input type="text" name="lastupd"
				value="<%=rs.getString(10)%>"><br> <br>
			<%
				}
			%>







			<br> <br> <a href="Act-Deact.jsp"> GO BACK TO HOME PAGE</a>
</body>
</html>