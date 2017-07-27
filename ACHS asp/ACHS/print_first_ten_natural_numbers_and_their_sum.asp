<!DOCTYPE html>
<html>
<head>
	<title>Wap to print first then natural numbers and their sum</title>
</head>
<body>
	<h1>Wap to print first then natural numbers and their sim</h1>
	<%
		Dim sum
		for i = 1 to 10
			Response.write( i  & "<br>")
			sum = sum + i 

		next
		Response.write("<br>")
		Response.write("Sum = "& sum)
	%>
</body>
</html>