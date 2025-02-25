<%@page import="com.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<style>
/* Full-screen background image */
body {
    font-family: Arial, sans-serif;
    background-image: url('https://www.processmaker.com/wp-content/uploads/2024/07/processmaker-background-2.webp');
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

/* Page heading */
h1 {
    color: white;
    margin-bottom: 20px;
    text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
    text-align: center;
}

/* Centering form with looping border animation */
.student-details {
    background-color: rgba(0, 0, 0, 0.9); /* Semi-transparent black */
    padding: 20px;
    border-radius: 10px;
    width: 400px;
    text-align: center;
    position: relative;
    border: 5px solid transparent;
    animation: borderLoop 3s infinite linear; /* Continuous border animation */
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}

/* Fixed Keyframe Animation */
@keyframes borderLoop {
    0% { border-color: #ff0000; box-shadow: 0 0 15px #ff0000; }
    25% { border-color: #00ff00; box-shadow: 0 0 15px #00ff00; }
    50% { border-color: #0000ff; box-shadow: 0 0 15px #0000ff; }
    75% { border-color: #ff00ff; box-shadow: 0 0 15px #ff00ff; }
    100% { border-color: #ff0000; box-shadow: 0 0 15px #ff0000; }
}

/* Student profile image */
.profile-img {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    margin-bottom: 15px;
    border: 4px solid #4CAF50;
}

/* Labels in student details */
.student-details label {
    font-weight: bold;
    color: white;
}

/* Paragraphs inside details */
.student-details p {
    margin: 5px 0;
    color: white;
}

/* Centering the button */
.button-container {
    margin-top: 20px;
    text-align: center;
}

/* Button styling */
a {
    color: #fff;
    text-decoration: none;
    background-color: blue;
    padding: 12px 20px;
    border-radius: 5px;
    display: inline-block;
    transition: all 0.3s ease-in-out;
}

a:hover {
    background-color: darkblue;
    transform: scale(1.1);
}
</style>
</head>
<body>

<h1>Student Details</h1>

<%
Student student = (Student) request.getAttribute("msg");
if (student != null) {
%>

<div class="student-details">
    <!-- Student Profile Image -->
    <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Student Profile" class="profile-img">

    <p><label>Roll No:</label> <%=student.getRollNo()%></p>
    <p><label>Name:</label> <%=student.getName()%></p>
    <p><label>Mobile Number:</label> <%=student.getMnumber()%></p>
    <p><label>Email Address:</label> <%=student.getEmail()%></p>
    <p><label>Mother's Name:</label> <%=student.getMothername()%></p>
    <p><label>Address:</label> <%=student.getAddress()%></p>
    <p><label>Course:</label> <%=student.getCourse()%></p>
    <p><label>Department:</label> <%=student.getDepartment()%></p>
    <p><label>Password:</label> <%=student.getPassword()%></p>
</div>

<%
} else {
%>
<p style="color: white; text-align: center;">Student details not found.</p>
<%
}
%>

<!-- Centering the button -->
<div class="button-container">
    <a href="Index.jsp">Back to Home Page</a>
</div>

</body>
</html>
