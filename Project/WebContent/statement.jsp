<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        
        <!-- Template Javascript Files
        ================================================== -->
        <!-- modernizr js -->
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <!-- jquery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
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
                            <li><a href="cashiersecond.jsp" >Home</a></li>
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
            Global Page Section Start
        ================================================== -->
      <section id="works" class="works">

		<div class="container" background="bgpic.jpg">
			<div class="section-heading">
				<h1>GET ACCOUNT STATEMENT</h1>
				<p class="wow fadeInDown" data-wow-delay=".5s">
				<div class="panel-heading">
					<div class="panel-title text-center">
						<hr />
					</div>
				</div>
				<div class="main-login main-center">

        <!-- 
        ================================================== 
            Company Description Section Start
        ================================================== -->
        
        <form action="viewmini" target="_blank">
		        <% 
		        int accountid= (Integer)session.getAttribute("acc_ID");
		        %>
       
                           <div class="form-group" >
							<label for="id" class="cols-sm-2 control-label">Account Id</label>
							<div class="cols-sm-10" >
								<div class="input-group" >
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="id" id="id"  value="<%=accountid %>" readonly/>
								</div>
							</div>
						</div><br><br>
						<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">No. of Transactions</label>
						<div class="cols-sm-10">
							<div class="input-group">

								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <select name="type"
									class="form-control">
									<option value="1">1</option>
									<option value="1">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									

								</select>
							</div>
						</div>
					</div>
					<br><br>
						<div class="form-group ">
						<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Submit">
						</div>
						
                        </div>
                    </div>
                </div>
            </div>
        </section>

</form>
    
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

</body>
</html>