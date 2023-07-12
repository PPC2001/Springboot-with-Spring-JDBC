<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* CSS styles */
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

h1 {
	color: red;
	text-align: center;
	margin-top: 50px;
}

table {
	margin: 50px auto;
}

td {
	padding: 10px;
	text-align: center;
}

td a {
	text-decoration: none;
	color: blue;
	font-weight: bold;
	padding: 5px 10px;
	border-radius: 5px;
	background-color: lightblue;
}

td a:hover {
	background-color: cornflowerblue;
	color: white;
}
</style>
</head>
<body>
		<h1>Student Management System</h1>
	<hr>
	<table>
		<tr>
			<td><a href="addform">ADD Student</a></td>
			<td><a href="searchform">SEARCH Student</a></td>
			<td><a href="updateform">UPDATE Student</a></td>
			<td><a href="deleteform">DELETE Student</a></td>
		</tr>
	</table>
</body>
</html>
