<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/trackstatus.css">
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
   
<center><h2>Track Status</h2></center>
    <div class="main-content">
        
        <div class="track-status">
            <table>
                <thead>
                    <tr>
                        <th>Report Id</th>
                        <th>Subject</th>
                        <th>Village/ City/Town</th>
                        <th>Issue</th>
                        <th>Status</th>
                        <th>Remarks</th>
                    </tr>
                </thead>
                 <c:forEach items="${issuelist}" var="issue">
                <tbody>
                    <tr>
                        <td><c:out value="${issue.reportId}"></c:out></td>
                        <td><c:out value="${issue.subject}"></c:out></td>
                        <td><c:out value="${issue.location}"></c:out></td>
                        <td><c:out value="${issue.issue}"></c:out></td>
                        <td><c:out value="${issue.status}"></c:out></td>
                        <td><c:out value="${issue.remarks}"></c:out></td>
                    </tr>
                </tbody>
                </c:forEach>
            </table>
        </div>
    </div>

    
</body>
</html>
