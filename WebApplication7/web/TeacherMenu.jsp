<%-- 
    Document   : TeacherMenu
    Created on : 12 May 2025, 11:33:26 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menu Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        ol {
            font-size: 18px;
            margin-bottom: 30px;
        }

        ol li {
            margin: 10px 0;
        }

        a {
            text-decoration: none;
            color: #e74c3c;
            font-weight: bold;
        }

        a:hover {
            color: #c0392b;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .form-container table {
            width: 100%;
            text-align: center;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Menu</h1>
        <ol>
            <li>Click <a href="DeleteStudent.jsp">here</a> to delete Student</li>  
            <li>Click <a href="Search.jsp">here</a> to Find Student</li> 
            <li>Click <a href="SearchRange.jsp">here</a> to Find Students by range</li> 
            <li>Click <a href="Edit.jsp">here</a> to Edit Student Mark</li> 
            <li>Click <a href="GetMaxServlet">here</a> to View Max and Min Student Mark</li>
        </ol>

        <div class="form-container">
            <form action="ViewFemaleServlet" method="post">
                <input type="submit" value="Count Female Students">
            </form>
        </div>

        <div class="form-container">
            <form action="ViewStudentsServlet" method="post">
                <input type="submit" value="View All Students">
            </form>
        </div>

        <div class="form-container">
            <form action="CountPassServlet" method="post">
                <input type="submit" value="Count Passed Students">
            </form>
        </div>
    </div>
</body>
</html>

