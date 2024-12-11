<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/viewallreports.css">
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
    </br>
   
<center><h2>View All Issues</h2></center>
    <div class="main-content">
        
        <div class="view-issues">
            <table>
                <thead>
                    <tr>
                        <th>Report Id</th>
                        <th>Subject</th>
                        <th>Village/ City/Town</th>
                        <th>Assembly</th>
                        <th>Parliment</th>
                        <th>Issue</th>
                        <th>Status</th>
                        <th>Remarks</th>
                    </tr>
                </thead>
                <c:forEach items="${issues}" var="issue">
                <tbody>
                    <tr>
                        <td><c:out value="${issue.reportId}"></c:out></td>
                        <td><c:out value="${issue.subject}"></c:out></td>
                        <td><c:out value="${issue.location}"></c:out></td>
                        <td><c:out value="${issue.assembly}"></c:out></td>
                        <td><c:out value="${issue.parliment}"></c:out></td>
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
