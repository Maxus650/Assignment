<%-- 
    Document   : StudentMenu
    Created on : 12 May 2025, 11:41:29 PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Student</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f6f9;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 60%;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: #333;
                margin-bottom: 30px;
            }

            table {
                width: 100%;
                margin: 20px 0;
            }

            table td {
                padding: 10px;
                font-size: 16px;
            }

            table input[type="text"],
            table input[type="number"] {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            input[type="submit"] {
                width: 100%;
                padding: 12px;
                background-color: #e74c3c;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #c0392b;
            }

            .form-row {
                margin-bottom: 15px;
            }

            .form-row label {
                font-weight: bold;
                color: #333;
            }

            .form-row input {
                font-size: 16px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <h1>Add Student</h1>
            <form action="AddServlet" method="post">
                <table>
                    <tr class="form-row">
                        <td><label for="Id">Id:</label></td>
                        <td><input type="text" name="Id" id="Id" required></td>
                    </tr>
                    <tr class="form-row">
                        <td><label for="Name">Name:</label></td>
                        <td><input type="text" name="Name" id="Name" required></td>
                    </tr>
                    <tr class="form-row">
                        <td><label for="LastName">LastName:</label></td>
                        <td><input type="text" name="LastName" id="LastName" required></td>
                    </tr>
                    <tr class="form-row">
                        <td><label for="Gender">Gender:</label></td>
                        <td><input type="text" name="Gender" id="Gender" required></td>
                    </tr>
                    <tr class="form-row">
                        <td><label for="Age">Age:</label></td>
                        <td><input type="text" name="Age" id="Age" required></td>
                    </tr>
                    <tr class="form-row">
                        <td><label for="MarkObtained">Mark Obtained:</label></td>
                        <td><input type="number" name="MarkObtained" id="MarkObtained" required></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Register"></td>
                    </tr>
                </table>
            </form>
        </div>

    </body>
</html>

