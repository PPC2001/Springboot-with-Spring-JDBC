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
            background-color: blue;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        
        input[type="submit"]:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/welcome.jsp" />

    <form method="post" action="delete">
        <table align="center">
            <tr>
                <td>Student Id</td>
                <td><input type="text" name="sid"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="DELETE"></td>
            </tr>
        </table>
    </form>
</body>
</html>
	