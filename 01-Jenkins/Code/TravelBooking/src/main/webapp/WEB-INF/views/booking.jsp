<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
	integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
	crossorigin="anonymous"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<center>
		<h1>Booking Details</h1>
	</center>
	<form action="/addBooking" method=post>
		<div class="container">
			<div>
				<label>Select User :</label> <select name="userId">
					<c:forEach var="user" items="${users}">
						<option value="${user.userId}">${user.userName}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label> Form:</label> <input type="text" class="form-control item"
					name="formAddress" id="formAddress">
			</div>
			<div class="form-group">
				<label>To:</label> <input type="text" class="form-control"
					name="toAddress" id="toAddress">
			</div>
			<div class="form-group">
				<label for="date">DOJ:</label> <input type="date"
					class="form-control item" name="dateOfJourney" id="dateOfJourney">
			</div>
			<div class="form-group">
				<label for="distance">Distance:</label> <input type="number"
					class="form-control item" name="distance" id="distance">
			</div>

			<div class="form-group">
				<label for="foodpreference">Food Preference</label> <br> <input
					type="radio" name="foodPreference" value="veg"> Veg<br>
				<input type="radio" name="foodPreference" value="Non-veg">
				Non-veg<br>
			</div>
			<div class="form-group">
				<label for="travelling">Travelling Type:</label> <input
					type="checkbox" name="travellingType" value="visa"> visa <input
					type="checkbox" name="travellingType" value="passport">passport<br>
			</div>
			<div>
				<button type="submit" class="btn-success create button">Book</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/">Back</a><br>
			</div>
		</div>
	</form>


</body>
<script>
	$.validator.addMethod("alp", function(value, element) {
		return this.optional(element) || /^[a-zA-Z ]*$/.test(value);

	});
	$.validator.addMethod("dateOfJourney", function(value, element) {
		var curDate = new Date();
		var inputDate = new Date(value);
		if (inputDate > curDate)
			return true;
		return false;
	}, "Invalid Date!");

	$('form').validate({
		rules : {
			formAddress : {
				required : true,
				alp : true
			},
			toAddress : {
				required : true,
				alp : true
			},
			dateOfJourney:{
				required :true,
				dateOfJourney :true
			},
			distance:{
				required:true,
				range:[200,100000]
			},
			foodPreference:
			{
				required :true
			},
			travellingType:
			{
				required :true
			}
			
		},
		messages:{
			"formAddress":{
				required:"please enter name",
				alp:"enter only alphabets"
			},
			"toAddress":{
				required:"please enter name",
				alp:"enter only alphabets"
			},
		}

	});
</script>
</html>