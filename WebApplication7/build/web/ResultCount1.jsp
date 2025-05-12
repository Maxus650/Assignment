<%-- 
    Document   : ResultCount1
    Created on : 23 Apr 2025, 3:16:42 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Passed Students Count</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 60px;
            margin: 0;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        p {
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            font-size: 18px;
            color: #34495e;
            text-align: center;
        }

        a {
            color: #2980b9;
            text-decoration: none;
            font-weight: bold;
            margin-left: 10px;
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
        There are <strong><%= Count %></strong> students who passed.
        <br><br>
        Click <a href="index.html">here</a> to go back to the menu.
    </p>
</body>
</html>

