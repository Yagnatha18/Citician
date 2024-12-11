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
    <link rel="stylesheet" href="css/adminhome.css">
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
    <br/>
    
&nbsp;Welcome <%= a != null ? a.getUsername() : "" %>
<div class="main-content">
    <div class="section">

        
            <a href="viewallreports" class="card">
            <div class="card-content">
                <img src="images/report.jpg" alt="view all Issues" class="card-image">
                <div class="card-text">
                    <h2 class="card-title">View all Issues</h2>
                    <p>view all the problem that citizens are facing in their constituency</p>
                </div>
            </div>
            </a>

            <a href="viewallcitizens" class="card">
                <div class="card-content">
                    <img src="images/track.jpg" alt="View all Citizens" class="card-image">
                    <div class="card-text">
                        <h2 class="card-title">View all citizens</h2>
                        <p>View all the citizens of the state</p>
                    </div>
                </div>
        </a>
        <a href="viewallpoliticians" class="card">
            <div class="card-content">
                <img src="images/track.jpg" alt="View all Politicians" class="card-image">
                <div class="card-text">
                    <h2 class="card-title">View all Politicians</h2>
                    <p>View all the Politicians of the state</p>
                </div>
            </div>
    </a>
        </div>
    

    <div class="section">
        <a href="viewallupdates" class="card">
            <div class="card-content">
            <img src="images/update.jpg" alt="view all Updates" class="card-image">
            <div class="card-text">
            <h2 class="card-title">View all Updates</h2>
            <p >See the updates of the state</p>
            </div>
        </div>
        </a>

<a href="viewallfeedbacks" class="card">
            <div class="card-content">
            <img src="images/feedback.jpg" alt="View all Feedbacks" class="card-image">
            <div class="card-text">
            <h2 class="card-title">View all Feedbacks</h2>
            <p >You can view all feedbacks on resolving issues or on governance</p>
        </div>
            </div>
</a>
<a href="citizenrequests" class="card">
    <div class="card-content">
        <img src="images/request.png" alt="View all requests" class="card-image">
        <div class="card-text">
            <h2 class="card-title">View all citizen requests</h2>
            <p>View all the requests of the citizens</p>
        </div>
    </div>
</a>
    </div>

    <div class="word-cloud">
        <img src="images/6336694401358742282.jpg" alt="Word Cloud">
    </div>
</div>

<footer>
    <div class="footer-content">
        <p>****</p>
        <p>@All Rights reserved</p>
    </div>
</footer>

<script src="script.js"></script>
</body>
</html>
