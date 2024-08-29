<!--Q.4 Write above Java program and print fetched data on another jsp using expression -->
<!-- language. -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student information</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="row mt-5">
		<div class="col-5 card p-5 shadow-lg m-auto">
			<h3 class="text-center text-success">Student information Form</h3>
			<form action="StudentServlet" method="post">

				<div class="form-group mb-3">
					&#128102; <label for="Fname" class="form-label">First_Name</label>
					<input type="text" class="form-control" id="Fname" name="Fname"
						required>

				</div>
				<div class="form-group mb-3">
					&#128102; <label for="lname" class="form-label">last_Name</label> <input
						type="text" class="form-control" id="lname" name="lname" required>

				</div>

				<div class="form-group mb-3">
					&#128231; <label for="email" class="form-label">Email
						Address</label> <input type="email" class="form-control" id="email"
						name="email">

				</div>
				<div class="form-group mb-3">
					&#128241;<label for="mobile" class="form-label">Mobile</label> <input
						type="text" class="form-control" id="mobile" name="mobile"
						required>

				</div>
				<div class="form-group mb-3">
					&#9893; <label for="Gender" class="form-label">Gender</label> <br>
					<input type="radio" id="male" name="gender" value="male" required><label
						for="male">Male</label> <input type="radio" id="female"
						name="gender" value="female" required> <label for="female">Female</label>

				</div>


				<div class="form-group mb-3">
					&#128273; <label for="password" class="form-label">Password</label>
					<input type="password" class="form-control" id="password"
						name="password">

				</div>


				<div class="d-flex">
					<input type="submit" class="btn btn-success me-2" id="submitButton"
						value="Submit"> <input type="reset"
						class="btn btn-primary" id="resetButton" value="Reset">
				</div>
			</form>
		</div>
	</div>
</body>
</html>