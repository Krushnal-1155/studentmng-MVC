<%@page import="com.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Information</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image:
		url('https://static.vecteezy.com/system/resources/thumbnails/011/891/890/small/abstract-red-light-line-arrow-direction-on-black-metal-with-blank-space-design-modern-luxury-futuristic-technology-background-vector.jpg');
	/* Add your image URL here */
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	flex-direction: column;
}

h1 {
	color: #333;
	margin-bottom: 20px;
}
@keyframes neonGlow {
    0% {
        border-color: #ff0000;
        box-shadow: 0 0 10px #ff0000, 0 0 20px #ff0000;
    }
    50% {
        border-color: #00ff00;
        box-shadow: 0 0 15px #00ff00, 0 0 30px #00ff00;
    }
    100% {
        border-color: #0000ff;
        box-shadow: 0 0 10px #0000ff, 0 0 20px #0000ff;
    }
}

form {
    background-color: rgba(255, 255, 255, 0.1); /* Slight transparency for a futuristic look */
    padding: 20px;
    border-radius: 10px;
    border: 4px solid #ff0000;
    animation: neonGlow 2s infinite alternate;
    display: flex;
    flex-direction: column;
    width: 300px;
    color: white; /* Ensures text inside the form is readable */
}

input[type="text"] {
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 80%;
}

button {
	padding: 10px;
	background-color: blue;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 10px;
}

button:hover {
	background-color: darkblue;
}
</style>
</head>
<body>
	<h1>Welcome to Update Page</h1>

	<%
	Student student = (Student) request.getAttribute("student");
	%>

	<form action="update">
		<label>Student RollNo:</label> <input type="text" name="rollNo"
			value="<%=student.getRollNo()%>"
			placeholder="Enter student's new roll number"> <label>Student
			Name:</label> <input type="text" name="name" value="<%=student.getName()%>"
			placeholder="Enter student's new Name"> <label>Student
			Mobile Number:</label> <input type="text" name="mnumber"
			value="<%=student.getMnumber()%>"
			placeholder="Enter student's new Mobile Number"> <label>Student
			Email Address:</label> <input type="text" name="email"
			value="<%=student.getEmail()%>"
			placeholder="Enter student's new Email Address"> <label>Student
			Mother Name:</label> <input type="text" name="mothername"
			value="<%=student.getMothername()%>"
			placeholder="Enter student's Mother Name"> <label>Student
			Address:</label> <input type="text" name="address"
			value="<%=student.getAddress()%>"
			placeholder="Enter student's new Address"> <label>Student
			Course:</label> <input type="text" name="course"
			value="<%=student.getCourse()%>"
			placeholder="Enter student's new Course"> <label>Student
			Department:</label> <input type="text" name="department"
			value="<%=student.getDepartment()%>"
			placeholder="Enter student's new Department"> <label>Student
			Password:</label> <input type="text" name="password"
			value="<%=student.getPassword()%>"
			placeholder="Enter student's new Password">
		<button type="submit">Update</button>
	</form>
</body>
</html>
