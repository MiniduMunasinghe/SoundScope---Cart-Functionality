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
            background-image: url('img/Img1.jpg'); /* Corrected property */
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

        .btn {
            padding: 10px 20px;
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

        .navbar {
            background-color: #007bff;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #0056b3;
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
        
        .card {
            background-size: cover;
            border-radius: 10px; /* Rounded corners */
            color: #fff; /* Text color */
            padding: 20px;
            margin-bottom: 20px;
        }

        .card-title {
            font-size: 28px;
            margin-bottom: 10px;
            color: #ff9933; /* Light orange title color */
            font-family: 'Lobster', cursive; /* Graffiti-style font */
        }

        .card-text {
            font-size: 18px;
            color: #4d88ff; /* Light blue text color */
            font-family: 'Roboto', sans-serif; /* Complementary font */
        }
        
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <h2>Music Store</h2>
    <!-- Your main content goes here -->
    
    <!-- Colorful Cards -->
    <div class="row mt-4">
        <div class="col-md-3">
            <div class="card">
                <h3 class="card-title">Discover Music</h3>
                <p class="card-text">Explore a wide range of genres and discover your new favorite songs.</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <h3 class="card-title">Discover Artist</h3>
                <p class="card-text">Learn about talented artists and their unique musical styles.</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <h3 class="card-title">Purchase Music</h3>
                <p class="card-text">Buy the latest hits or timeless classics to enjoy anytime, anywhere.</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <h3 class="card-title">Upload Your Own Music</h3>
                <p class="card-text">Share your original compositions with the world and showcase your talent.</p>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <h2>Featured Music</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Explore the latest hits</h5>
                    <p class="card-text">Discover the newest releases from top artists across various genres. From pop to rock, find your favorite songs here.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Discover hidden gems</h5>
                    <p class="card-text">Uncover underground tracks from emerging artists. Dive into new sounds and expand your music horizons.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Timeless classics</h5>
                    <p class="card-text">Revisit vintage tracks and rediscover the music that shaped generations. Explore our collection of timeless classics.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
