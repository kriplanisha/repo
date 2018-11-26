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
			var SSN_Id=document.myform.SSN_Id.value;  
			var username=document.myform.username.value.trim();
			var age=document.myform.age.value;  
			var address1=document.myform.address1.value.trim(); 
			var address2=document.myform.address2.value.trim(); 
			var state=document.myform.state.value.trim();
			var city=document.myform.city.value.trim();  
	
			var ssnid = /^\d{9}$/; 
			var custname=/^[A-Za-z]+$/;
			var ages=/^\d{3}$/;
			var addr1=/^[0-9a-zA-Z]+$/;
			var addr2=/^[0-9a-zA-Z]+$/;
			var city1=/^[A-Za-z]+$/;
			var state1=/^[A-Za-z]+$/;
			
			if(username.length==0)
			{
				alert("Enter Valid Name");
				return false;
			}	
			if(username.replace(/\s/g,'').length>0)
				{
				if(!username.replace(/\s/g,'').match(custname))
					{
					alert("Enter Valid name.");
					return false;
					}
				}
				
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
			/* if(!(age.match(ages)))
			{
			  	alert("age should be 3 letter numeric");
			  	return false;
			}	 */
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
			
						
		
			
			if(address1.length==0)
			{
				alert("Enter Valid Address");
				return false;
			}	
			if(address1.replace(/\s/g,'').length>0)
				{
				if(!address1.replace(/\s/g,'').match(addr1))
					{
					alert("Enter Valid Address.");
					return false;
					}
				}
			if(address2.length==0)
			{
				alert("Enter Valid Address");
				return false;
			}	
			if(address2.replace(/\s/g,'').length>0)
				{
				if(!address2.replace(/\s/g,'').match(addr2))
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
                                <a href="ManagerMenu.jsp" >Home</a>
                            </li>
                            
                       
                            <li><a href="contact.html">Contact</a></li>
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
                        <h1> CUSTOMER DETAILS</h1>
                        <p class="wow fadeInDown" data-wow-delay=".5s">
                           
						
					<!--	<div class="container">
			<div class="row main">-->
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
				
			<!--  Form Starts Here -->
			
					<form name="myform" class="form-horizontal" method="post" action="UpdateController" onsubmit="return validateform()">
						
						<% ResultSet rs = (ResultSet)request.getAttribute("result_set"); %>
						<%if(!rs.next())
						{ %>
						<h2>Sorry! Customer is Already Deactivated or Not Present</h2>
						<%} else {%> 
						<%do{%>
						<div class="form-group">
							<label for="SSN_Id" class="cols-sm-2 control-label">SSN ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="SSN_Id" id="SSN_Id" value="<%= rs.getInt(1)%>" readonly/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="cust_id" class="cols-sm-2 control-label">CUST ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="custid" id="custid" value="<%= rs.getInt(2)%>"   readonly/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">NAME</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  value="<%= rs.getString(3)%>"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="age" class="cols-sm-2 control-label">AGE</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="age" id="age"  value="<%= rs.getInt(4)%>"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="address1" class="cols-sm-2 control-label">ADDRESS 1</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address1" id="address1"  value="<%= rs.getString(5)%>"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="address2" class="cols-sm-2 control-label">ADDRESS 2</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address2" id="address2" value="<%= rs.getString(6)%>"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="city" class="cols-sm-2 control-label">CITY</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="city" id="city"  value="<%= rs.getString(7)%>"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="state" class="cols-sm-2 control-label">STATE</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="state" id="state"  value="<%= rs.getString(8)%>"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="status" ">STATUS</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="status" id="status"  value="<%= rs.getString(9)%>" readonly/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="lastupdate" class="cols-sm-2 control-label">LAST UPDATE</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="lastupdate" id="lastupdate" value="<%= rs.getString(10)%>" readonly/>
								</div>
							</div>
						</div>
						
						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Update">
						</div><%}while(rs.next());%>
						<%} %>
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
              
        </body>
</html>