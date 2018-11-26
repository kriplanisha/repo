<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="changepassword2" method="post">
    SSNID:<br>
  <input type="text" name="ssnid" ><br>
  NAME:<br>
  <input type="text" name="ename"><br><br>
   AGE:<br>
  <input type="text" name="age"><br>
  CITY:<br>
  <input type="text" name="city"><br><br>
  
  <input type="submit" value="Submit">
</form>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bean.Customer" %>
    <%@page import= "java.sql.ResultSet" %>
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
		function validateform()
		{  
var digit1 = document.myform.ssnid.value;
			

			var phoneno = /^\d{9}$/;
			var ename=document.myform.ename.value.trim();
			var age=document.myform.age.value;  
			var city=document.myform.city.value.trim();  
	
			
			var custname=/^[A-Za-z]+$/;
			var ages=/^\d{3}$/;
			
			var city1=/^[A-Za-z]+$/;
		
			

			if (digit1 == " " || digit1 == "") {
				alert("SSN Id can not be empty \n please enter the SSN Id ");
				return false;
			} else if (!(digit1.match(phoneno))) {
				if (digit1 < 0) {
					alert(" SSN Id should  not contain negative values");
					return false;
				} else
					alert("SSN Id should contain nine digit numerics");
				return false;
			}
			
			if(ename.length==0)
			{
				alert("Enter Valid Name");
				return false;
			}	
			if(ename.replace(/\s/g,'').length>0)
				{
				if(!ename.replace(/\s/g,'').match(custname))
					{
					alert("Enter Valid name.");
					return false;
					}
				}
				
			/* if(ssnid.length==0||ssnid==" "||ssnid=="")
			{
				  
				
			  	 alert("SSN Id cannot be empty");
			  	 return false;
				  
			} 
			
			if(!(ssnid.match(SSNid)))
			{
				if(isNaN(ssnid)){
					 alert("SSN Id cannot contain alphabets");
				  	 return false;
				}
				else{
				
				alert("SSN ID should be of 9 digit numeric!");
				}
				
			  	 return false;
			} */
			
			
			


			
			
		/* 	if(customername.length==0||customername==" "||customername=="")
			{
				  
				
			  	 alert("Customer name cannot be empty");
			  	 return false;
				  
			} 
			if(!(customername.match(custname)))
			{
			  	 alert("customer name should be in alphabets");
			  	return false;	
		 	} */
			if(age.length==0||age==" "||age=="")
			{
				  
				
			  	 alert("Age cannot be empty");
			  	 return false;
				  
			} 
		/* 	if(!(age.match(ages)))
			{
			  	alert("age should be 3 letter numeric");
			  	return false;
			} */	
			if(age<18 || age>150){				
				
				alert("age should be greater than 17 and less than 151");
			  	return false;
				}
			
			
			
			if(city.length==0)
			{
				alert("Enter Valid City");
				return false;
			}	
			if(city.replace(/\s/g,'').length>0)
				{
				if(!city.replace(/\s/g,'').match(city1))
					{
					alert("Enter Valid City.");
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
                            <li><a href="#call-to-action">Contact</a></li>      
                            <li><a href="logoutserv">LogOut</a></li>
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
                        <h1> Confirm Details</h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
               			<div class="panel-heading">
	               			<div class="panel-title text-center">
	               				<hr />
	               			</div>
	            		</div> 
						<div class="main-login main-center">
				
			<!--  Form Starts Here -->
			
					<form class="form-horizontal"  action="changepassword2" method="post" onsubmit="return validateform()" name="myform">
						<%-- <% if(session.getAttribute("user_login")==null)
						  {
						    response.sendRedirect("EmpLogin.jsp");
						  
						  }%> --%>
						 <div class="form-group">
							<label for="ssnid" class="cols-sm-2 control-label">Confirm your SSN ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="ssnid" id="ssnid"  placeholder="Enter your SSN Id"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="ename" class="cols-sm-2 control-label">Confirm your name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="ename" id="ename"  placeholder="Enter Customer Name"/>
								</div>
							</div>
						</div>
						
						
						

						<div class="form-group">
							<label for="age" class="cols-sm-2 control-label">Confirm your age</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="age" id="age"  placeholder="Enter your Age"/>
								</div>
							</div>
						</div>

						
						
						
						<div class="form-group">
							<label for="city" class="cols-sm-2 control-label">Confirm your city</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="city" id="city"  placeholder="Enter City"/>
								</div>
							</div>
						</div>
						
						
						
						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Submit">
						</div>
						
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