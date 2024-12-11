<%@page import="com.klef.jfsd.springboot.model.Politician"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%
 Politician p = (Politician)session.getAttribute("politician");
    %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Citician</title>
        <link rel="stylesheet" href="css/politicianprofile.css">
    </head>
    <body>
        <div class="header">
            <div class="logo-container">
                <a href="politicianhome"> <img src="images/image (1).png" alt="Logo" class="logo"></a>
                <h1 class="citician-title">Citician</h1>
            </div>
            <div class="nav">
                <a href="politicianhome" class="nav-item home">Home</a>
                <a href="#" class="nav-item about">About</a>
                <a href="politicianprofile" class="nav-item profile">Profile</a>
                <a href="politicianlogin" class="nav-item logout">Logout</a>
            </div>
        </div>
    </br></br></br>

    <div class="content">
        <form class="form" action="politicianprofile.html">
            <div class="left-section">
                <div class="form-group">
                    <label for="politician-id">Politician ID :</label>
                    <input type="text" id="politician-id" value="<%= p != null ? p.getIdCode() : "" %>">
                </div>
                <div >
                    <center>
                    <img src="../images/profilephoto.png" alt="Profile Picture" class="profile-image"></center>
                </div>
            </div>

            <div class="right-section">
                <div class="form-group">
                    <label for="name">Name :</label>
                    <input type="text" id="name"  value="<%= p != null ? p.getFullName() : "" %>">
                </div>
                <div class="form-group">
                    <label for="phone">Phone No :</label>
                    <input type="text" id="phone" value="<%= p != null ? p.getMobileNo() : "" %>">
                </div>
                <div class="form-group">
                    <label for="state">State :</label>
                    <input type="text" id="state"  value="<%= p != null ? p.getState() : "" %>" readonly>
                </div>
                <div class="form-group">
                    <label for="mp-mla">MP/MLA :</label>
                    <input type="text" id="mp-mla"  value="<%= p != null ? p.getMpmla() : "" %>" readonly>
                </div>
                <div class="form-group">
                    <label for="assembly">Assembly/Parliament:</label>
                    <input type="text" id="assembly"  value="<%= p != null ? p.getAssemblyparliament() : "" %>" readonly>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="text" id="password" value="<%= p != null ? p.getPassword() : "" %>" readonly>
                </div>

                <!-- Move the update button inside the right section -->
                <div class="form-group update-section">
                    <button type="submit" class="update-btn">Update</button>
                </div>
            </div>
        </form>
    </div>
    <script src="script.js"></script>
</body>
</html>
