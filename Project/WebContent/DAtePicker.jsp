<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
 <title>SICURO BANK</title>

 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker1" ).datepicker();
  } );
  </script>
</head>
<body>



<form action="AccountStatementDate">
      <table>
      <tr><td>  Account Id </td><td><input type="text" name="id"></td>       
     <tr><td>  Start Date: </td><td><input type="text" id="datepicker" name ="sd"></td>       
      <tr><td> End Date :</td>   <td>   <input type="text"  id="datepicker1" name="ed"></td></tr>
       
      </table>
       <input type="submit" value="submit">
</form>

</body>
</html>