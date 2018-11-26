<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>SICURO BANK</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<%  
String s=(String)request.getParameter("val");  
 
 
try{  
Class.forName("oracle.jdbc.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@INGNRGPILPHP01:1521:ORCLILP", "aja38core","aja38core");  
PreparedStatement ps=con.prepareStatement("select city from xyz_1 where state=?");  
ps.setString(1,s);  
ResultSet rs=ps.executeQuery();
%>

city:<select name="city">
<%
while(rs.next()){   %>
	
	
<option ><%=rs.getString(1) %></option>


<%} %>  
</select>
<% 
con.close();  
}catch(Exception e){e.printStackTrace();}  

%>  
</body>
</html>