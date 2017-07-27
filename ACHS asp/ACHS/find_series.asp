<!DOCTYPE html>
<html>
<head>
	<title>Wap to print the following series.</title>
</head>
<body>
	<h1>Wap to print the following series</h1>
	<ol type="a">
		<li>2, 8, 18,... 10<sup>th</sup></li>
		<li>3, 12, 27,... 10<sup>th</sup></li>
	</ol>
	<%
		for i = 1 to 10
			Response.write( i * (i * 2) & "<br>")
		next

		for i = 1 to 10 
			Response.write( i * (i * 2) & "<br>")
		next
	%>
</body>
</html>