<%-- 
    Document   : ResultCount
    Created on : 23 Apr 2025, 2:35:54 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Female Students Count</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f6fa;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 60px;
            margin: 0;
        }

        h1 {
            color: #34495e;
        }

        p {
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            font-size: 18px;
            color: #2c3e50;
            text-align: center;
            max-width: 400px;
        }

        a {
            color: #007acc;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%
        int Count = (Integer) request.getAttribute("Count");
    %>
    <h1>Details</h1>
    <p>
        There are <strong><%= Count %></strong> female students.
        <br><br>
        Click <a href="index.html">here</a> to go back to the menu.
    </p>
</body>
</html>

