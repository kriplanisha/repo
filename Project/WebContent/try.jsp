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
		
		<style>
			/* .navbar-nav{
				margin:-19.5px -48px !important;
			}  */       	
        	
        	* {
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
				margin-top:1.5px;
			}
		</style>
		<script>   
		function validateform()
		{  
			var SSN_Id=document.myform.SSN_Id.value;  
			var customername=document.myform.customername.value.trim();
			var age=document.myform.age.value;  
			var addrline1=document.myform.addrline1.value.trim(); 
			var addrline2=document.myform.addrline2.value.trim(); 
			var state=document.myform.state.value.trim();
			var city=document.myform.city.value.trim();  
	
			var ssnid = /^\d{9}$/; 
			var custname=/^[A-Za-z]+$/;
			var ages=/^\d{3}$/;
			var addr1=/^[0-9a-zA-Z]+$/;
			var addr2=/^[0-9a-zA-Z]+$/;
			var city1=/^[A-Za-z]+$/;
			var state1=/^[A-Za-z]+$/;
			
			if(SSN_Id.length==0||SSN_Id==" "||SSN_Id=="")
			{
				  
				
			  	 alert("SSN Id cannot be empty");
			  	 return false;
				  
			} 
			
			if(!(SSN_Id.match(ssnid)))
			{
				if(isNaN(SSN_Id)){
					 alert("SSN Id cannot contain alphabets");
				  	 return false;
				}
				else{
				
				alert("SSN ID should be of 9 digit numeric!");
				}
				
			  	 return false;
			}
			if(customername.length==0)
			{
				alert("Enter Valid Name");
				return false;
			}	
			if(customername.replace(/\s/g,'').length>0)
				{
				if(!customername.replace(/\s/g,'').match(custname))
					{
					alert("Enter Valid name.");
					return false;
					}
				}
				
			
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
			else if(isNaN(age))
				{
				alert("age should be numeric");
			  	return false;
				}
			else if(age.charAt(0)=="+")
			{
			alert("Enter valid age");
		  	return false;
			}
			
			
			
			
			
			if(addrline1.length==0)
			{
				alert("Enter Valid Address");
				return false;
			}	
			if(addrline1.replace(/\s/g,'').length>0)
				{
				if(!addrline1.replace(/\s/g,'').match(addr1))
					{
					alert("Enter Valid Address.");
					return false;
					}
				}
			if(addrline2.length==0)
			{
				alert("Enter Valid Address");
				return false;
			}	
			if(addrline2.replace(/\s/g,'').length>0)
				{
				if(!addrline2.replace(/\s/g,'').match(addr2))
					{
					alert("Enter Valid Address.");
					return false;
					}
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
			
			if(state.length==0)
			{
				alert("Enter Valid State");
				return false;
			}	
			if(state.replace(/\s/g,'').length>0)
				{
				if(!state.replace(/\s/g,'').match(state1))
					{
					alert("Enter Valid state.");
					return false;
					}
				}
			
		}  
</script>  
	
	<style >
	
		.required{
      color:red;
}
	</style>
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
                        <h1> REGISTRATION</h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
               			<div class="panel-heading">
	               			<div class="panel-title text-center">
	               				<hr />
	               			</div>
	            		</div> 
						<div class="main-login main-center">
				
			<!--  Form Starts Here -->
			
					 <form class="form-horizontal"  action="CreateController" method="post" onsubmit="return validateform()" name="myform">
					<%-- 	<% if(session.getAttribute("user_login")==null)
						  {
						    response.sendRedirect("EmpLogin.jsp");
						  
						  }%> --%>
						 <div class="form-group">
							<label for="SSN_Id" class="cols-sm-2 control-label">SSN ID <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="SSN_Id" id="SSN_Id"  placeholder="Enter your SSN Id"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="customername" class="cols-sm-2 control-label">Customer Name <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="customername" id="customername"  placeholder="Enter Customer Name"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="cutomerEmail" class="cols-sm-2 control-label">Email <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="email" class="form-control" name="cutomerEmail" id="cutomerEmail"  placeholder="Enter Customer Email"/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="age" class="cols-sm-2 control-label">Age <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="age" id="age"  placeholder="Enter your Age"/>
								</div>
							</div>
						</div>

						
						<div class="form-group">
							<label for="addrline1" class="cols-sm-2 control-label">Address Line1 <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="textarea" class="form-control" name="addrline1" id="addrline1"  placeholder="Enter Adress Line1"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="addrline2" class="cols-sm-2 control-label">Address Line2 <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="textarea" class="form-control" name="addrline2" id="addrline2"  placeholder="Enter Adress Line2"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="city" class="cols-sm-2 control-label">City <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="city" id="city"  placeholder="Enter City"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="state" class="cols-sm-2 control-label">State <span class="required">*</span></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="state" id="state"  placeholder="Enter State"/>
								</div>
							</div>
						</div>
						
						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Register">
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