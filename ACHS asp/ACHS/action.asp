<%
	Dim sid, sname, sgender, saddress, scontact, action, sql, Connection, connString, Recordset

	sid = Request.form("sid")
	sname = Request.form("sname")
	saddress = Request.form("saddress")
	scontact = Request.form("scontact")
	sgender = Request.form("sgender")

	action = Request.form("action")

	SET Connection = CreateObject("ADODB.Connection")

	connString = "PROVIDER=SQLOLEDB;DATA SOURCE=RAJAN;USER ID=sa;PASSWORD=rajan;INITIAL CATALOG=StudentInfo"
	Connection.Open connString

	If action = "save" Then
		sql = "INSERT INTO StudentDB(StudentName, StudentAddress, StudentContact, StudentGender) VALUES('"&sname&"', '"&saddress&"', '"&scontact&"','"&sgender&"')"
		Connection.execute(sql)
		response.write"successfully inserted"
    Elseif action = "delete" Then
        sql = "DELETE FROM StudentDB WHERE Id = '" & sid & "'"
        Connection.execute(sql)
        response.write"successfully Deleted id=" & sid
    Elseif action = "update" Then
        sql = "UPDATE StudentDB SET StudentName='" & sname & "', StudentAddress='"& saddress &"', StudentContact='"& scontact &"', StudentGender='"& sgender &"' WHERE Id="&sid
        Response.Write(sql)
        Connection.execute(sql)
    response.write"successfully Updated id=" & sid
	Else
    display()
	End If
    
Sub display()
        sql = "SELECT * FROM StudentDB"
		Set Recordset = Server.CreateObject("ADODB.Recordset")
		
		Recordset.Open sql, Connection

		If Recordset.EOF Then
			Response.write("No records found")
		Else
%>
	<table border="1" cellpadding="5">
		<tr>
			<th>Id</th>
			<th>StudentName</th>
			<th>StudentAddress</th>
			<th>StudentContacts</th>
			<th>StudentGender</th>
            <!-- <th>Action</th> -->
		</tr>
<%
			Do While NOT Recordset.EOF
%>
	<tr>
		<td><% Response.Write(Recordset("Id")) %></td>
		<td><% Response.Write(Recordset("StudentName")) %></td>
		<td><% Response.Write(Recordset("StudentAddress")) %></td>
		<td><% Response.Write(Recordset("StudentContact")) %></td>
		<td><% Response.Write(Recordset("StudentGender")) %></td>
        <td><a href="Edit.asp?id=<%=Recordset("Id") %>">Edit</a> <a href="">Delete</a></td>
	</tr>				
<%
				Recordset.MoveNext
			Loop
%>
</table>
<%
		End If
End sub
%>
