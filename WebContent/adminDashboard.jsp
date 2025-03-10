<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image:
		url('https://wallpapers.com/images/hd/black-and-blue-abstract-qpojbj22b34iot9v.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	margin: 0;
	padding: 20px;
}

h1, h2 {
	color: #fff;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	border: 4px solid blue;
	animation: borderAnimation 3s infinite alternate;
}

@
keyframes borderAnimation { 0% {
	border-color: blue;
	box-shadow: 0 0 10px #4CAF50;
}

50




%
{
border-color




:




#ff9800


;
box-shadow




:




0




0




15px




#ff9800


;
}
100




%
{
border-color




:




#e91e63


;
box-shadow




:




0




0




10px




#e91e63


;
}
}
th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	color: #fff;
}

th {
	background-color: blue;
	color: white;
}

tr:nth-child(even) {
	background-color: rgba(255, 255, 255, 0.1);
}

tr:hover {
	background-color: rgba(255, 255, 255, 0.2);
}

button {
	padding: 10px;
	background-color: blue;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: all 0.3s ease-in-out;
}

button:hover {
	background-color: darkblue;
	transform: scale(1.1);
}

.logout-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #ff4c4c; /* Red background */
	color: white; /* White text */
	text-decoration: none; /* Remove default underline */
	border-radius: 5px; /* Rounded edges */
	font-weight: bold;
	transition: all 0.3s ease-in-out;
	border: 2px solid transparent;
}

.logout-button:hover {
	background-color: #cc0000; /* Darker red on hover */
	transform: scale(1.1); /* Slight zoom effect */
	border: 2px solid white; /* White border on hover */
}
</style>


<script type="text/javascript">
	function deleteFunc() {
		document.mypage.action = "del";
		document.mypage.submit();
	}
	function editFunc() {
		document.mypage.action = "edit";
		document.mypage.submit();
	}
</script>
</head>
<body>
	<h1>Admin Dashboard</h1>
	<p>Welcome, Admin!</p>

	<h2>Student List</h2>
	<form name="mypage">
		<%
		List<Student> liststu = (List<Student>) request.getAttribute("msg");
		%>
		<table border="2">
			<thead>
				<tr>
					<th>Select</th>
					<th>Roll No</th>
					<th>Name</th>
					<th>Mobile Number</th>
					<th>Email Address</th>
					<th>Mother Name</th>
					<th>Address</th>
					<th>Course</th>
					<th>Department</th>
					<th>Password</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Student stu : liststu) {
				%>
				<tr>
					<td><input type="radio" name="rollno"
						value="<%=stu.getRollNo()%>"></td>
					<td><%=stu.getRollNo()%></td>
					<td><%=stu.getName()%></td>
					<td><%=stu.getMnumber()%></td>
					<td><%=stu.getEmail()%></td>
					<td><%=stu.getMothername()%></td>
					<td><%=stu.getAddress()%></td>
					<td><%=stu.getCourse()%></td>
					<td><%=stu.getDepartment()%></td>
					<td><%=stu.getPassword()%></td>
					<td><button type="button" onclick="editFunc()">Edit</button></td>
					<td><button type="button" onclick="deleteFunc()">Delete</button></td>

					<script>
						function deleteFunc() {
							let confirmDelete = confirm("Are you sure you want to delete this?");
							if (confirmDelete) {
								// Proceed with deletion logic here
								alert("Item deleted successfully!");
							} else {
								alert("Deletion cancelled.");
							}
						}
					</script>

				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</form>

	<p>
		<a href="Login.jsp" class="logout-button">Logout</a>

	</p>
</body>
</html>
