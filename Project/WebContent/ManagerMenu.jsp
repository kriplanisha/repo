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
				<!--    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
                    </button>
   
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

		</div>
	</header>
            <% if(session.getAttribute("user_login")==null)
  {
   response.sendRedirect("EmpLogin.jsp");
  
  }%>

	<!--
            ==================================================
            Portfolio Section Start
            ================================================== -->
	<section id="works" class="works">
		<div class="container">
			<div class="section-heading">
				<h1 class="title wow fadeInDown" data-wow-delay=".3s">Manager
					Menu</h1>
				<p class="wow fadeInDown" data-wow-delay=".5s"></p>
			</div>

			<div class="row" width="10px">
			
				<div class="col-sm-2 col-xs-8" align="center">
				</div>
				<div class="col-sm-3 col-xs-8" align="center">
					<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
						<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
							<div class="img-wrapper">
								<img src="customer-login.jpg" height="10px width=" 10px" class="img-responsive" alt="this is a title" align="center">
								<div class="overlay">
									<div class="buttons">
										<a rel="gallery" href="try.jsp">Create</a>
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="try.jsp">Create Customer</a>
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
										<a rel="gallery" class="fancybox" href="Cust_Update.jsp">Update</a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="Cust_Update.jsp">Update Customer</a>
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
										<a rel="gallery" class="fancybox" href="create_acc.jsp">Create</a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="create_acc.jsp">Create Account</a>
								</h4>
							</figcaption>
						</figure>
					</figure>
				</div>
				
					<div class="col-sm-3 col-xs-8" align="center">
					</div>
				<div class="col-sm-3 col-xs-8" align="center">
					<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
						<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
							<div class="img-wrapper">
								<img src="customer-login.jpg" class="img-responsive" alt="this is a title" align="center">
								<div class="overlay">
									<div class="buttons">
										<a rel="gallery" class="fancybox" href="Cust_Update1.jsp">Activate / Deactivate</a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="Cust_Update1.jsp">Activate/Deactivate Customer</a>
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
										<a rel="gallery" class="fancybox" href="acc(act-dact).jsp">Activate/Deactivate </a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							
							<figcaption>
								<h4>
									<a href="acc(act-dact).jsp">Activate / Deactivate Account</a>
								</h4>

							</figcaption>
							</figure>
						</figure>
						
				</div>
<!-- 
				<div class="col-sm-3 col-xs-8" align="center">
					<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
						<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
							<div class="img-wrapper">
								<img src="customer-login.jpg" class="img-responsive" alt="this is a title" align="center">
								<div class="overlay">
									<div class="buttons">
										<a rel="gallery" class="fancybox" href="images/customer-login.jpg">View</a>
										<a target="_blank" href="single-portfolio.html">Register</a>
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="#"> Customer Status</a>
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
										<a rel="gallery" class="fancybox" href="images/customer-login.jpg">View</a>
										<a target="_blank" href="single-portfolio.html">Register</a>
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="#"> Account Status</a>
								</h4>
							</figcaption>
						</figure>
					</figure>
				</div>
				 -->
			</div>
		</div>
	</section>
	
	
	<!--
            ==================================================
            Call To Action Section Start
            ================================================== -->
	<!--  <section id="call-to-action"></section>
            
           
		
            
            ==================================================
            Footer Section Start
            ==================================================
            <footer id="footer">
                <div class="container">
                    <div class="col-md-8">
                        <p class="copyright">Copyright: <span>2017</span> . Design and Developed by Crazy Project Group</p>
                    </div>
                   
                </div>
            </footer> /#footer -->

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
	<!-- <section id="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block"></div>
				</div>

			</div>
		</div>

	</section> -->
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
</body>
</html>