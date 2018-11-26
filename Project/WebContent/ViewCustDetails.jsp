<%@page import="com.bean.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>SICURO BANK</title>

<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/main1.css">
<link rel="stylesheet" href="css/main.css">

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
						<li><a href="CustomerMain.jsp">Home</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="logoutserv2">Logout</a></li>

					</ul>
				</div>
			</nav>

		</div>
	</header>


	<!--
            ==================================================
            Portfolio Section Start
            ================================================== -->
                   <% if(session.getAttribute("user_login")==null)
					  {
					    response.sendRedirect("LoginCustomer.jsp");
					  
					  }%>
	<section id="works" class="works">

		<div class="container" background="bgpic.jpg">
			<div class="section-heading">
				<h1>CUSTOMER DETAILS</h1>
				<p class="wow fadeInDown" data-wow-delay=".5s">
					<div class="panel-heading">
					<div class="panel-title text-center">
	               				<hr />
	               			</div>
	            		</div> 
						<div class="main-login1 main-center1">
				
							<%
								if (request.getAttribute("customer") != null) {
									Customer cust = (Customer) request.getAttribute("customer");
							%>
				<br><br>
				<table border='3' width='100%'>

				<tr>
					<th>Customer ID</th>
					<th>SSN ID</th>
					<th>Age</th>
					<th>Address</th>
					<th>City</th>
					<th>State</th>
				</tr>
				<tr>
					<td>
						<%
							out.print(cust.getCustId());
						%>
					</td>
					<td>
						<%
							out.print(cust.getSsn());
						%>
					</td>
					<td>
						<%
							out.print(cust.getAge());
						%>
					</td>
					<td>
						<%
							out.print(cust.getAdd1() + "" + "" + cust.getAdd2());
						%>
					</td>
					<td>
						<%
							out.print(cust.getCity());
						%>
					</td>
					<td>
						<%
							out.print(cust.getState());
						%>
					</td>
				</tr>


			</table>



			<%
				}
			%>



<br><br>
		</div>
	
	</section>


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
                    <p class="copyright">Copyright &copy <span>2017</span> . Design and Developed by G2 Project Group</p>
                </div>
                   
            </div>
        </footer> <!-- /#footer -->
              
       
</html>