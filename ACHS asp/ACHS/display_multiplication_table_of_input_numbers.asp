<!DOCTYPE html>
<html>
<head>
	<title>Write an ASP Sctipt to display multiplication table of input numbers.</title>
</head>
<body>
	<%

	%>
	<h1>Write an ASP Sctipt to display multiplication table of input numbers.</h1>
	<form method="POST" action="display_multiplication_table_of_input_numbers.asp">
		<input type="number" name="number">
		<input type="submit" name="submit" value="Display">
	</form>
	<%
		Dim number
		Dim pro
		Dim num

		number = Request.form("number")
		num = Int(number)

		for i = 1 to 10
			pro = i * num
			Response.write(num & "x" & i & "=" & pro & "<br>")
		next

	%>
</body>
</html>