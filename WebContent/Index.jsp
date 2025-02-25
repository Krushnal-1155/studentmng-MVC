<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-image: url('https://c4.wallpaperflare.com/wallpaper/15/512/990/abstract-blue-digital-art-wallpaper-preview.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    padding: 20px;
    animation: fadeIn 1.5s ease-in;
}

h1 {
    color: white;
    text-align: center;
    font-size: 32px; /* Increased heading size */
    animation: slideDown 1s ease-out;
}

p {
    font-size: 35px; /* Increased font size for better readability */
    line-height: 1.8; /* Increased line height for spacing */
    color: white; /* Set text color to white for visibility */
    text-align: center;
    animation: fadeIn 2s ease-in;
}

a {
    display: inline-block;
    padding: 12px 24px;
    margin-top: 20px;
    font-size: 20px;
    color: #fff;
    background-color: blue;
    border-radius: 5px;
    text-decoration: none;
    transition: transform 0.3s ease-in-out;
}

a:hover {
    background-color: darkblue;
    transform: scale(1.1);
}

@keyframes neonBorder {
    0% {
        box-shadow: 0 0 10px #ff0000;
        border-color: #ff0000;
    }
    25% {
        box-shadow: 0 0 15px #00ff00;
        border-color: #00ff00;
    }
    50% {
        box-shadow: 0 0 20px #0000ff;
        border-color: #0000ff;
    }
    75% {
        box-shadow: 0 0 15px #ff00ff;
        border-color: #ff00ff;
    }
    100% {
        box-shadow: 0 0 10px #ff0000;
        border-color: #ff0000;
    }
}

.neon-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 50vh;
}

.neon-image {
    width: 400px;
    height: 300px;
    border: 5px solid #ff0000; /* Initial border color */
    border-radius: 10px;
    animation: neonBorder 2s infinite alternate;
}




</style>
</head>
<body>

    <h1>Welcome to the Student Management System</h1>

    <!-- Adding an image -->
   <div class="neon-container">
    <img class="neon-image" src="https://img.freepik.com/premium-vector/cartoon-character-with-jacket-black-background_608506-11849.jpg"
        alt="Student Management System">
</div>


    <p>
        Welcome to the <strong>Student Management System</strong> Login page.<br>
        This platform is designed to help students manage their academic journey with ease.<br>
        Whether you need to log in to your account, register as a new student,<br>
        or check your results, we have got you covered.
    </p>

    <p>
        <a href="Login.jsp">Login</a>
    </p>

</body>
</html>
