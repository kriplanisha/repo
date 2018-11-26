<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bean.Customer" %>
<%@page import= "java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function validateform()
{  
	var SSN_Id=document.myform.SSN_Id.value;  
	var name=document.myform.name.value.trim();
	var age=document.myform.age.value;  
	var add1=document.myform.add1.value.trim(); 
	var add2=document.myform.add2.value.trim(); 
	var state=document.myform.state.value.trim();
	var city=document.myform.city.value.trim();  

	var ssnid = /^\d{9}$/; 
	var custname=/^[A-Za-z]+$/;
	var ages=/^\d{3}$/;
	var addr1=/^[0-9a-zA-Z]+$/;
	var addr2=/^[0-9a-zA-Z]+$/;
	var city1=/^[A-Za-z]+$/;
	var state1=/^[A-Za-z]+$/;
	
	if(name.length==0)
	{
		alert("Enter Valid Name");
		return false;
	}	
	if(name.replace(/\s/g,'').length>0)
		{
		if(!name.replace(/\s/g,'').match(custname))
			{
			alert("Enter Valid name.");
			return false;
			}
		}
		
	if(SSN_Id.length==0||SSN_Id==" "||SSN_Id=="")
	{
	  	 alert("SSN Id cannot be empty");
	  	 return false;  
	} 
	
	if(!(SSN_Id.match(ssnid)))
	{
		if(isNaN(SSN_Id)){
			 alert("SSN Id cannot contain alphabets");
		  	 return false;
		}
		else{
		
		alert("SSN ID should be of 9 digit numeric!");
		}
		
	  	 return false;
	}

	if(age.length==0||age==" "||age=="")
	{
	  	 alert("Age cannot be empty");
	  	 return false;  
	} 
	if(!(age.match(ages)))
	{
	  	alert("age should be 3 letter numeric");
	  	return false;
	}	
	if(age<=18)
		{
		alert("age should be greater than 18");
	  	return false;
		}

	
	if(add1.length==0)
	{
		alert("Enter Valid Address");
		return false;
	}	
	if(add1.replace(/\s/g,'').length>0)
		{
		if(!add1.replace(/\s/g,'').match(addr1))
			{
			alert("Enter Valid Address.");
			return false;
			}
		}
	if(add2.length==0)
	{
		alert("Enter Valid Address");
		return false;
	}	
	if(add2.replace(/\s/g,'').length>0)
		{
		if(!add2.replace(/\s/g,'').match(addr2))
			{
			alert("Enter Valid Address.");
			return false;
			}
		}
		
	if(city.length==0)
	{
		alert("Enter Valid City");
		return false;
	}	
	if(city.replace(/\s/g,'').length>0)
		{
		if(!city.replace(/\s/g,'').match(city1))
			{
			alert("Enter Valid City.");
			return false;
			}
		}
	
	if(state.length==0)
	{
		alert("Enter Valid State");
		return false;
	}	
	if(state.replace(/\s/g,'').length>0)
		{
		if(!state.replace(/\s/g,'').match(state1))
			{
			alert("Enter Valid state.");
			return false;
			}
		}
	
}  
			</script>
</head>
<body><form action="UpdateController" method="post">
<center><h2><u>CUSTOMER DETAILS</u> </h2><br><br>
<% ResultSet rs = (ResultSet)request.getAttribute("result_set"); %>

<%while(rs.next()){%>
SSN ID : <input type="text" name="SSN_Id" value="<%= rs.getInt(1)%>" readonly><br><br>
CUST ID : <input type="text" name="custId" value="<%= rs.getInt(2)%>" readonly><br><br>
NAME : <input type="text" name="name" value="<%= rs.getString(3)%>"><br><br>
AGE : <input type="text" name="age" value="<%= rs.getInt(4)%>"><br><br>
ADD1 : <input type="text" name="add1" value="<%= rs.getString(5)%>"><br><br>
ADD2 : <input type="text" name="add2" value="<%= rs.getString(6)%>"><br><br>
CITY : <input type="text" name="city" value="<%= rs.getString(7)%>"><br><br>
STATE : <input type="text" name="state" value="<%= rs.getString(8)%>"><br><br>
STATUS : <input type="text" name="status" value="<%= rs.getString(9)%>" readonly><br><br>
LAST UPDATE : <input type="text" name="lastupd" value="<%= rs.getString(10)%>" readonly><br><br>
<%} %>
<input type="submit" value="Update">







<br><br><a href = "Update.jsp"> GO BACK TO HOME PAGE</a>
</center>
</body>
</html>