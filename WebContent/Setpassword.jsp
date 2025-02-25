<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Password Page</title>
<style>
/* Full-screen background image */
body {
    font-family: Arial, sans-serif;
    background-image: url('https://img.freepik.com/premium-vector/cyber-security-concept-with-hud-element-blue-tone-background_99087-130.jpg?semt=ais_hybrid');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    display: flex;
    justify-content: flex-end; /* Moves content to the right */
    align-items: center;
    height: 100vh;
    margin: 0;
    padding-right: 100px; /* Ensures spacing from the right edge */
}

/* Container for text and form */
.container {
    text-align: right; /* Aligns text to the right */
}

/* Page title styling */
h1 {
    color: white;
    margin-bottom: 20px;
    text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
}

/* Form with continuous border transition */
form {
    background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
    padding: 20px;
    border-radius: 10px;
    width: 320px;
    display: flex;
    flex-direction: column;
    position: relative;
    border: 4px solid transparent;
    animation: borderLoop 3s infinite linear;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}

/* Continuous border color transition */
@keyframes borderLoop {
    0% { border-color: #ff0000; box-shadow: 0 0 10px #ff0000; }
    25% { border-color: #00ff00; box-shadow: 0 0 10px #00ff00; }
    50% { border-color: #0000ff; box-shadow: 0 0 10px #0000ff; }
    75% { border-color: #ff00ff; box-shadow: 0 0 10px #ff00ff; }
    100% { border-color: #ff0000; box-shadow: 0 0 10px #ff0000; }
}

/* Input fields */
input[type="password"] {
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: calc(100% - 22px);
}

/* Submit button */
button {
    padding: 10px;
    background-color: blue;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
    font-size: 16px;
    transition: all 0.3s ease-in-out;
}

/* Button hover effect */
button:hover {
    background-color: darkblue;
    transform: scale(1.05);
}
</style>

<script type="text/javascript">
function checkPassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm_password").value;
    if (password !== confirmPassword) {
        alert("Passwords do not match. Please try again.");
        return false;
    }
    return true;
}
</script>
</head>
<body>

<div class="container">
    <h1>Set Your Password</h1>

    <form action="register" method="post" onsubmit="return checkPassword()">
        <input type="hidden" name="rollNo" value="<%=request.getParameter("rollNo")%>">
        <input type="hidden" name="name" value="<%=request.getParameter("name")%>">
        <input type="hidden" name="mnumber" value="<%=request.getParameter("mnumber")%>">
        <input type="hidden" name="email" value="<%=request.getParameter("email")%>">
        <input type="hidden" name="mothername" value="<%=request.getParameter("mothername")%>">
        <input type="hidden" name="address" value="<%=request.getParameter("address")%>">
        <input type="hidden" name="course" value="<%=request.getParameter("course")%>">
        <input type="hidden" name="department" value="<%=request.getParameter("department")%>">

        <label>Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <label>Confirm Password:</label>
        <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm your password" required>

        <button type="submit">Set Password</button>
    </form>
</div>

</body>
</html>
