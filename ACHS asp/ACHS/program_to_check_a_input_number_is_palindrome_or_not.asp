<!DOCTYPE html>
<html>
<head>
	<title>Program to check a input number is palindrome or not</title>
</head>
<body>
	<h1>Program to check a input number is palindrome or not</h1>
	<form method="POST" action="program_to_check_a_input_number_is_palindrome_or_not.asp">
		Enter the number
		<input type="text" name="number" hint="Principle"><br>		
	</form>
	<%
		Dim number
		Dim back_number
		number = Request.form("number")

		back_number = number mod 10
		back_number = back_number * 10
		Response.write(back_number)
	%>
</body>
</html>