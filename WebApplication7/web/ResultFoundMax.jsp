<%-- 
    Document   : ResultFoundMax
    Created on : 09 May 2025, 8:21:38 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mark Summary</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .result-box {
            background-color: #ffffff;
            padding: 25px 35px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .result-box p {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }

        .label {
            font-weight: bold;
            color: #2c3e50;
        }
    </style>
</head>
<body>
    <h1>Maximum Mark And Minimum</h1>
    <div class="result-box">
        <%
            Double MaxMark = (Double) request.getAttribute("MaxMark");
            Double MinMark = (Double) request.getAttribute("MinMark");
        %>
        <p><span class="label">MAXIMUM MARK:</span> <%= MaxMark %></p>
        <p><span class="label">MINIMUM MARK:</span> <%= MinMark %></p>
    </div>
</body>
</html>

