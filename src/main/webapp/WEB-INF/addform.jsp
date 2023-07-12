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
        
        .form-group {
            margin-bottom: 10px;
        }
        
        label {
            display: inline-block;
            width: 120px;
        }
        
        input[type="text"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        input[type="submit"] {
            padding: 10px 20px;
            background-color: lightblue;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        
        input[type="submit"]:hover {
            background-color: blue;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/welcome.jsp" />
    
    <form method="post" action="add">
        <div class="form-group">
            <label for="sid">Student Id</label>
            <input type="text" id="sid" name="sid">
        </div>
        <div class="form-group">
            <label for="sname">Student Name</label>
            <input type="text" id="sname" name="sname">
        </div>
        <div class="form-group">
            <label for="saddr">Student Address</label>
            <input type="text" id="saddr" name="saddr">
        </div>
        <div class="form-group">
            <input type="submit" value="ADD">
        </div>
    </form>
</body>
</html>
