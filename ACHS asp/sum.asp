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
num1=Request.QueryString("fnum")
num2=Request.QueryString("snum")
sum=CInt(num1)+CInt(num2)
Response.Write("Sum="&sum)
%>
<form action="sum.asp" method="GET">
	Enter First Number:<input type="text" name="fnum"/><br/>
	Enter SEcond Number:<input type="text" name="snum"/><br/>
	<input type="submit" name="submit" value="submit" /><br/>
</form>
</body>
</html>