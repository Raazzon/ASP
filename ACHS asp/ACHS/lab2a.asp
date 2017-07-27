
<!DOCTYPE html>
<html>
<head>
	<title>Multiplication table</title>
</head>
<body>
	<%
	Dim num,i,mul
	num=Request.QueryString("num")
	for i=1 to 10 Step 1
	mul=Cint(num)*Cint(i)
	Response.Write(num & "*" & i & "=" & mul & "<br/>")
	Next
	
	%>

	<form action="lab2a.asp" method="GET">
	Input the desired no:<input type="text" name="num"/><br/>
	<input type="submit" name="submit" value="submit" /><br/>
	</form>
</body>
</html>