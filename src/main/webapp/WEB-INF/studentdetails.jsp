<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/welcome.jsp" />
	<table align="center" border="1">
		<tr>
			<td>Student Id</td>
			<td>${std.sid}</td>
		</tr>
		<tr>
			<td>Student Name</td>
			<td>${std.sname}</td>
		</tr>
		<tr>
			<td>Student Address</td>
			<td>${std.saddr}</td>
		</tr>
	</table>
</body>
</html>