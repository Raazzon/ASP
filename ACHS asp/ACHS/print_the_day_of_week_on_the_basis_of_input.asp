<!DOCTYPE html>
<html>
<head>
	<title>Wap to print the day of week on the basis of input</title>
</head>
<body>
	<%

	%>
	<h1>Wap to print the day of week on the basis of input number entered by user between 1 and 7 usng if...then...else if..then else and switch statement</h1>
	<form method="POST" action="print_the_day_of_week_on_the_basis_of_input.asp">
		<p>Enter number between 1 to 7</p>
		<input type="number" name="number">
		<input type="submit" name="submit" value="Display">
	</form>
	<%
		Dim number
		Dim num
		
		number = Request.form("number")
		num = Int(number)

		Response.write("This is output form Switch case<br>")
		select case num
			case 1
				Response.write("Sunday<br>")
			case 2
				Response.write("Monday<br>")
			case 3
				Response.write("Tuesday<br>")
			case 4
				Response.write("Wednesday<br>")
			case 5
				Response.write("Thrusday<br>")
			case 6
				Response.write("Friday<br>")
			case 7
				Response.write("Saturday<br>")
			default
				Response.write("Not a valid day of week<br>")
		end select

		Response.write("This is output form If then else<br>")

		if num = 1 then
			Response.write("Sunday<br>")
		elseif num = 2 then
			Response.write("Monday<br>")
		elseif num = 3 then
			Response.write("Tuesday<br>")
		elseif num = 4 then
			Response.write("Wednesday<br>")
		elseif num = 5 then
			Response.write("Thrusday<br>")
		elseif num = 6 then
			Response.write("Friday<br>")
		elseif num = 7 then
			Response.write("Saturday<br>")
		else
			Response.write("Not a valid day<br>")
		end if
	%>
</body>
</html>