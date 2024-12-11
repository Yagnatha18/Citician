<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/login.css">
</head>

    <center><h1 style="color: rgba(0, 75, 108, 0.76);"><i>Citician</i></h1></center>
    <div class="header">
        <div class="logo-container">
            <a href="index"> <img src="images/image (1).png" alt="Logo" class="logo"></a>
            <h1 class="citician-title"></h1>
        </div>
        <div class="nav">
            <a href="index" class="nav-item home">Home</a>
            <a href="#" class="nav-item about">About</a>
            <a href="#" class="nav-item contact">Contact</a>
            <div class="nav-item login">
                <a href="#">Login</a>
                <div class="dropdown">
                    <a href="citizenlogin" class="dropdown-item">Citizen</a>
                    <a href="politicianlogin" class="dropdown-item">Politician</a>
                    <a href="adminlogin" class="dropdown-item">Admin</a>
                </div>
            </div>
        </div>
    </div>
</br> </br></br></br>
<center>
<h4 style="color: red">
<c:out value="${message}"></c:out><br/>
</h4>
<div class="login-container">
    <h2>Citizen Login</h2>
    <form action="checkCitizenLogin" method="post">
        <div class="form-group">
            <label for="cepicid">EPIC No</label>
            <input type="text" id="cepicid" name="cepicid" required>
        </div>
        <div class="form-group">
            <label for="cpassword">Password</label>
            <input type="password" id="cpassword" name="cpassword" required>
        </div>
        <button type="submit" class="login-btn" href="">Login</button>
    </form>
    <div class="signup-text">
        <span>Don't have an account?</span> 
        <a href="signup" class="signup-link">Sign Up</a>
    </div>
</div>
</center>
  
    <script src="script.js"></script>
</body>
</html>
