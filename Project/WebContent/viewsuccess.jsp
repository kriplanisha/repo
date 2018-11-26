<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>SICURO BANK</title>

<style>
			.header img {
		  float: left;
		  width: 100px;
		  height: 100px;
		  background: #555;
		  margin-left: 63px;
		  margin-top:5px;
		}
		
		.header h1 {
		  position: relative;
		  top: 44px;
		  left: -80px;
		}

</style>
</head>
		<div class="header">
		  <img src="logo(6).png" alt="logo" />     
		  <center>
		  <h1>Sicuro Bank, Gandhinagar</h1>
		  </center>
		</div>

<!-- <div class="navbar-brand">
                        <a href="index.html" >
                            <img src="logo(6).png" alt="" style="margin-top:-13px">
                        </a>
                    </div> -->
<body>

<center>
<br><br><br><br><br>
<h3>Transactions Details of Account Id:<%= request.getSession().getAttribute("acc_ID") %></h3><br>
<%
	ResultSet resultset = (ResultSet) request.getAttribute("result_set");
      int nooftrans = (Integer) request.getAttribute("no_of_trans");
%>
<table class="table"  BORDER="1">
	<tr>
	     <th>Transaction Id</th>
	      <th>Transaction Date</th>
	    <th>Customer Id</th>
	    <th>Account Id</th>
	    <th>Account Type</th>
	    
	    <th>Transaction Details</th>
	   
	    
	    
	</tr>
	
	<% while(resultset.next() && nooftrans>0){ %>
		<tr>
		      <td> <%= resultset.getInt(9) %></td>
		     <td> <%= resultset.getString(8) %></td>
		    <td> <%= resultset.getInt(1) %></td>
		    <td> <%= resultset.getInt(2) %></td>
		    <td> <%= resultset.getString(3) %></td>
		    <td> <%     String ss=null;
		           if(resultset.getInt(5)==0 && resultset.getString(10).equals("withdraw"))
		           {
		        	    ss="Amount "+resultset.getInt(4)+" is debited from the given Account ";
		        	   
		           }
		           
		           else if(resultset.getInt(5)==0 && resultset.getString(10).equals("deposit"))
		           {
		        	    ss="Amount "+resultset.getInt(4)+" is credited to the given Account ";
		        	   
		           }
		           else
		           {
		        	 ss="Amount "+resultset.getInt(4)+" is transferred to Account Id:"+resultset.getInt(6) + " ,Customer Id:"+resultset.getInt(5);
		           }
		           %>
		         <%=ss %>
		         
		         
		            </td>
		   
		   

		</tr>
            <%
            nooftrans--;
	         } 
            %>
        </table><br><br><br><br><br><br><br><br><br><br>
<button onclick="myFunction()">Print this page</button>
<br><br>

</center>


</body>
<script>
function myFunction() {
    window.print();
}
</script>
</body>


<!--
        ==================================================
            Call To Action Section Start
        ================================================== -->

	</section>
	<section id="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block"></div>
				</div>
			</div>
		</div>
</body>
<!--
        ==================================================
                      Footer Section Start
        ================================================== -->

<footer id="footer">
	<div class="container">
		<div class="col-md-8">
			<p class="copyright">
				Copyright &copy <span>2017</span> . Design and Developed by G2
				Project Group
			</p>
		</div>

	</div>
</footer>
</html>