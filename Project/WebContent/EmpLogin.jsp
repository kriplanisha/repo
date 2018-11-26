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
	function validateform() {
		var user_id = document.myform.user_id.value;
		var password = document.myform.password.value;

		var letterNumber = /^[0-9a-zA-Z]+$/;
		var letNum = /^[0-9a-zA-Z]+$/;

		if (!(user_id.length == 9)) {
			alert("Id should be exactly 9 digit numeric");
			return false;

		} else if (!(user_id.match(letterNumber))) {
			alert("Id should be numeric and should not have any special characters");
			return false;

		}

		if (password.length < 10) {
			alert("Password should be atleast 10 characters");
			return false;

		} else if (!(password.match(letNum))) {

			alert("Password should be alphanumeric");
			return false;
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
				<li><a href="index.html">Home</a></li>
				<li><a href="#call-to-action">Contact</a></li>

			</ul>
		</div>
		</nav>

	</div>
	</header>


	<!--
            ==================================================
         			   Portfolio Section Start
            ================================================== -->
	<section id="works" class="works">

	<div class="container">
		<div class="section-heading">
			<h1>EMPLOYEE LOGIN</h1>
			<p class="wow fadeInDown" data-wow-delay=".5s">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<hr />
				</div>
			</div>

			<div class="main-login main-center">

				<!--  Form Starts Here -->

				<form class="form-horizontal" action="loginserv" method="post"
					name="myform" onsubmit="return validateform()">

					<div class="form-group">
						<label for="user_id" class="cols-sm-2 control-label">User
							Id</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
									type="text" class="form-control" name="user_id" id="user_id"
									placeholder="Enter Id"><br />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
									type="password" class="form-control" name="password"
									id="password" placeholder="Enter password"><br />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Type</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span> <select
									name="type" class="form-control">
									<option value="manager">Manager</option>
									<option value="cashier">Cashier</option>
								</select>
							</div>
						</div>
					</div>

					<div class="form-group ">
						<input type="submit"
							class="btn btn-primary btn-lg btn-block login-button"
							value="Login">
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
        ================================================== --> <!--  <section id="call-to-action"></section> -->
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
		<p class="copyright">
			Copyright &copy <span>2017</span> . Design and Developed by G2
			Project Group
		</p>
	</div>

</div>
</footer>
<!-- /#footer -->


</html>