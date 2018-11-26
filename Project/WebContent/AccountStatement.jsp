<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/favicon.png">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Sicuro Bank</title>
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
<!-- owl carouserl js -->
<script src="js/owl.carousel.min.js"></script>
<!-- bootstrap js -->

<script src="js/bootstrap.min.js"></script>
<!-- wow js -->
<script src="js/wow.min.js"></script>
<!-- slider js -->
<script src="js/slider.js"></script>

<!-- template main js -->
<script src="js/main.js"></script>

<script>
function validateform()
{  
var id=document.myform.id.value.trim();  
  

var letterNumber = /^\d{9}$/;  



if(id.length==0)
{
alert("Accountid can not be empty \n please enter the Accountid ");
return false;
}
if(id!=0)
{
if(!(id.match(letterNumber)))
{
if(isNaN(id)){
	 alert("Account Id cannot contain alphabets");
  	 return false;
}
else{

alert("Account ID should be of 9 digit numeric!");
}

	 return false;
}
}

else if(id<0)
{
alert("Accountid should  not contain negative values");
return false;
}

else if(!(id.length==9))
{
		alert("Accountid should be exactly 9 digit numeric");
		return false;
		
}


}
</script>

</head>
<body>
	<%
		int userid = (Integer) request.getAttribute("userid");
	%>

	<!--
        ==================================================
        Header Section Start
        ================================================== -->
	<header id="top-bar" class="navbar-fixed-top animated-header">
	<div class="container">
		<div class="navbar-header">
		<div class="navbar-brand">
                        <a href="index.html" >
                            <img src="logo(6).png" alt="" style="margin-top:-13px">
                        </a>
                    </div>
		
			<!-- responsive nav button -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- /responsive nav button -->


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
		<!-- /main nav -->
	</div>
	</header>

	<!-- 
        ================================================== 
            Global Page Section Start
        ================================================== -->
	<section id="works" class="works">

	<div class="container" background="bgpic.jpg">
		<div class="section-heading">
			<h1>Account Statement</h1>
			<p class="wow fadeInDown" data-wow-delay=".5s">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<hr />
				</div>
			</div>
			<div class="main-login main-center">


				<%
					if (session.getAttribute("user_login") == null) {
						response.sendRedirect("EmpLogin.jsp");

					}
				%>

				<form action="AccountStatementDate" method="get" name="myform"	onsubmit="return validateform()">
														<div class="form-group">

										<label for="id" class="cols-sm-2 control-label">Account
											Id</label>
										<div class="cols-sm-10">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
													type="text" class="form-control" name="id" id="id"
													placeholder="Enter Id" required><br />
											</div>
										</div>

									</div>




									<div class="form-group">
										<label for="datepicker" class="cols-sm-2 control-label">Start
											Date</label>
										<div class="cols-sm-10">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
													type="text" class="form-control" name="sd" id="datepicker" required><br />
											</div>
										</div>
									</div>



									<div class="form-group">
										<label for="datepicker1" class="cols-sm-2 control-label">End
											Date</label>
										<div class="cols-sm-10">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
													type="text" class="form-control" name="ed" id="datepicker1" required><br />
											</div>
										</div>
									</div>


									<div class="form-group ">
										<input type="submit"
											class="btn btn-primary btn-lg btn-block login-button"
											value="submit">
									</div>


								</div>
							</div>
						</div>
					</div>
					</section>
				</form>


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
<!-- /#footer -->
<!-- /#footer -->

<link
	href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.4.0/lang/en-gb.js"></script>
<script type="text/javascript">
	/*$(function() {
	 $( "#datepicker" ).datepicker({ maxDate: 0
	 });


	 $( "#datepicker1" ).datepicker({maxDate: 0
	 })
	 });*/
	$(function() {

		/* global setting */
		var datepickersOpt = {
			dateFormat : 'mm-dd-yy',
			maxDate : 0,

		}

		$("#datepicker").datepicker($.extend({

			onSelect : function() {

				var date = $(this).datepicker('getDate');
				date.setDate(date.getDate() + 1); //add two days
				$("#datepicker1").datepicker("option", "minDate", date);
			}
		}, datepickersOpt));

		$("#datepicker1").datepicker($.extend({
			onSelect : function() {
				var maxDate = $(this).datepicker('getDate');
				maxDate.setDate(maxDate.getDate() - 1);
				$("#datepicker").datepicker("option", "maxDate", maxDate);
			}
		}, datepickersOpt));
	});
</script>
<!--date picker-->
</body>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="Stylesheet" type="text/css" />
<!-- <script async src="//jsfiddle.net/ZL2Bc/3064/embed/js,html,css,result/dark/"></script> -->
</body>
</html>