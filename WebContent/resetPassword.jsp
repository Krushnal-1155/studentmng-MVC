<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-image: url('https://static.vecteezy.com/system/resources/previews/033/112/930/non_2x/the-slide-background-promotes-password-security-awareness-in-digital-environments-ai-generated-photo.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Container with looping border transition */
.container {
    background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
    padding: 20px;
    border-radius: 10px;
    width: 350px;
    text-align: center;
    position: relative;
    border: 5px solid transparent;
    animation: borderAnimation 3s linear infinite;
}

/* Looping border animation */
@keyframes borderAnimation {
    0% { border-color: #ff0000; box-shadow: 0 0 10px #ff0000; }
    25% { border-color: #00ff00; box-shadow: 0 0 15px #00ff00; }
    50% { border-color: #0000ff; box-shadow: 0 0 20px #0000ff; }
    75% { border-color: #ff00ff; box-shadow: 0 0 15px #ff00ff; }
    100% { border-color: #ff0000; box-shadow: 0 0 10px #ff0000; }
}

h2 {
    color: white;
    margin-bottom: 20px;
}

input[type="password"] {
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

.message {
    color: red;
    font-size: 14px;
    margin-top: 10px;
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
function validatePassword() {
    var newPassword = document.getElementById("newPassword").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    if (newPassword.length < 6) {
        document.getElementById("errorMessage").innerText = "Password must be at least 6 characters long.";
        return false;
    }

    if (newPassword !== confirmPassword) {
        document.getElementById("errorMessage").innerText = "Passwords do not match!";
        return false;
    }

    return true;
}
</script>

</head>
<body>

    <div class="container">
        <h2>Reset Password</h2>
        <form action="saveNewPassword.jsp" method="post" onsubmit="return validatePassword()">
            <input type="hidden" name="userId" value="<%=request.getParameter("userId")%>">
            <input type="password" id="newPassword" name="newPassword" placeholder="Enter New Password" required>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm New Password" required>

            <div class="message" id="errorMessage"></div>

            <button type="submit">Save New Password</button>
        </form>

        <a href="Login.jsp">Back to Login</a>
    </div>

</body>
</html>
