<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        /* Basic CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        
        form {
            margin: 20px auto;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        
        table {
            margin: 0 auto;
        }
        
        td {
            padding: 5px;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #337ab7;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        
        input[type="submit"]:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/welcome.jsp" />

    <form method="post" action="update">
        <table align="center">
            <tr>
                <td>Student Id</td>
                <td>${std.sid}</td>
            </tr>
            <tr>
                <td>Student Name</td>
                <td><input type="text" name="sname" value="${std.sname}"></td>
            </tr>
            <tr>
                <td>Student Address</td>
                <td><input type="text" name="saddr" value="${std.saddr}"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Update"></td>
            </tr>
        </table>
        <input type="hidden" name="sid" value="${std.sid}">
    </form>
</body>
</html>
