<%@page import="java.io.PrintWriter"%>
<%@page import="com.bean.Transaction"%>
<%@page import="com.bean.Customer"%>
<%@page import="java.util.ArrayList"%>
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

<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

<link rel="stylesheet" href="css/main1.css">
<link rel="stylesheet" href="css/main.css">

</head>
<body>

	<%
		ArrayList<Transaction> trans = (ArrayList<Transaction>) request.getAttribute("trans");
	%>
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
				<li><a href="CustomerMain.jsp">Home</a></li>
			

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
	<section id="works" class="works">
	<div class="container">
		<div class="section-heading">
			<h1 class="title wow fadeInDown" data-wow-delay=".3s">
				Transaction History</h1>
			<p class="wow fadeInDown" data-wow-delay=".5s"></p>
		</div>

	<div class="main-login1 main-center1">
	<table id="example"  class="table  table-bordered" cellspacing="0" width="100%" style="color:white">
			<br>
			<thead>
				<tr>
					<th>Txn Date</th>
					<th>Txn Details</th>
					<th>Txn ID</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>

				<%
					for (Transaction t : trans) {
				%>
				<tr>
					<td><%out.print(t.getTrans_date());%></td>
					<%
						if (t.getMode().equalsIgnoreCase("transfer")) {
					%>
					<td><%out.print(t.getMode() + " to " + t.getD_acc_id());%></td>
					<%}
							if (t.getMode().equalsIgnoreCase("withdraw")) {
					%>
					<td><%out.print(t.getMode());%></td>
					<%}
							if (t.getMode().equalsIgnoreCase("deposit")) {
					%>
					<td><%out.print(t.getMode());%></td>
					<%}
					%>
					<td><%out.print(t.getTransID());%></td>
					<td><%out.print(t.getAmount());%></td>
				</tr>	<%}
					%>
				
			</tbody>
		</table>


		<center>
			<button onclick="myFunction()">Print this page</button>
		</center>


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
        </footer>
</body>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>

<script>
	function myFunction() {
		window.print();
	}
</script>

</html>