<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/viewallpoliticians.css">
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
<center><h2>View All Politicians</h2></center>
<div class="main-content">
    
    <div class="updates">
    <table>
        <tr>
            <th>Politician ID</th>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>Term</th>
            <th>MP/MLA</th>
            <th>Assembly/Parliament</th>
            <th>State</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${politicianlist}" var="politician">
        <tr>
            <td><c:out value="${politician.idCode}"></c:out></td>
            <td><c:out value="${politician.fullName}"></c:out></td>
            <td><c:out value="${politician.mobileNo}"></c:out></td>
            <td><c:out value="${politician.term}"></c:out></td>
            <td><c:out value="${politician.mpmla}"></c:out></td>
            <td><c:out value="${politician.assemblyparliament}"></c:out></td>
            <td><c:out value="${politician.state}"></c:out></td>
            <td><a href="viewallpoliticians"><button class="update-btn" >Delete</button></a></td>
        </tr>
        </c:forEach>
    </table>
</div>
            

<script src="script.js"></script>
</body>
</html>
