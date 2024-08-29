<!-- • Write a Java program to validate jsp form server side. -->
<!-- First Name: Only Alphabets Last Name: Only Alphabets Mobile: Only 10 Numbers -->
<!-- Email: Standard Email Id -->
<!-- Password: Minimum One 1 Upper, Minimum 1 Lower, Minimum 1 Digit, Minimum -->
<!-- 1 Special Character from @, #, $, %, _, & I2. -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>
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
			<h3 class="text-center text-success">Student Information Form</h3>
			<form action="Module_4_Q6" method="post">

				<div class="form-group mb-3">
					&#128102; <label for="Fname" class="form-label">First Name</label>
					<input type="text" class="form-control" id="Fname" name="Fname"
						value="<%if (request.getParameter("Fname") != null) {%><%=request.getParameter("Fname")%><%}%>">
					<span id="fnameError" class="text-danger">${fnameErr}</span>
					
				</div>
				<div class="form-group mb-3">
					&#128102; <label for="lname" class="form-label">Last Name</label> <input
						type="text" class="form-control" id="lname" name="lname" required>
					<span id="lnameError" class="text-danger">${lnameErr}</span>
				</div>
				<div class="form-group mb-3">
					&#128231; <label for="email" class="form-label">Email
						Address</label> <input type="email" class="form-control" id="email"
						name="email"> <span id="emailError" class="text-danger">${emailErr}</span>
				</div>
				<div class="form-group mb-3">
					&#128241;<label for="mobile" class="form-label">Mobile</label> <input
						type="text" class="form-control" id="mobile" name="mobile"
						required> <span id="mobileError" class="text-danger">${mobileErr}</span>
				</div>
				<div class="form-group mb-3">
					&#128273; <label for="password" class="form-label">Password</label>
					<input type="password" class="form-control" id="password"
						name="password"> <span id="passwordError"
						class="text-danger">${passwordErr}</span>
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
