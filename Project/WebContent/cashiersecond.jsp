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
table {

  width: 100%;
  max-width: 800px;
  height: 80px;
  border-collapse: collapse;
  border: 1px solid WHEAT;
  margin: 50px auto;
  text-align:center;
  background: white;
}
th {
  text-align:center;
  background: steelblue;
  height: 44px;
  width: 25%;
 
  
  color: white;
  border: 2px solid WHEAT;
 
 
}
td {
text-align:center;
  border: 2px solid WHEAT;
  padding: 10px;
  transition: all 0.2s;
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
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" type="text/css" href="css/main1.css">


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
<script src="js/main.js"></script>
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
						<li><a href="index.html">Home</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="logoutserv">Logout</a></li>

					</ul>
				</div>
			</nav>
			<!-- /main nav -->
		</div>
	</header>



	<section id="works" class="works">
		<br>
		<div class="container" background="bgpic.jpg">
			<div class="section-heading">
				<br>
				<h1> ACCOUNT DETAILS</h1>
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
              <% if(session.getAttribute("user_login")==null)
  {
    response.sendRedirect("EmpLogin.jsp");
  
  }%>

	
	<div class="container">
		<div class="main-login1 main-center1">   
	<table class="heavyTable">
	<tr>
<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer Id</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Account Id</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Account Type</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Balance </th>
	</tr>
	<tr>
	<td> <%= (Integer) session.getAttribute("cust_ID") %></td>
	<td> <%= (Integer) session.getAttribute("acc_ID") %></td>
	<td><%= (String) session.getAttribute("acc_TYPE") %></td>
	<td><%= (Integer) session.getAttribute("BALANCE") %></td>
	</tr>
	</table>
	</div>
	</div>
	<%-- <!-- <section id="works" class="works">
		<div class="container">
			<div class="section-heading">
				<h1 class="title wow fadeInDown" data-wow-delay=".3s">Account
					Details</h1>
				<p class="wow fadeInDown" data-wow-delay=".5s"></p>
			</div>

		 -->	<div class="row" width="10px">
				<div class="col-sm-3 col-xs-8" align="center">
					<figure class="wow fadeInLeft animated portfolio-item"
						data-wow-duration="500ms" data-wow-delay="0ms">
						<figure class="wow fadeInLeft animated portfolio-item"
							data-wow-duration="500ms" data-wow-delay="0ms">
							<div class="img-wrapper">
								<img src="customer-login.jpg" height="10px width="
									10px" class="img-responsive" alt="this is a title"
									align="center">
								<div class="overlay">
									<div class="buttons">
										<a rel="gallery" class="fancybox" href="deposit_cashier.jsp">Deposit</a>
>>>>>>> .r2717


				<div class="container">
					<div class="main-login1 main-center1">

						<table align="center" border="3">
							<tr>
								<th><h2>
										<b>&nbsp Customer Id &nbsp</b>&nbsp;
									</h2></th>
								<th><h2>
										<b>&nbsp Account Id &nbsp</b>&nbsp;
									</h2></th>
								<th><h2>
										<b>&nbsp Account Type &nbsp</b>&nbsp;
									</h2></th>
								<th><h2>
										<b>&nbsp Balance &nbsp</b>&nbsp;
									</h2></th>
							</tr>
							<tr>
								<td>
									<h3><%=(Integer) session.getAttribute("cust_ID")%></h3>
								</td>
								<td><h3>
										<%=(Integer) session.getAttribute("acc_ID")%></h3></td>
								<td><h3><%=(String) session.getAttribute("acc_TYPE")%></h3></td>
								<td><h3><%=(Integer) session.getAttribute("BALANCE")%></h3></td>
							</tr>
						</table>
					</div>
				</div>
				<br><br><br> --%>
<br><br><br>
				<div class="container">
					<div class="row" width="10px">
						<div class="col-sm-3 col-xs-8" align="center">
							<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
								<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
									<div class="img-wrapper">
										<img src="customer-login.jpg" height="10px width=" 10px" class="img-responsive" alt="this is a title" align="center">
										<div class="overlay">
											<div class="buttons">
												<a rel="gallery" class="fancybox" href="deposit_cashier.jsp">Deposit</a>

											</div>
										</div>
									</div>
									<figcaption>
										<h4>
											<a href="deposit_cashier.jsp">Deposit</a>
										</h4>

									</figcaption>
								</figure>
								</figure>
						</div>

						<div class="col-sm-3 col-xs-8" align="center">
							<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
								<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
									<div class="img-wrapper">
										<img src="customer-login.jpg" class="img-responsive" alt="this is a title" align="center">
										<div class="overlay">
											<div class="buttons">
												<a rel="gallery" class="fancybox" href="Withdraw.jsp">Withdraw</a>
												</div>
										</div>
									</div>
									<figcaption>
										<h4>
											<a href="Withdraw.jsp">Withdraw</a>
										</h4>
									</figcaption>
								</figure>
							</figure>
						</div>

						<div class="col-sm-3 col-xs-8" align="center">
							<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
								<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
									<div class="img-wrapper">
										<img src="customer-login.jpg" class="img-responsive" alt="this is a title" align="center">
										<div class="overlay">
											<div class="buttons">
												<a rel="gallery" class="fancybox"
													href="Transfer_cashier.jsp">Transfer</a>
												</div>
											</div>
										</div>
									<figcaption>
										<h4>
											<a href="Transfer_cashier.jsp">Transfer</a>
										</h4>
									</figcaption>
								</figure>
							</figure>
						</div>
						<div class="col-sm-3 col-xs-8" align="center">
							<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
								<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
									<div class="img-wrapper">
										<img src="customer-login.jpg" class="img-responsive" alt="this is a title" align="center">
										<div class="overlay">
											<div class="buttons">
												<a rel="gallery" class="fancybox" href="statement.jsp">Statement</a>
											</div>
										</div>
									</div>
									<figcaption>
										<h4>
											<a href="statement.jsp">Statement</a>
										</h4>

									</figcaption>
								</figure>
							</figure>
						</div>
					</div>
				</div>
			</section>


		</section>

	

	<!--
        ==================================================
            Call To Action Section Start
        ================================================== -->
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