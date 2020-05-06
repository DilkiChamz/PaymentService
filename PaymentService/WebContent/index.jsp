<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Payment"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/Main.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>PAYMENTS MANAGEMENT</h1>
				<form id="formPayment" name="formPayment" method="post"
					action="index.jsp">
					Payment ID: <input id="paymentID" name="paymentID" type="text"
						class="form-control form-control-sm"> <br> Card Type:
					<input id="cardType" name="cardType" type="text"
						class="form-control form-control-sm"> <br> Amount: <input
						id=amount name="amount" type="text"
						class="form-control form-control-sm"> <br> Card No: <input
						id="cardNo" name="cardNo" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidPaymentIDSave" name="hidPaymentIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success">
					<%
						out.print(session.getAttribute("statusMsg"));
					%>
				</div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divPaymentsGrid">
					<%
						Payment paymentObj = new Payment();
						out.print(paymentObj.readPayments());
					%>
				</div>


			</div>
		</div>
	</div>










</body>
</html>