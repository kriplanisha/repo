<!DOCTYPE html>
<html class="no-js">
<head>
<style>
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
function validateAmount(){
	
  	 var digit = document.form1.cid.value;
  	//var digit1 = document.form2.aid.value; 

  	 var phoneno = /^\d{9}$/; 
  	
  	 
  	  if(digit==" " ||digit==""  )
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
  	  
  	
         }
         function validateAmount1(){
      		var digit1 = document.form2.aid.value; 

      		 var phoneno = /^\d{9}$/; 
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
     		else{
     		alert("Account_id should contain nine digit numerics");
     		return false;
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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- /responsive nav button -->

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



	<!-- 
        ================================================== 
            Company Description Section Start
        ================================================== -->

	<section id="works" class="works">

		<div class="container" background="bgpic.jpg">

			<section class="company-description">
				<div class="container">
					<div class="section-heading">
						<h1>Get Account Details</h1>

						<p class="wow fadeInDown" data-wow-delay=".5s">
							<br /> <br /></br>
						<div class="row">
							<div class="col-sm-5">


								<div class="main-login main-center">
									<form name="form1" action="getyourserv" onsubmit="return validateAmount()">
										<div class="form-group">
											<label for="id" class="cols-sm-2 control-label">Customer
												Id</label>
											<div class="cols-sm-10">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-user fa" aria-hidden="true"></i></span> <input
														type="text" class="form-control" name="cid" id="cid"
														placeholder="Enter Customer Id" />
												</div>
											</div>
										</div>
										<br>

										<div class="form-group ">
											<input type="submit"
												class="btn btn-primary btn-lg btn-block login-button"
												value="Submit">
										</div>
									</form>
</div>
</div>
									<div class="col-sm-2">
										<div class="text-center">
											<h3>OR</h3>
										</div>
									</div>

									<div class="col-sm-5">
										<div class="main-login main-center">
											<form name="form2" action="checkcustomeridpresentactive" onsubmit="return validateAmount1()">
												<div class="form-group">
													<label for="id" class="cols-sm-2 control-label">Account
														Id</label>


													<div class="cols-sm-10">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="fa fa-user fa" aria-hidden="true"></i></span> <input
																type="text" class="form-control" name="aid" id="aid"
																placeholder="Enter Customer's Account Id" />
														</div>
													</div>
												</div>

												<br>
												<div class="form-group ">
													<input type="submit"
														class="btn btn-primary btn-lg btn-block login-button"
														value="Submit">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
			</section>



			<!--
        ==================================================
            Call To Action Section Start
        ================================================== -->
			<!--  <section id="call-to-action"></section> -->
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

