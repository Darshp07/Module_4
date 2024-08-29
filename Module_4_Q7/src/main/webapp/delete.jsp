<%@ page import="java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Records</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="row mt-5">
		<div class="col-12 card p-5 shadow-lg m-auto">
			<h2 class="text-center text-success">Deleted Records</h2>
			<table class="table table-striped table-dark">
				<table border="1">
					<tr>
						<th width="5">ID</th>
						<th width="7">First Name</th>
						<th width="7">Last Name</th>
						<th width="35">Email</th>
						<th width="15">Mobile</th>
						<th width="10">Gender</th>
						<th width="10">Password</th>
					</tr>
					<%
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;

					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/module_4_Q7", "root", "3306");
						String sql = "SELECT * FROM deleted_data";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();

						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getInt("id")%></td>
						<td><%=rs.getString("fname")%></td>
						<td><%=rs.getString("lname")%></td>
						<td><%=rs.getString("email")%></td>
						<td><%=rs.getString("mobile")%></td>
						<td><%=rs.getString("gender")%></td>
						<td><%=rs.getString("password")%></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					} finally {
					if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					if (conn != null)
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					}
					%>
				</table>
				<a href="input.jsp">Back to Form</a>
			</table>
		</div>
	</div>

</body>
</html>
