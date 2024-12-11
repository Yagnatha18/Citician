<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="viewallfeedbacks.css">
</head>
<body>
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/viewallfeedbacks.css">
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
<center> <h2>View All Feedbacks</h2></center>
    <div class="content">
       
        <table class="feedback-table">
            <thead>
                <tr>
                    <th>Feedback Id</th>
                    <th>Subject</th>
                    <th>Village/City/Town</th>
                    <th>Report Id</th>
                    <th>Citizen Id (EPIC ID)</th>
                    <th>Assembly</th>
                    <th>Parliment</th>
                    <th>Feedback</th>
                    
                </tr>
            </thead>
            <c:forEach items="${feeds}" var="feed">
            <tbody>
                <tr>
                    <td><c:out value="${feed.feedbackid}"></c:out></td>
                    <td><c:out value="${feed.subject}"></c:out></td>
                    <td><c:out value="${feed.location}"></c:out></td>
                    <td><c:out value="${feed.reportId}"></c:out></td>
                    <td><c:out value="${feed.assembly}"></c:out></td>
                    <td><c:out value="${feed.parliment}"></c:out></td>
                    <td><c:out value="${feed.epicid}"></c:out></td>
                    <td><c:out value="${feed.feedback}"></c:out></td>
                </tr>
            </tbody>
            </c:forEach>
        </table>
    </div>

    <script src="script.js"></script>
</body>
</html>