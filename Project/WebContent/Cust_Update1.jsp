<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.Customer"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--  <link rel="icon" type="image/png" href="images/favicon.png"> -->
 <title>SICURO BANK</title>

<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/update.css">
<link rel="stylesheet" href="css/main.css">

<link rel="stylesheet" type="text/css" href="css/main1.css">
<script>
function validateform()
		{  
	var SSN_Id=0;
	var cust_id=0;
			 SSN_Id=document.myform.SSN_Id.value;
			 cust_id=document.myform.custid.value;
			var ssnid = /^\d{9}$/;
			
			
			if(SSN_Id==0 && cust_id==0)
				{
				alert("Please fill atleast one of the fields ");
				return false;
				}
			
			
			if(SSN_Id!=0)
				{
			if(!(SSN_Id.match(ssnid)))
			{
				if(isNaN(SSN_Id)){
					 alert("SSN Id cannot contain alphabets");
				  	 return false;
				}
				else{
				
				alert("SSN ID should be of 9 digit!");
				}
				
			  	 return false;
			}
				}
			
			if(cust_id!=0){
			if(!(cust_id.match(ssnid)))
			{
				
				if(isNaN(cust_id)){
					 alert("Customer Id cannot contain alphabets");
				  	 return false;
				}
				else{
			  	 alert("Customer ID should be of 9 digit!");
			  	 return false;
				}
			}	
			
		}
		}
		</script>	


</head>
<body>
	<!--
        ==================================================
        Header Section Start
        ================================================== -->
	<header id="top-bar" class="navbar-fixed-top animated-header">
	<div class="container">
		<div class="navbar-header">
			<!-- responsive nav button -->

			<!-- logo -->
			<div class="navbar-brand">
                        <a href="index.html" >
                            <img src="logo(6).png" alt="" style="margin-top:-13px">
                        </a>
                    </div>
			<!-- /logo -->


		</div>
		<!-- main menu -->
		<nav class="collapse navbar-collapse navbar-right" role="navigation">
		<div class="main-menu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="ManagerMenu.jsp">Home</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li><a href="logoutserv">LogOut</a></li>
			</ul>
		</div>
		</nav>

	</div>
	</header>


	<!--
            ==================================================
         			   Portfolio Section Start
            ================================================== -->
	<%
		if (session.getAttribute("user_login") == null) {
			response.sendRedirect("EmpLogin.jsp");

		}
	%>

	<section id="works" class="works"> 
	

	<div class="container" background="bgpic.jpg">
		<div class="section-heading">
		<br>
			<h1>CUSTOMER ACTIVATE/ DEACTIVATE</h1>
			<p class="wow fadeInDown" data-wow-delay=".5s">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<hr />
				</div>
			</div>
			<div class="main-login main-center">

				<!--  Form Starts Here -->

				<form class="form-horizontal" name="myform" action="View1Controller"
					method="post" onsubmit="return validateform()">
					<%
						if (session.getAttribute("user_login") == null) {
							response.sendRedirect("EmpLogin.jsp");

						}
					%>
				
					<div class="form-group">
						<label for="SSN_Id" class="cols-sm-2 control-label">SSN ID</label>
						<div class="cols-sm-10">
							
								<span><i class="fa fa-user fa" aria-hidden="true"></i></span> <input
									type="text" class="right form-control" name="SSN_Id"
									id="SSN_Id" placeholder="Enter the SSN Id"/>
						
						</div>
					</div>




					<div class="form-group">
						<label for="customer_id" class="cols-sm-2 control-label">Customer
							Id:</label>
						<div class="cols-sm-10">
							
								<span><i class="fa fa-users fa" aria-hidden="true"></i></span> <input
									type="text" class="right form-control" name="custid"
									id="custid" placeholder="Enter Customer Id" />
						
						</div>
					</div>

					<div class="form-group ">
						<input type="submit"
							class="btn btn-primary btn-lg btn-block login-button" value="Submit">
					</div>

				</form>


				<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
				<script
					src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
				<script
					src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
				<script>
					// just for the demos, avoids form submit
					/* jQuery.validator.setDefaults({
					  debug: true,
					  success: "View1Controller"
					}); */
					$("#myform").validate({
						rules : {
							SSN_Id : {
								require_from_group : [ 1, ".form-control" ]
							},
							custid : {
								require_from_group : [ 1, ".form-control" ]
							},

						}
					});
				</script>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/bootstrap.js"></script> <!--
        ==================================================
            Call To Action Section Start
        ================================================== --> </section> <section
		id="call-to-action">
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
<!-- /#footer -->

</html>