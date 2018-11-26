<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
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
    
    <% Long userid=(Long) session.getAttribute("user_login"); %>  
       
        <!--
        ==================================================
        Header Section Start
        ================================================== -->
        <header id="top-bar" class="navbar-fixed-top animated-header">
            <div class="container">
                <div class="navbar-header">
             
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
                            <li><a href="index.html" >Home</a></li>
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
            <section id="works" class="works" >
            
                <div class="container" background="bgpic.jpg">
                    <div class="section-heading">
                        <h1> CUSTOMER MENU</h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
               			<div class="panel-heading">
	               			<div class="panel-title text-center">
	               				<hr />
	               			</div>
	            		</div> 
					
					
					<div class="col-sm-1 col-xs-5" align="center"></div>
					
               
				<div class="col-sm-3 col-xs-8" align="center">
					<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
						<figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
							<div class="img-wrapper">
								<img src="customer-login.jpg" class="img-responsive" alt="this is a title" align="center">
								<div class="overlay">
									<div class="buttons">
										<a rel="gallery" class="fancybox" href="ViewCustomerDetails?userid=<%=userid%>">View </a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="ViewCustomerDetails?userid=<%=userid%>">View Details</a>
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
										<a rel="gallery" class="fancybox" href="ViewAccountDetails?userid=<%=userid%>">View </a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="ViewAccountDetails?userid=<%=userid%>">Accounts & Transactions</a>
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
										<a rel="gallery" class="fancybox" href="AccountStatement.jsp">View</a>
										<!-- <a target="_blank" href="single-portfolio.html">Register</a>-->
									</div>
								</div>
							</div>
							<figcaption>
								<h4>
									<a href="AccountStatement.jsp">Mini Statement</a>
								</h4>
							</figcaption>
						</figure>
					</figure>
				</div>
	
	
	
	
	
	
	
	
                 
					</div>
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