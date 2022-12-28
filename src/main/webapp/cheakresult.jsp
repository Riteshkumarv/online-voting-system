<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.sql.DriverManager" %>
    <%@page import = "java.sql.ResultSet" %>
    <%@page import = "java.sql.Statement" %>
    <%@page import = "java.sql.Connection" %>
    <%@page import = "java.sql.PreparedStatement" %>
    
   <%
   
   String a[]=new String[100];
   
   Class.forName("com.mysql.cj.jdbc.Driver");
   java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingDb","root","Ritesh2@");
   
   PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie)as c from vote group by partie");
   ResultSet rs = ((java.sql.Statement)preparedStatement).executeQuery("select partie,count(partie)as c from vote group by partie");
	
   int i=0;
   while(rs.next()){
   a[i] = rs.getString("c");
   i++;
   }
   %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<%@ include file="adminnavbar.jsp" %>
<body>
<div class="cheaktable">
<table>

<tr>
<th>
parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img alt="AAP" src="https://th.bing.com/th/id/OIP.iTg--8UCMesPZKy4zo04MwAAAA?pid=ImgDet&w=201&h=201&c=7&dpr=1.3">
</td>
<td>
Aam Aadmi Party
</td>
<td>
<%=a[4]==null?0:a[4]%>
</td>
</tr>

<tr>
<td>
<img alt="BJP" src="https://th.bing.com/th/id/OIP.Q0XqyfnzWbNBTRokg7OM5gHaHa?w=176&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7">
</td>
<td>
BJP
</td>
<td>
<%=a[0]==null?0:a[0]%>
</td>
</tr>

<tr>
<td>
<img alt="BSP" src="https://th.bing.com/th/id/OIP.9mRVsx4aGnTnWXPfsWweXQAAAA?pid=ImgDet&w=159&h=159&c=7&dpr=1.3">
</td>
<td>
BSP
</td>
<td>
<%=a[1]==null?0:a[1]%>
</td>
</tr>

<tr>
<td>
<img alt="CONGRESS" src="https://th.bing.com/th/id/OIP.GbAH9BWIKFPbUv3cVaDmlwHaHa?pid=ImgDet&w=201&h=201&c=7&dpr=1.3">
</td>
<td>
CONGRESS
</td>
<td>
<%=a[2]==null?0:a[2]%>
</td>
</tr>

<tr>
<td>
<img alt="CPI" src="https://th.bing.com/th/id/OIP.vcjjsWHV68uZOaKBJXd6HgHaHH?w=186&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7">
</td>
<td>
CPI
</td>
<td>
<%=a[3]==null?0:a[3]%>
</td>
</tr>


</table>
</div>
</body>
</html>