<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<link rel="stylesheet"type="text/css"href="styles.css">
</head>
<%@ include file="adminnavbar.jsp" %>
<body>
<div class="contact">

<form action="RegisterVoter" method="post">

<h3>Please fill the required details:</h3>

<label for="uname">Name:</label>
<br>
<input name="uname"id="uname" type="text">
<br>
<label for="uphonenumber">PhoneNumber:</label>
<br>
<input name="uphonenumber"id="uphonenumber" type="number">
<br>
<label for="uemail">Email:</label>
<br>
<input name="uemail"id="uemail" type="email">
<br>
<label for="card">Voter Card Number:</label>
<br>
<input name="card"id="card" type="text">
<br>
<label for="Address">Address:</label>
<br>
<input name="Address"id="Address" type="text">
<br>
<label for="date">Date Of Birth:</label>
<br>
<input name="date"id="date" type="date">
<br>
<button type="submit">register</button> 
<br>

</form>

</div>
</body>
</html>