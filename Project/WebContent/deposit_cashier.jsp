<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<style>
/* make sidebar nav vertical */
@media ( min-width : 768px) {
	.sidebar-nav .navbar .navbar-collapse {
		padding: 0;
		max-height: none;
	}
	.sidebar-nav .navbar ul {
		float: none;
		display: block;
	}
	.sidebar-nav .navbar li {
		float: none;
		display: block;
	}
	.sidebar-nav .navbar li a {
		padding-top: 12px;
		padding-bottom: 12px;
	}
}
</style>

<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
 <title>SICURO BANK</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Mobile Specific Metas
        ================================================== -->
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Ionicons Fonts Css -->
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- animate css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Hero area slider css-->
<link rel="stylesheet" href="css/slider.css">
<!-- owl craousel css -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<!-- template main css file -->
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/main1.css">
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css">

<!-- Template Javascript Files
        ================================================== -->
<!-- modernizr js -->
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jquery -->
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<!-- owl carouserl js -->
<script src="js/owl.carousel.min.js"></script>
<!-- bootstrap js -->

<script src="js/bootstrap.min.js"></script>
<!-- wow js -->
<script src="js/wow.min.js"></script>
<!-- slider js -->
<script src="js/slider.js"></script>
<script src="js/jquery.fancybox.js"></script>
<!-- template main js -->

<script>
	function validateAmount() {
		var x = document.amount.amt.value;
		/* var digit = document.amount.cid.value;
		var digit1 = document.amount.aid.value; */

		var phoneno = /^\d{9}$/;

		/*  if(digit==" " ||digit==""  )
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
		 */

		if (x == " " || x == "") {
			alert("Enter amount");
			return false;
		}

		else if (x <= 0) {
			alert("Amount should be greater than zero");
			return false;
		}

		else if (isNaN(x)) {
			alert("Enter valid amount");
			return false;
		}/*  else if (!Number.isInteger(x)) {
			alert("Enter amount in round figure");
			return false;
		} */

		/* 
		if(digit1==" " ||digit1==""  )
			{
			alert("Account_id can not be empty \n please enter the Account_id ");
			return false;
			}
		else if(!(digit1.match(phoneno)))
			{
			if(digit1<0)
			{
			alert("Account_id should  not contain negative values");
			return false;
			}
			else
			alert("Account_id should contain nine digit numerics");
			return false;
			}
		 */

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
				<!--   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->
				-->
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
						<li><a href="logoutserv">logout</a></li>
					</ul>
				</div>
			</nav>
			<!-- /main nav -->
		</div>
	</header>

	<!-- 
        ================================================== 
            Global Page Section Start
        ================================================== -->

	<section id="works" class="works">
		<br>
		<div class="container" background="bgpic.jpg">
			<div class="section-heading">
				<h1>Deposit</h1>
				<p class="wow fadeInDown" data-wow-delay=".5s">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<hr />
					</div>
				</div>
				<!-- 
        ================================================== 
            Company Description Section Start
        ================================================== -->
				<div class="main-login main-center">
					<form name="amount" class="form-horizontal" action="depositserv" onsubmit="return validateAmount()">

						<%
							int customerid = (Integer) session.getAttribute("cust_ID");
							int accountid = (Integer) session.getAttribute("acc_ID");

							String accounttype = (String) session.getAttribute("acc_TYPE");
						%>

						<div class="form-group">
							<label for="id" class="cols-sm-2 control-label">Customer
								Id</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <input type="text"
										class="form-control" name="cid" id="cid"
										value="<%=customerid%>" readonly />
								</div>
							</div>
						</div>
						<br> <br>

						<div class="form-group">
							<label for="id" class="cols-sm-2 control-label">Account
								Id</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <input type="text"
										class="form-control" name="aid" id="aid"
										value="<%=accountid%>" readonly />
								</div>
							</div>
						</div>
						<br> <br>

						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Account
								Type</label>
							<div class="cols-sm-10">
								<div class="input-group">

									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <input type="text"
										class="form-control" name="type" id="type"
										value="<%=accounttype%>" readonly />
								</div>
							</div>
						</div>
						<br> <br>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Amount
								to Deposit</label>
							<div class="cols-sm-10">
								<div class="input-group">

									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <input type="number"
										class="form-control" name="amt" id="amt"
										placeholder="Enter Amount to Deposit" />
								</div>
							</div>
						</div>
						<br> <br>
						<div class="form-group ">
							<input type="submit"
								class="btn btn-primary btn-lg btn-block login-button" value="Submit">
						</div>





					</form>

				</div>
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