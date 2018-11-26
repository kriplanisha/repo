<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
 <title>SICURO BANK</title>
<!--<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">-->
<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/update.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/main1.css">
<!-- <script>
			var timeout =5;
			function timer()
			{
			     if( timeout-- > 0 )
			     {
			     document.forma.clock.value = timeout;
			     window.setTimeout( "timer()", 1000 );
			     }
			    else
			    {
				Redirect();
			    }
			
			}

		</script> -->
	

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
				<li><a href="cashiersecond.jsp">Home</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li><a href="logoutserv">Logout</a></li>
			</ul>
		</div>
		</nav>

	</div>
	</header>
	 <!--   <form name="forma">
     		Seconds remaining: <input type="text" name="clock"  style="border:0px solid white">
		</form>


		<script>

			timer();

			function Redirect() {
    			window.location="cashierfirst.jsp";
 			}
		</script>
 -->
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
	<div class="container">
		<div class="section-heading">
			<h1 class="title wow fadeInDown" data-wow-delay=".3s"></h1>
			<p class="wow fadeInDown" data-wow-delay=".5s">
				<br>
			<h2>Transaction Successful. Thank You!</h2>
			<br>
			<br>
			<br>
			<br>
			<br>
		<center>
				<div class="main-login3 main-center3">

					<table class="table" BORDER="1" >
						<tr>

							<th>Customer Id </th>
							<th>Source Account Id</th>
							<th>Account Type</th>
							<th>Target Account Id</th>
							<th>Target Account Type</th>
							<th>Source Account Balance Before Deposit</th>
							<th>Source Account Balance After Deposit</th>
							<th>Destination Account Balance Before Deposit</th>
							<th>Destination Account Balance After Deposit</th>




						</tr>

						<tr>
							<td><%=(Integer) request.getSession().getAttribute("cust_ID")%></td>
							<td><%=(Integer) request.getSession().getAttribute("acc_ID")%></td>
							<td><%=(String) request.getSession().getAttribute("acc_TYPE")%></td>

							<td><%=(Integer) request.getSession().getAttribute("Dacc_ID")%></td>
							<td><%=(String) request.getSession().getAttribute("Dacc_TYPE")%></td>

							<td><%=(Integer) request.getSession().getAttribute("BALANCE")%></td>
							<td><%=(Integer) request.getSession().getAttribute("BALANCE")
					- (Integer) request.getSession().getAttribute("AMT")%></td>


							<td><%=(Integer) request.getSession().getAttribute("DBALANCE")%></td>
							<td><%=(Integer) request.getSession().getAttribute("AMT")
					+ (Integer) request.getSession().getAttribute("DBALANCE")%></td>




						</tr>

					</table>

				</div>
		</center>
			</p>
		</div>

	</div>


	<!--
        ==================================================
            Call To Action Section Start
        ================================================== --> </section>
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
<!-- /#footer -->
</html>