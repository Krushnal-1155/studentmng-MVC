<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Reset Success</title>

<script>
function redirectToLogin() {
    alert("Password reset successfully! Redirecting to login page...");
    window.location.href = "Login.jsp";
}
</script>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f8ff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: rgba(0, 0, 0, 0.8);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px #0ff;
    width: 350px;
    text-align: center;
}

h2, p {
    color: white;
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
</head>
<body>

<div class="container">
    <h2>Password Reset</h2>

<%
    // Get parameters from request
    String userIdStr = request.getParameter("userId");
    String newPassword = request.getParameter("newPassword");

    if (userIdStr != null && newPassword != null) {
        try {
            int userId = Integer.parseInt(userIdStr);
            UserDAO userDao = new UserDAO();
            
            boolean success = userDao.updatePassword(userId, newPassword);

            if (success) {
%>
                <p>Password has been reset successfully!</p>
                <script>setTimeout(redirectToLogin, 2000);</script>
<%
            } else {
%>
                <p>Error: Unable to reset password. Try again.</p>
                <a href="resetPassword.jsp">Retry</a>
<%
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    } else {
%>
        <p>Invalid request! Please try again.</p>
        <a href="resetPassword.jsp">Retry</a>
<%
    }
%>

</div>

</body>
</html>