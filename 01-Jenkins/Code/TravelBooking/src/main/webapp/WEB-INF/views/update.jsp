<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<h1>Update Details</h1>
	</center>
	<form action="/updateDetails" method="post">
		<div class="container">
		
		
			<div class="form-group">
				<label> Source:</label> <input type="text" class="form-control item"
					name="formAddress" id="formAddress">
			</div>
			<div class="form-group">
				<label>Destination:</label> <input type="text" class="form-control"
					name="toAddress" id="toAddress">
			</div>
			<div class="form-group">
				<label for="distance">Distance:</label> <input type="text"
					class="form-control item" name="distance" id="distance">
			</div>
			
			<div>
				<button type="submit" class="btn-success create button" id="btn1">update</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/">Back</a><br>
			</div>
			<!-- <script type="text/javascript">
			$(document).ready(function() {
				$("#btn1").click(function() {
					console.log($("#formAddress").val());
					console.log($("#toAddress").val());
					console.log($("#distance").val());
					return false;
				});
			});			</script> -->
		</div>
	</form>

</body>
</html>