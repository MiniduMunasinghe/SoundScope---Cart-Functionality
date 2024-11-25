<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Music Store</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <style>
        /* Custom styles for header */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            margin: 0;
            padding: 0;
        }

        header {
            text-align: center;
            padding: 20px 0;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        }

        .navbar {
            background-color: rgba(0, 123, 255, 0.8); /* Semi-transparent blue background */
            overflow: hidden;
            border-radius: 5px; /* Add rounded corners to the navbar */
            margin-bottom: 20px; /* Add some space below the navbar */
        }

        .navbar a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        .navbar a:hover {
            background-color: rgba(0, 86, 179, 0.8); /* Darker blue on hover */
        }

        .navbar .active {
            background-color: rgba(0, 86, 179, 0.8); /* Darker blue for active link */
        }
    </style>
</head>
<body>

<header>
    <!-- Header content -->
    <h1>Welcome to our Online Music Store!</h1>
    <hr>
</header>

<div class="navbar mb-3">
    <!-- Navigation bar -->
    <a href="home.jsp" class="<%= request.getRequestURI().endsWith("home.jsp") ? "active" : "" %>">Home</a>
    <a href="addToCart.jsp" class="<%= request.getRequestURI().endsWith("addToCart.jsp") ? "active" : "" %>">Purchase Music</a>
    <a href="#" class="<%= request.getRequestURI().endsWith("addMusic.jsp") ? "active" : "" %>">Add Music</a>
    <a href="#" class="<%= request.getRequestURI().endsWith("feedback.jsp") ? "active" : "" %>">Feedback</a>
    <a href="#" class="<%= request.getRequestURI().endsWith("register.jsp") ? "active" : "" %>">Profile</a>
</div>
