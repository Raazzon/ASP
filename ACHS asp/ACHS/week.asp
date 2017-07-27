<!DOCTYPE html>
<html>
<head>
	<title>Days Of Week</title>
</head>
<body>
	<%
	dim Day
	Day=Request.QueryString("Day")
	'Response.write(Day)
	if Day=1 then
		Response.Write("Sunday")
	else if Day=2 then
	Response.write("Monday")
	else if Day=3 then
	Response.write("Tuesday")
	else if Day=4 then
	Response.write("wednesday")
	else if Day=5 then
	Response.write("Thusday")
	else if Day=6 then
	Response.write("Friday")
	else if Day=7 then
	Response.write("Saturday")
	else
	Response.Write("Wrong Input")
end if
	%>
	<form action="week.asp" method="GET">
	Input the desired no of day:<input type="text" name="Day"/><br/>
	<input type="submit" name="submit" value="submit" /><br/>
		</form>
</body>
</html>