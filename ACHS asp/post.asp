<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<%
Dim num1
Dim num2
Dim sum
num1=Request.Form("fnum")
num2=Request.Form("snum")
sum=CInt(num1)+CInt(num2)
Response.Write("Sum="&sum)
%>
<form action="post.asp" method="POST">
	Enter First Number:<input type="text" name="fnum"/><br/>
	Enter Second Number:<input type="text" name="snum"/><br/>
	<input type="submit" name="submit" value="submit" /><br/>
</form>
</body>
</html>