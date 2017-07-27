<%@ Language=VBScript %>
<html>
<head>
</head>
<body>
<%
Response.Write("First Name: " & Request.QueryString("txtFirstName") & "<br>")
Response.Write("Last Name: " & Request.QueryString("txtLastName") & "<br>")
%>
</body>
</html>