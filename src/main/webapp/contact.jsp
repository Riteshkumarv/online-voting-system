<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
<link rel="stylesheet"type="text/css"href="styles.css">
</head>
<%@ include file="navbar.jsp" %>
<body>

<div class="contact">
s
<form action = "Contact" method="post">

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
<label for="ucomments">Comments:</label>
<br>
<textarea name="ucomments"id="ucomments"></textarea>
<br>
<button type="submit">submit</button> 
<br>

</form>

</div>

</body>
</html>