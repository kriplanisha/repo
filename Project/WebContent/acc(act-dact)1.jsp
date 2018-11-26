<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<link rel="stylesheet" href="css/update.css">
        <link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" type="text/css" href="css/main1.css">
		
	
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
                            <li><a href="ManagerMenu.jsp" >Home</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="EmpLogin.jsp">LogOut</a></li>
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
                        <h1 class="title wow fadeInDown" data-wow-delay=".3s"> Account Details</h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
                           
						
					<!--	<div class="container">
			<div class="row main">-->
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
				
				
	<!-- FORM STARTS HERE -->
	                         <% if(session.getAttribute("user_login")==null)
  {
    response.sendRedirect("EmpLogin.jsp");
  
  }%>
					<form class="form-horizontal" method="post" action="AccDeactController">
						<%
				ResultSet rs = (ResultSet) request.getAttribute("res");
			%><%if(!rs.next()){ %>Sorry! Cannot Activate Account Directly.Please Activate Customer First. <%} else{ %>
			<%
				do {
			%>	
						<div class="form-group">
							<label for="cust_Id" class="cols-sm-2 control-label">Customer Id</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="custid" id="custid"   value="<%=rs.getLong(1)%>" readonly/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="acc_id" class="cols-sm-2 control-label"> Account Id</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="Account_Id" id="Account_Id"  value="<%=rs.getLong(2)%>" readonly/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="acc_type" class="cols-sm-2 control-label">Account Type</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="acc_type" id="acc_type"  value="<%=rs.getString(3)%>" readonly/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="bal" class="cols-sm-2 control-label">Balance </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="bal" id="bal" value="<%=rs.getFloat(4)%>" readonly/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="startdate" class="cols-sm-2 control-label">Account Opening Date</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="startdate" id="startdate" value="<%=rs.getString(5)%>" readonly/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="enddate" class="cols-sm-2 control-label">Account Deactivation Date</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="enddate" id="enddate"  value="<%=rs.getString(6)%>" readonly/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="status">Status</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="status" id="status"  value="<%=rs.getString(7)%>" readonly/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="lastupdate" class="cols-sm-2 control-label">Last Update</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="lastupdate" id="lastupdate"   value="<%=rs.getString(8)%>" readonly/>
								</div>
							</div>
						</div>
						
						<%}while (rs.next()); %>	<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Activate / Deactivate">
						</div><%} %>
					
						
					
						<!--<div class="login-register">
				            <a href="index.php">Login</a>
				         </div>
						-->
					</form>
				</div>
				<br>
			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
						
						

			

					</p>
				</div>
				
			</div>
			                        
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