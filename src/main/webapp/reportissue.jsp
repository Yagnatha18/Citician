<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 Citizen c = (Citizen)session.getAttribute("citizen");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/reportissue.css">
</head>
    <body>
         <div class="header">
        <div class="logo-container">
            <a href="citizenhome"> <img src="images/image (1).png" alt="Logo" class="logo"></a>
            <h1 class="citician-title">Citician</h1>
        </div>
        <div class="nav">
            <a href="citizenhome" class="nav-item home">Home</a>
            <a href="#" class="nav-item about">About</a>
            <a href="citizenprofile" class="nav-item profile">Profile</a>
            <a href="citizenlogin" class="nav-item logout">Logout</a>
        </div>
    </div>
    </br>
   

    <div class="main-content">
       
        <form class="issue-form" method="post" action="addissue">
             <h2 align="center">Report an Issue</h2>
            <div class="form-group">
                <label for="subject">Subject<span class="required">*</span>:</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            <div class="form-group">
                <label for="epicid">Epic Id<span class="required">*</span>:</label>
                <input type="text" id="epicid" name="epicid" value="<%= c != null ? c.getEpicCardNumber() : "" %>" readonly="readonly">
                
            </div>
             <div>
            <label for="assembly">Assembly<span class="required">*</span>:</label>
                <input type="text" id="assembly" name="assembly" value="<%= c != null ? c.getAssembly() : "" %>" readonly="readonly">
               
                 </div>
                 
                  <div>
                   <label for="parliment">Parliment<span class="required">*</span>:</label>
                <input type="text" id="parliment" name="parliment" value="<%= c != null ? c.getParliament() : "" %>" readonly="readonly">
                  </div>
            <div class="form-group">
                <label for="location">Village/ City/ Town<span class="required">*</span>:</label>
                <input type="text" id="location" name="location" required>
            </div>
            <div class="form-group">
                <label for="issue">Issue<span class="required">*</span>:</label>
                <textarea id="issue" name="issue" rows="4" required></textarea>
            </div>
            <button type="submit" class="submit-button">Submit</button>
        </form>
    </div>

    
</body>
</html>