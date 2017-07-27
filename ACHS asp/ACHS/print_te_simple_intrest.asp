<!DOCTYPE html>
<html>
<head>
	<title>Write an ASP Sctipt to display multiplication table of input numbers.</title>
</head>
<body>
	<%

	%>
	<h1>Write an ASP Sctipt to display multiplication table of input numbers.</h1>
	<form method="POST" action="print_te_simple_intrest.asp">
		Principle:
		<input type="number" name="principle" hint="Principle"><br>
		Time:
		<input type="number" name="time" hint="Time"><br>
		Rate:
		<input type="number" name="rate" hint="Rate"><br>

		<input type="submit" name="submit" value="Display"><br>
	</form>
	<%
		Dim principle
		Dim time
		Dim rate
		Dim simple_intrest

		principle = Request.form("principle")
		principle = Int(principle)

		time = Request.form("time")
		time = Int(time)

		rate = Request.form("rate")
		rate = Int(rate)

		simple_intrest = (principle * time * rate)/100

		Response.write(simple_intrest)

	%>
</body>
</html>