<%-- 
    Document   : List
    Created on : 23 Apr 2025, 2:23:23 PM
    Author     : User
--%>
<%@page import="za.ac.Entity.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            padding: 30px;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 70%;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        td {
            padding: 12px 18px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .student-block {
            border-top: 2px solid #3498db;
        }

    </style>
</head>
<body>
    <h1>STUDENT DETAILS</h1>

    <%
        List<Student> list = (List<Student>) request.getAttribute("List");
        for (Student s : list) {
    %>
        <table class="student-block">
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
    <%
        }
    %>
</body>
</html>
