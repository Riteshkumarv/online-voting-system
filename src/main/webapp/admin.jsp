<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin login</title>
<link rel="stylesheet"type="text/css"href="styles.css">
</head>
<%@ include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action = "AdminLogin" method = "post">
<h3>Admin Login</h3>

<label for="username">Name</label>
<br>
<input name="aname"id="username" type="text">
<br>
<label for="password">Password</label>
<br>
<input name="password"id="password" type="password">
<br>
<button type="submit"> Login</button> 

</form>
</div>
</body>
</html>