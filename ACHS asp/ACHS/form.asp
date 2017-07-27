<!DOCTYPE html>
<html>
<head>
	<title>Database Connection</title>
	<style type="text/css">
		/*.form{
			margin: 0 auto;
			width: 20%;
		}*/
	</style>
</head>
<body>
	<form action="action.asp" method="POST" class="form">
		<table>
			<tr>
				<td><label>Student ID</label></td>
				<td><input type="text" name="sid"><br></td>
			</tr>
			<tr>
				<td><label>Name</label></td>
				<td><input type="text" name="sname"><br></td>
			</tr>
			<tr>
				<td><label>Gender</label></td>
				<td>
					<input type="radio" name="sgender" value="male"> Male
					<input type="radio" name="sgender" value="female"> Female<br>
				</td>
			</tr>
			<tr>
				<td>
					<label>Address</label>
				</td>
				<td>
					<input type="text" name="saddress"><br>
				</td>
			</tr>
			<tr>
				<td><label>Contact</label></td>
				<td><input type="text" name="scontact"><br></td>
			</tr>
			<tr>
				<td><input type="submit" name="action" value="save">
				<input type="submit" name="action" value="edit">
				<input type="submit" name="action" value="update">
				<input type="submit" name="action" value="delete">
				<input type="submit" name="action" value="display"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>