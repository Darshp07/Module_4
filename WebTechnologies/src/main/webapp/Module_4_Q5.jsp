<!-- Write a Java program to fetch all the data from database table and print on jsp page -->
<!-- using JSTL SQL tag library.  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
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
		<div class="col-11 card p-5 shadow-lg m-auto">
			<h1 class="text-center text-success">Student List</h1>
			<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/module_4_Q7" user="root"
				password="3306" />

			<sql:query var="result" dataSource="${dbSource}">
            SELECT * FROM Student;
        </sql:query>

			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>fname</th>
						<th>lname</th>
						<th>email</th>
						<th>mobile</th>
						<th>Gender</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${result.rows}">
						<tr>
							<td><c:out value="${row.id}" /></td>
							<td><c:out value="${row.fname}" /></td>
							<td><c:out value="${row.lname}" /></td>
							<td><c:out value="${row.email}" /></td>
							<td><c:out value="${row.mobile}" /></td>
							<td><c:out value="${row.gender}" /></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
