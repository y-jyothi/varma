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
	<form action="/getBookingDetails" method=get>
		<div class="container">
			<div>
				<label>Select User :</label> <select name="userId">
					<c:forEach var="user" items="${users}">
						<option value="${user.userId}">${user.userName}</option>
					</c:forEach>
				</select>

			</div>

			<div class="form-group">
				<label for="date">DOJ:</label> <input type="date"
					class="form-control item" name="dateOfJourney" id="dateOfJourney">
			</div>
			<span style="color:red">${alert}</span><br>

			<div>
				<button type="submit" class="btn-success create button">Book</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/">Back</a><br>
			</div>
		</div>
	</form>

	<c:if test="${bookings != null }">

		<table class="table-active" border="2" width="70%" cellpadding="2">
			<tr>
				<th>USER NAME</th>
				<th>TRAVELLING TO</th>
				<th>DESTINATION</th>
				<th>PRICE</th>
				<th>UPDATE</th>
				<th></th>
			</tr>
			<c:forEach var="b" items="${bookings}">

				<tr class="info">
					<td>${b.getUsers().getUserName()}</td>
					<td>${b.formAddress}</td>
					<td>${b.toAddress}</td>
					<td>${b.price}</td>
					<td><a href="/update/${b.bookingId}">Update</a>
				</tr>

			</c:forEach>
		</table>

	</c:if>
</body>
</html>