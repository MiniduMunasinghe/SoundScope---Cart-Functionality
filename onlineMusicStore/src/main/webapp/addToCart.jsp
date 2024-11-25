<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
            background-image: url('img/Img2.jpg'); /* Corrected property */
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

        /* Align table and its content to center */
        .table-container {
            text-align: center;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>

<form action="adminMusicTable" method="post">
    <button type="submit" class="btn btn-primary mb-3">Show Music List</button>
</form>

<div class="container table-container">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Music ID</th>
          <th scope="col">Music Name</th>
          <th scope="col">Artist</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="mus" items="${music}">
          <tr>
            <td>${mus.musicid}</td>
            <td>${mus.musicname}</td>
            <td>${mus.artist}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post" action="addCart">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="mid" name="mid" placeholder="M001">
                    <label for="mid" class="form-label">Music ID</label>
                </div>

                <div class="form-floating mb-3">
    				<input type="text" class="form-control" id="musictype" name="musictype" placeholder="MP3 or MP4">
    				<label for="musictype" class="form-label">Music Type (MP3/MP4)</label>
				</div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="musicquality" name="musicquality" placeholder="Standard">
                    <label for="musicquality" class="form-label">Music Quality (HD/LL/SY)</label>
                </div>

                <button type="submit" class="btn btn-primary mb-3">Add to Cart</button>
            </form>
        </div>
    </div>
</div>

<div class="row justify-content-end">
    <div class="col-md-6">
        <form action="adminCart" method="post">
            <button type="submit" class="btn btn-warning mb-3 float-end">Go to Cart</button>
        </form>
    </div>
</div>

<%@ include file="footer.jsp" %>

<script>
    document.getElementById("musictype").addEventListener("input", function() {
        var musictype = this.value.toUpperCase();
        if (musictype !== "MP3" && musictype !== "MP4") {
            this.setCustomValidity("Please enter MP3 or MP4");
        } else {
            this.setCustomValidity("");
        }
	});
    document.getElementById("musicquality").addEventListener("input", function() {
        var musicquality = this.value.toUpperCase();
        if (musicquality !== "HD" && musicquality !== "LL" && musicquality !== "S") {
            this.setCustomValidity("Please enter HD, LL, or S");
        } else {
            this.setCustomValidity("");
        }
    });
</script>
</body>
</html>
