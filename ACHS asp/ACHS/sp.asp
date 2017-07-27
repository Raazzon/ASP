<!DOCTYPE HTML>
<html>
<head>
	<title>Stored Procdure</title>
</head>
<body>
	<%
		dim sql,rs,conn,connString,name, address, gender, contact
		set conn = CreateObject("ADODB.Connection")
		connString = "PROVIDER=SQLOLEDB;DATA SOURCE=RAJAN;USER ID=sa;PASSWORD=rajan;INITIAL CATALOG=StudentInfo"
		conn.open connString
		sql = "Exec sp_Insert 'Shyam','ktm','male','9803066957'"
		conn.execute(sql)
	%>
</body>
</html>