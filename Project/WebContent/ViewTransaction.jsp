<%@page import="java.io.PrintWriter"%>
<%@page import="com.bean.Transaction"%>
<%@page import="com.bean.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="css/main1.css">
<link rel="stylesheet" href="css/main.css">

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"> -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

<style>
.header img {
	float: left;
	width: 100px;
	height: 100px;
	background: #555;
	margin-left: 63px;
	margin-top: 7px;
}

.header h1 {
	position: relative;
	top: 44px;
	left: -80px;
}
</style>
</head>




<div class="header">
  <img src="logo(6).png" alt="logo" />
  <center>
  <h1>Sicuro Bank, Gandhinagar</h1>
  </center>
</div>
<body>

<br><br><br><br><br>
	<%
		ArrayList<Transaction> transaction = (ArrayList<Transaction>) request.getAttribute("transaction");
	%>

				<table id="example" class="table-bordered" cellspacing="0"	width="100%" style="color: black">
					<thead style="color: black">

						<tr>
							<th>Source Customer ID</th>
							<th>Source Account ID</th>
							<th>Source Account Type</th>
							<th>Amount</th>
							<th>Destination Account ID</th>
							<th>Transaction Date</th>
							<th>Transaction Id</th>
							<th>Txn Mode</th>
						</tr>
					</thead>

					<tbody style="color: black">
						<%
							for (Transaction t : transaction) {
						%>
						<tr>
							<td>
								<%
									out.print(t.getS_cust_id());
								%>
							</td>
							<td>
								<%
									out.print(t.getS_acc_id());
								%>
							</td>
							<td>
								<%
									out.print(t.getS_acc_type());
								%>
							</td>
							<td>
								<%
									out.print(t.getAmount());
								%>
							</td>
							<td>
								<%
									out.print(t.getD_acc_id());
								%>
							</td>
							<td>
								<%
									out.print(t.getTrans_date());
								%>
							</td>
							<td>
								<%
									out.print(t.getTransID());
								%>
							</td>
							<td>
								<%
									out.print(t.getMode());
								%>
							</td>
						</tr>
						<%
							}
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
			<p class="copyright">
				Copyright &copy <span>2017</span> . Design and Developed by G2
				Project Group
			</p>
		</div>

	</div>
</footer>
<!-- /#footer -->

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