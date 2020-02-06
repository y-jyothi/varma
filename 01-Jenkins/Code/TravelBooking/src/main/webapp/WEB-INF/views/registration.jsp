<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<h1>User Registration</h1>
	</center>
	<form action="/submitdetails">



		<div class="form-group">
			<label for="customerName">Full Name:</label> <input type="text"
				class="form-control" id="userName" placeholder="Enter full name"
				name="userName">
			<p id="result" style="color: red"></p>
		</div>
		<div class="form-group">
			<label for="age">Age:</label> <input type="text" class="form-control"
				id="age" placeholder="Enter age" name="age">
			<p id="ageresult" style="color: red"></p>
		</div>
		<button type="submit" id="submit" class="btn btn-primary">Submit</button>
	</form>

</body>
<script>
	$.validator.addMethod("alp", function(value, element) {
		return this.optional(element) || /^[a-zA-Z ]*$/.test(value);

	});
	$('form').validate({
		rules : {
			userName : {
				required : true,
				alp : true
			},
			age : {
				required : true,
				range : [ 18, 100 ]

			}
		},
		messages:{
			"userName":{
				required:"please enter name",
				alp:"enter only alphabets"
			}
		}

	});
</script>
</html>