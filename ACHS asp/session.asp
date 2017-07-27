<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<%
Dim user
user=Request.Form("username")
Dim password
password=Request.Form("password")
session("username")=user
Response.Redirect("session.asp")
%>
<form action="session.asp" method="POST">
	User:<input type="text" name="user"/><br/>
	Password:<input type="text" name="password"/><br/>
	<input type="Login" name="Login" value="Login" /><br/>
</body>
</html>