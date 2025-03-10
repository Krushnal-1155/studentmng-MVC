<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-image: url('https://st3.depositphotos.com/10376142/31724/v/450/depositphotos_317244446-stock-illustration-paper-cut-user-protection-icon.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px #0ff;
    width: 350px;
    text-align: center;
    position: relative;
    border: 5px solid transparent;
    animation: borderAnimation 2s linear infinite;
}

/* Looping border animation */
@keyframes borderAnimation {
    0% { border-color: #0ff; box-shadow: 0 0 10px #0ff; }
    25% { border-color: #ff00ff; box-shadow: 0 0 15px #ff00ff; }
    50% { border-color: #00ff00; box-shadow: 0 0 20px #00ff00; }
    75% { border-color: #ff4500; box-shadow: 0 0 15px #ff4500; }
    100% { border-color: #0ff; box-shadow: 0 0 10px #0ff; }
}

h2 {
    color: white;
    margin-bottom: 20px;
}

input[type="text"], input[type="email"] {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    padding: 10px;
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    transition: transform 0.3s ease-in-out;
}

button:hover {
    background-color: #0056b3;
    transform: scale(1.1);
}

.captcha-container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin: 10px 0;
}

.captcha {
    font-size: 20px;
    font-weight: bold;
    background-color: #eee;
    padding: 5px 10px;
    border-radius: 5px;
}

a {
    color: #007BFF;
    text-decoration: none;
    display: block;
    margin-top: 10px;
}

a:hover {
    text-decoration: underline;
}
</style>

<script>
let captchaCode;

function generateCaptcha() {
    const characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    captchaCode = '';
    for (let i = 0; i < 6; i++) {
        captchaCode += characters.charAt(Math.floor(Math.random() * characters.length));
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

function goToResetPage() {
    window.location.href = "resetPassword.jsp";
}
</script>

</head>
<body>

<div class="container">
    <h2>Forgot Password</h2>
    <form action="resetPassword" method="post" onsubmit="return validateCaptcha()">
        <input type="text" name="username" placeholder="Enter Your Email or Mobile Number" required>

        <div class="captcha-container">
            <span id="captcha" class="captcha"></span>
            <input type="text" id="captcha_input" placeholder="Enter CAPTCHA" required>
        </div>

        <button type="button" onclick="goToResetPage()">Reset Password</button>
    </form>

    <a href="Login.jsp">Back to Login</a>
</div>

</body>
</html>
