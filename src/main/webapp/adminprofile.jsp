<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
 Admin a = (Admin)session.getAttribute("admin");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/adminprofile.css">
</head>
<body>
    <div class="header">
        <div class="logo-container">
            <a href="adminhome"> <img src="images/image (1).png" alt="Logo" class="logo"></a>
            <h1 class="citician-title">Citician</h1>
        </div>
        <div class="nav">
            <a href="adminhome" class="nav-item home">Home</a>
            <a href="addpolitician" class="nav-item addpolitician">Add Politician</a>
            <a href="adminprofile" class="nav-item profile">Profile</a>
            <a href="adminlogin" class="nav-item logout">Logout</a>
        </div>
    </div>

</br></br>

<div class="main-content">
    <form class="profile-form" action="adminprofile.html">
        <div class="left-section">
            <div class="form-group">
                <label for="epic-no">ID No:</label>
                <input type="text" id="epic-no" name="epic-no" value="<%= a != null ? a.getUsername() : "" %>" readonly>
            </div>
            <center>
            <img src="../images/profilephoto.png" alt="Profile Image" class="profile-image"></center>
        </div>
        <div class="right-section">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%= a != null ? a.getUsername() : "" %>" readonly>
            </div>
            <div class="form-group">
                <label for="phone">Password</label>
                <input type="text" id="password" name="password" value="<%= a != null ? a.getPassword() : "" %>" readonly>
            </div>
            
            <div class="form-group">
                <label for="role">Role:</label>
                <input type="text" id="role" name="role" value="Admin" readonly>
            </div>
            
           
           
        </div>
    </form>
</div>


</body>
</html>
