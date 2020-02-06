<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<div class="container Container">
<center><h1 style="color: white;">Travel Booking</h1></center>


<form class="form-inline md-form mr-auto mb-4">
<div class="add">
<div class="container">
<input type="submit" value="User Registration" id="add" class="btn btn-success" onclick="form.action='/adduser'">
<br>
<br>
<br>
<input type="submit" value="Travel Booking" id="add" class="btn btn-success" onclick="form.action='/booking'">
<br>
<br>
<br>
<input type="submit" value="View Booking Details " id="add" class="btn btn-success" onclick="form.action='/viewData'">
</div>
</body>
<style>
  .Container{
  background-image:url('/resources/images/img1.jpg');
  height: 600px;
  background-repeat: no-repeat;
  background-position: center;
  background-attachment: fixed;
  background-size: cover;
  }
</style>
</html>