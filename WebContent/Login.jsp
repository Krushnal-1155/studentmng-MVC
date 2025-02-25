<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<!-- This is CSS Code to manage design-->
<style>
body {
	font-family: Arial, sans-serif;
	background-image:
		url('https://cdn.vectorstock.com/i/500p/15/71/abstract-3d-luxury-black-color-wave-lines-vector-43391571.jpg'); /* Background image added */
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	flex-direction: row; /* Changed to row for side-by-side layout */
	animation: fadeIn 1.5s ease-in;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 80%;
	max-width: 1000px;
}

.image-container {
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
}

@keyframes neonBlink {
    0% { border: 5px solid #0ff; box-shadow: 0 0 10px #0ff, 0 0 20px #0ff, 0 0 30px #0ff; }
    50% { border: 5px solid red; box-shadow: 0 0 10px red, 0 0 20px red, 0 0 30px red; }
    100% { border: 5px solid #0ff; box-shadow: 0 0 10px #0ff, 0 0 20px #0ff, 0 0 30px #0ff; }
}

.image-container img {
    width: 400px; /* Adjust width as needed */
    height: auto;
    border-radius: 10px;
    border: 5px solid #0ff; /* Initial neon cyan border */
    box-shadow: 0 0 10px #0ff;
    animation: neonBlink 1.5s infinite alternate ease-in-out; /* Loop animation */
    transition: all 0.4s ease-in-out;
}


.form-container form {
    background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
    padding: 20px;
    border-radius: 10px;
    border: 5px solid transparent; /* Initially no border */
    box-shadow: 0 0 10px transparent;
    transition: border 0.4s ease-in-out, box-shadow 0.4s ease-in-out; /* Smooth transition */
}

/* Neon effect on hover */
.form-container form:hover {
    border: 5px solid #0ff; /* Neon cyan border */
    box-shadow: 0 0 10px #0ff, 0 0 20px #0ff, 0 0 30px #0ff, 0 0 40px #00f, 0 0 50px #00f;
}


h1 {
	color: white; /* Changed to white for better visibility */
	margin-bottom: 20px;
	animation: slideDown 1s ease-out;
}

form {
	background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	width: 300px;
	display: flex;
	flex-direction: column;
	animation: fadeIn 2s ease-in;
}

input[type="text"], input[type="password"] {
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: calc(100% - 22px);
}

input[type="submit"] {
	padding: 10px;
	background-color: #007BFF; /* Changed to blue */
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 10px;
	transition: transform 0.3s ease-in-out;
}

input[type="submit"]:hover {
	background-color: #0056b3; /* Darker blue */
	transform: scale(1.1);
}

.captcha-container {
	display: flex;
	align-items: center;
	margin: 10px 0;
}

.captcha {
	font-size: 20px;
	font-weight: bold;
	margin-right: 10px;
	background-color: #eee;
	padding: 5px 10px;
	border-radius: 5px;
}

a {
	color: #007BFF; /* Changed link color to blue */
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

/* Change Not registered? text color to white */
p {
	color: white;
	font-size: 16px;
}

@keyframes neonGlowLoop {
    0% { box-shadow: 0 0 5px #0ff, 0 0 10px #0ff; }
    50% { box-shadow: 0 0 10px #0ff, 0 0 20px #00f, 0 0 30px #00f; }
    100% { box-shadow: 0 0 5px #0ff, 0 0 10px #0ff; }
}

.form-container form {
    background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
    padding: 20px;
    border-radius: 10px;
    border: 5px solid #0ff; /* Neon cyan border */
    box-shadow: 0 0 10px #0ff;
    animation: neonGlowLoop 1.5s infinite alternate ease-in-out; /* Looping animation */
    transition: all 0.4s ease-in-out;
}


</style>
<!-- This is Javascript to add CAPTCHA code in the login page -->
<script type="text/javascript">
let captchaCode;

function generateCaptcha() {
    const characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    captchaCode = '';
    for (let i = 0; i < 6; i++) {
    	const randomIndex = Math.floor(Math.random() * characters.length);
        captchaCode += characters.charAt(randomIndex); 
    }
    document.getElementById("captcha").innerText = captchaCode;
}

function validateCaptcha() {
    const userCaptchaInput = document.getElementById("captcha_input").value;
    if (userCaptchaInput !== captchaCode) {
        alert("Incorrect CAPTCHA. Please try again.");
        return false;
    }
    return true;
}
window.onload = generateCaptcha;
</script>
</head>
<body>

<div class="container">
    <!-- Image on the left -->
    <div class="image-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw9Zut5tZj3pmyu8HPG2qj5QV7y9dHCzPlrg&s" 
        alt="Student Login">
    </div>
</div>


    <!-- Login Form on the right -->
    <div class="form-container"> 
    <h1>Welcome To Student Login Page</h1>
    <form action="log" method="post" onsubmit="return validateCaptcha()">
        <input type="text" name="rollNo" placeholder="Enter Your Roll Number" required>
        <input type="text" name="login" placeholder="Email or Mobile Number" required>
        <input type="password" name="password" placeholder="Password" required>
        <div class="captcha-container">
            <span id="captcha" class="captcha"></span>
            <input type="text" id="captcha_input" placeholder="Enter CAPTCHA" required>
        </div>
        <input type="submit" value="Login">
        <div class="message">${msg}</div>
    </form>
    <p>Not registered? <a href="Register.jsp">Register here</a></p> 
</div>

</body>
</html>
