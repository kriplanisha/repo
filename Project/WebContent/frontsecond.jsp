<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>SICURO BANK</title>
</head>
<body>
<center>
<%
ResultSet resultset=(ResultSet) request.getAttribute("result_rr");
int cust_id=(Integer) request.getAttribute("customer_realid");

%>

<form action="accdetailserv" >  
 Customer Id:<input type="text" name="first_customer_id" value=<%=cust_id %> readonly /><br/> <br><br>
        
     <select name="id"> 
      <%  while(resultset.next())
        { %> 
      
     <option> <%=resultset.getInt(1)%></option>
    
      <% }%>
       </select>
       
<input type="submit" value="submit"><br><br>

 </form>
</center>
</body>
</html>