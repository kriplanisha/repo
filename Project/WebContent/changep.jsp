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

var pass=document.myform.pass.value;  
var letterNumber = /^[0-9a-zA-Z]+$/; 
var letNum = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*#?&.])[a-zA-Z\d$@$!%*?&.]{10,}/;


 
	if(pass==" " ||pass==""  )
		{
		alert("Password can not be empty \n Please enter the Password ");
		return false;
		}	
	 
	else if(pass.length< 10)
	   {
				alert("Password should be atleast 10 characters");
				return false;
				
	   }
	/* else if(!(pass.match(letNum)))
	   {
				alert("Password should contain atleast one uppercase, special character and one numeric");
				return false;
				
	   } */
	
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
				<div class="navbar-brand">
                        <a href="index.html" >
                            <img src="logo(6).png" alt="" style="margin-top:-13px">
                        </a>
                    </div>
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
                        <h1> UPDATE PASSWORD</h1>
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
            
 <form action="changepassword3" method="post" name="myform" onsubmit="return validateform()" >         
	

				<div class="form-group">
				
				    <label for="pass" class="cols-sm-2 control-label">New Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i 
							class="fa fa-envelope fa" aria-hidden="true"></i></span>
							 <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter New Password"><br/>  
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