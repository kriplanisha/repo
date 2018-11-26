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
                            <li>
                                <a href="index.html" >Home</a>
                            </li>
                            <li><a href="#">About</a></li>
                       
                            <li><a href="#">Contact</a></li>
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
                <div class="container">
                    <div class="section-heading">
                        <h1 class="title wow fadeInDown" data-wow-delay=".3s"> xyz </h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
                         <br/><br/></br>  
						<% 

   int customerid= (Integer)session.getAttribute("cust_ID");
   int accountid= (Integer)session.getAttribute("acc_ID");
 
    String accounttype= (String)session.getAttribute("acc_TYPE");
     
    %> 
    <%=customerid %>
    <%=accountid %>
    <%=accounttype%>
    
						</p>
					</div>
				
				</div>
			                        
    <!--
        ==================================================
            Call To Action Section Start
        ================================================== -->
          <section id="call-to-action"></section>
          <!--
        ==================================================
                      Footer Section Start
        ================================================== -->
        <footer id="footer">
            <div class="container">
                <div class="col-md-8">
                    <p class="copyright">Copyright: <span>2017</span> . Design and Developed by Crazy Project Group</p>
                </div>
                   
            </div>
        </footer> <!-- /#footer -->
                
        </body>
    </html>