<%-- 
    Document   : DeleteStudent
    Created on : 23 Apr 2025, 2:18:35 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Student</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f8fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #e74c3c;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px 0;
            font-size: 16px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #e74c3c;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Delete Student</h1>
        <form action="DeleteServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="Id" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Delete Student">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
