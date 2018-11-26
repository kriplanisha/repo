<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="changepassword" method="post">
  customer id:<br>
  <input type="text" name="customerid"><br>
  
  <input type="submit" value="Submit">
</form>


</body>
</html> --%>


<!DOCTYPE html>
<html class="no-js">
<head>

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
<script src="js/main.js"></script>

<script>  
function validateform()
{		
	/* var customerid=document.myform.customerid.value;
	var letterNumber = /^[0-9a-zA-Z]+$/; 
	   if(customerid==" " ||customerid=="")
		{
		alert("Customer Id can not be empty \n Please enter the Customer Id ");
		return false;
		}
	    else if(customerid<0)
		{
		alert("Customer Id should  not contain negative values");
		return false;
		}
	    else if(!(customerid.length==9))
		{
				alert("Customer Id should be exactly 9 digit numeric");
				return false;
				
		}
	    
	    else if(!(customerid.match(letterNumber)))
	     {
			  	 alert("Customer Id should be numeric");
			  	 return false;
			     
		 }
	    else if(customerid.charAt(0)=='+')
	    	{
	    		alert("Customer Id shoud be numeric");
	    	}
		
	   */
	   
	   
	
	// var digit = document.amount.cid.value;
	var digit1 = document.myform.customerid.value;
	

	var phoneno = /^\d{9}$/;


	if (digit1 == " " || digit1 == "") {
		alert("Customer Id can not be empty \n please enter the Customer Id ");
		return false;
	} else if (!(digit1.match(phoneno))) {
		if (digit1 < 0) {
			alert("Customer Id should  not contain negative values");
			return false;
		} else
			alert("Customer Id should contain nine digit numerics");
		return false;
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
						<li><a href="index.html">Home</a></li>
						<li><a href="contact.html">Contact</a></li>

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
	 <section id="works" class="works" >
            
                <div class="container" background="bgpic.jpg">
                    <div class="section-heading">
                        <h1> CHANGE PASSWORD</h1>
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
            
 <form action="changepassword" method="post" name="myform" onsubmit="return validateform()" >         
	

				<div class="form-group">
				
				    <label for="customerid" class="cols-sm-2 control-label">Customer Id</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i 
							class="fa fa-envelope fa" aria-hidden="true"></i></span>
							 <input type="text" class="form-control" name="customerid" id="customerid" placeholder="Enter Id"><br/>  
						</div>
					</div>
					
				</div>
			
			<!-- <div class="form-group">
					<label for="customerid" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-envelope fa" aria-hidden="true"></i></span> 
								<input type="password" class="form-control" name="customerid" id="customerid" placeholder="Enter password"><br/>  
						</div>
					</div>
				</div> -->
				
		<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Submit">
						</div>
			
			
                      
           
       
	</form>	
			<!--  <a href="enter_cus_id.jsp" style="color:red">Change Password</a> -->


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
        </footer>

</body>
</html>