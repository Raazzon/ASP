/*Write a ASP script to display multiplication of input number*/
<!DOCTYPE html>
<html>
<head>
	<title>Multiplication table</title>
</head>
<body>
	<%
	Dim num,i
	num=Request.QueryString("num")
	for i=1 to 10 Step 1
	num=Cint(num)*Cint(i)
	Next
	'Response.Write("num="&num)
	%>

	<form action="lab2a.asp" method="GET">
	Input the desired no:<input type="text" name="num"/><br/>
	</form>
</body>
</html>