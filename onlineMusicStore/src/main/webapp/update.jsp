<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<style>
  /* Custom styles */
  body {
            font-family: Arial, sans-serif;
            background-image: url('img/Img4.jpg'); /* Corrected property */
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

  .form-floating {
    margin-bottom: 20px;
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
</style>
</head>
<body>
<div class="container">
  <form method="post" action="updateCart">

    <div class="form-floating mb-3">
      <input type="text" class="form-control" id="mid" name="mid" value="${param.musicid}" required>
      <label for="mid">Music ID</label>
    </div>

    <div class="form-floating mb-3">
      <input type="text" class="form-control" id="musictype" name="musictype" value="${param.musictype}" required>
      <label for="musictype">Music Type (MP3/MP4)</label>
    </div>

    <div class="form-floating mb-3">
      <input type="text" class="form-control" id="musicquality" name="musicquality" value="${param.musicquality}" required>
      <label for="musicquality">Music Quality (HD/LL/SY)</label>
    </div>
    
    <button type="submit" class="btn btn-primary mb-3">Update to Cart</button>
  </form>
  <form action="adminCart" method="post">
        <button type="submit" class="btn btn-warning mb-3 float-end">Go to Cart</button>
  </form>
</div>

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
