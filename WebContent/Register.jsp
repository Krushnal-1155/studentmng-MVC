<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style>
    /* Styling the body with a background image */
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://t4.ftcdn.net/jpg/09/76/72/17/360_F_976721745_yzB81duFuTxKqRrRSBXcNWrx3JuKX3Ei.jpg'); /* Background image added */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* Container to align image on the left and form on the right */
    .container {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 80%;
        max-width: 1000px;
        background: rgba(255, 255, 255, 0.2); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
    }

    /* Styling for the image container */
    .image-container {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding-right: 20px;
    }

    @keyframes neonBlink {
    0% { border: 5px solid #0ff; box-shadow: 0 0 10px #0ff, 0 0 20px #0ff; }
    50% { border: 5px solid red; box-shadow: 0 0 20px red, 0 0 30px red; }
    100% { border: 5px solid #0ff; box-shadow: 0 0 10px #0ff, 0 0 20px #0ff; }
}

.image-container img {
    width: 400px; /* Adjust as needed */
    height: auto;
    border-radius: 10px;
    border: 5px solid #0ff; /* Initial border */
    box-shadow: 0 0 10px #0ff;
    animation: neonBlink 1.5s infinite alternate ease-in-out; /* Looping neon effect */
    transition: all 0.4s ease-in-out;
}


    /* Styling for the form container */
    .form-container {
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h1 {
        color: black;
        text-align: center;
        margin-bottom: 20px;
    }

    form {
        background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        width: 300px;
        display: flex;
        flex-direction: column;
        color: white;
    }
    /* Default Neon Border Animation */
@keyframes neonBorder {
    0% { border: 5px solid #0ff; box-shadow: 0 0 10px #0ff, 0 0 20px #0ff; }
    50% { border: 5px solid #0ff; box-shadow: 0 0 15px #0ff, 0 0 30px #0ff; }
    100% { border: 5px solid #0ff; box-shadow: 0 0 10px #0ff, 0 0 20px #0ff; }
}

/* High Neon Glow When Clicked */
@keyframes neonClickEffect {
    0% { border: 5px solid #0ff; box-shadow: 0 0 25px #0ff, 0 0 50px #0ff; }
    50% { border: 5px solid #0ff; box-shadow: 0 0 35px #0ff, 0 0 70px #0ff; }
    100% { border: 5px solid #0ff; box-shadow: 0 0 25px #0ff, 0 0 50px #0ff; }
}

/* Apply Default Neon Animation */
form {
    background-color: rgba(0, 0, 0, 0.8);
    padding: 20px;
    border-radius: 10px;
    width: 300px;
    display: flex;
    flex-direction: column;
    color: white;
    animation: neonBorder 2s linear infinite;
    transition: all 0.5s ease-in-out;
}

/* Activate High Neon Glow on Click */
form:active {
    animation: neonClickEffect 0.5s infinite alternate ease-in-out;
}
    

    input[type="text"] {
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: calc(100% - 22px);
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

<!-- Container to hold image on the left and form on the right -->
<div class="container">
    <!-- Image on the left -->
    <div class="image-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGA8b1NAIi8FB9C3y97mu0ho-zWddvjmrvbVjqitbMM3fqbkj_ZccZKWIcE6h6Slm3nqQ&usqp=CAU" alt="Student Image">
    </div>

    <!-- Registration Form on the right -->
    <div class="form-container">
        <h1>Welcome to Register Page</h1>
        <form action="Setpassword.jsp" method="post">
            <label>Student RollNo:</label>
            <input type="text" name="rollNo" placeholder="Enter your Roll Number">
            <label>Student Name:</label>
            <input type="text" name="name" placeholder="Enter your Name">
            <label>Student Mobile Number:</label>
            <input type="text" name="mnumber" placeholder="Enter your Mobile Number">
            <label>Student Email Address:</label>
            <input type="text" name="email" placeholder="Enter your Email Address">
            <label>Student Mother Name:</label>
            <input type="text" name="mothername" placeholder="Enter your Mother Name">
            <label>Student Address:</label>
            <input type="text" name="address" placeholder="Enter your Address">
            <label>Student Course:</label>
            <input type="text" name="course" placeholder="Enter your Course">
            <label>Student Department:</label>
            <input type="text" name="department" placeholder="Enter your Department">
            <button type="submit">Submit</button>
        </form>
    </div>
</div>

</body>
</html>
