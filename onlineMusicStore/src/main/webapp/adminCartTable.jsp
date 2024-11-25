<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Music Store</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <style>
        /* Custom styles */
       body {
            font-family: Arial, sans-serif;
            background-image: url('img/Img5.jpg'); /* Corrected property */
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container {
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background to the containers for better readability */
            padding: 20px;
            border-radius: 10px; /* Add rounded corners to the containers */
        }


        .table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff; /* White background */
            border-radius: 5px;
            overflow: hidden;
        }

        .table th, .table td {
            padding: 10px;
            text-align: center; /* Align content to center */
            border-bottom: 1px solid #dee2e6; /* Light gray border bottom */
        }

        .table th {
            background-color: #007bff; /* Blue header background */
            color: #fff; /* White text */
            font-weight: bold;
        }

        .btn {
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-primary {
            background-color: #007bff; /* Blue color */
            color: #fff; /* White text */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .btn-warning {
            background-color: #ffc107; /* Yellow color */
            color: #000; /* Black text */
        }

        .btn-warning:hover {
            background-color: #e0a800; /* Darker yellow on hover */
        }

        .form-control {
            border: 1px solid #ced4da; /* Light gray border */
            border-radius: 5px; /* Rounded corners */
            padding: 10px;
            width: 100%;
            margin-bottom: 10px;
        }

        .form-label {
            margin-bottom: 5px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Music ID</th>
                <th scope="col">Music Type</th>
                <th scope="col">Music Quality</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="crt" items="${cart}">
                <tr>
                    <td>${crt.musicid}</td>
                    <td>${crt.musictype}</td>
                    <td>${crt.musicquality}</td>
                    <td>
                        <form action="update.jsp" method="post" style="display: inline;">
                            <input type="hidden" name="musicid" value="${crt.musicid}">
                            <input type="hidden" name="musictype" value="${crt.musictype}">
                            <input type="hidden" name="musicquality" value="${crt.musicquality}">
                            <button class="btn btn-success">Update</button>
                        </form>
                        <form action="deleteCart" method="post" style="display: inline;">
                            <input type="hidden" name="musicid" value="${crt.musicid}">
                            <button class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>
