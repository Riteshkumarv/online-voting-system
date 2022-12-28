<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome voter</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<%@ include file="navbar.jsp" %>
<body>



<div class="form-container">
<div class="voterwel">
<form action = "Vote" method="post">
<h3>Welcome Voter</h3>

<label for="EnterNumber">Enter Your Voter Card Number</label>
<br>
<input name="vNumber"id="EnterNumber" type="text">
<br>

 <label for="partie">Choose a partie:</label>

<select name="partie" id="partie">
  <option value="AAp">AAP</option>
  <option value="bjp">BJP</option>
  <option value="bsp">BSP</option>
  <option value="Congress">Congress</option>
   <option value="Cpi">CPI</option>
</select> 

<button type="submit">submit</button>
</form>
</div>
</div>

</body>
</html>
