<%-- 
    Document   : ResultFound
    Created on : 23 Apr 2025, 2:07:29 AM
    Author     : User
--%>

<%@page import="za.ac.Entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #eef2f3;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 40px;
            margin: 0;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            background-color: #fff;
            border-collapse: collapse;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 50%;
            max-width: 600px;
        }

        td {
            padding: 15px 20px;
            border-bottom: 1px solid #ddd;
        }

        td:first-child {
            font-weight: bold;
            color: #34495e;
            background-color: #f9f9f9;
            width: 40%;
        }

        td:last-child {
            color: #2d3436;
        }

        p {
            margin-top: 30px;
            font-size: 16px;
        }

        a {
            color: #3498db;
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
        Student s = (Student) request.getAttribute("Student");
    %>
    <h1>Student Details</h1>
    <table>
        <tr>
            <td>Id:</td>
            <td><%= s.getId() %></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><%= s.getName() %></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><%= s.getLastName() %></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><%= s.getGender() %></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><%= s.getAge() %></td>
        </tr>
        <tr>
            <td>Mark Obtained:</td>
            <td><%= s.getMarkObtained() %></td>
        </tr>
    </table>
    <p>
        Click <a href="index.html">here</a> to go back to the menu
    </p>
</body>
</html>

