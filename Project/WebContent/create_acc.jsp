<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bean.Customer" %>
    <%@page import= "java.sql.ResultSet" %>
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
		
		<script >
function digitnumeric()
{
	var digit = document.table.custid.value;
	var digit1= document.table.depamt.value;
	
	 var phoneno = /^\d{9}$/; 
	
	if(digit==" " ||digit=="")
		{
		alert("Customer_id can not be empty \n please enter the Customer_id ");
		return false;
		}
	else if(!(digit.match(phoneno)))
		{
		if(digit<0)
		{
		alert("Customer_id should  not contain negative values");
		return false;
		}
		else{
		alert("Customer_id should contain nine digit numerics");
		return false;
		}
		
	}
	
	

  if(digit1==" " ||digit1=="")
		{
		alert("deposit amount can not be empty");
		return false;
		}
		
	   else if(digit1 < 0)
		{
		alert("Amount should  not contain negative values");
		return false;
		}
	   else if(isNaN(digit1))
	   {
			alert("Enter valid amount");
			return false;
			}
	  
	}</script>  
	
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
                            <li><a href="ManagerMenu.jsp" >Home</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="logoutserv">Logout</a></li>
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
         <section id="works" class="works" >
                <div class="container">
                    <div class="section-heading">
                        <h1> CREATE ACCOUNT</h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
                           
						
					<!--	<div class="container">
			<div class="row main">-->
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
				
			<!--  Form Starts Here -->
			
					<form name="table" action="createacc" onsubmit="return digitnumeric()">
						
						 <div class="form-group">
							<label for="SSN_Id" class="cols-sm-2 control-label">Customer Id</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <input type="text" class="form-control"
									name="custid" id="custid" placeholder="Enter customer id"
									 />
								</div>
							</div>
						</div>

						<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Deposit
							Amount</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <input type="number" class="form-control"
									name="depamt" id="depamt"
									placeholder="Enter deposit amount" />
							</div>
						</div>

					</div>

						<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Account
							Type</label>
						<div class="cols-sm-10">
							<div class="input-group">

								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <select name="acctype" id="acctype"
									class="form-control">
									<option value="savings">Savings</option>
									<option value="current">Current</option>

								</select>
							</div>
						</div>
					</div>


						
						
						
						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Submit">
						</div>
						<!--<div class="login-register">
				            <a href="index.php">Login</a>
				         </div>
						-->
					</form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
						
						

			

					</p>
				</div>
				
			</div>
			                        
    <!--
        ==================================================
            Call To Action Section Start
        ================================================== -->
          <!-- <section id="call-to-action"></section> -->
          
           </section>   
          <section id="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block"></div>
					<!-- <p class="copyright">Copyright &copy <span>2017</span> . Design and Developed by G2 Project Group</p> -->
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
                    <p class="copyright">Copyright &copy <span>2017</span> . Design and Developed by G2 Project Group</p>
                </div>
                   
            </div>
        </footer>
</html>