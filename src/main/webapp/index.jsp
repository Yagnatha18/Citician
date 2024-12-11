<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
    <center><h1 style="color: rgba(0, 75, 108, 0.76);"><i>Citician</i></h1></center>
    <div class="header">
        <div class="logo-container">
            <a href="index"><img src="images/image (1).png" alt="Logo" class="logo"></a>
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
</br>
    <div class="main-content">
        <div class="section">

            
                <a href="citizenlogin" class="card">
                <div class="card-content">
                    <img src="images/report.jpg" alt="Report an Issue" class="card-image">
                    <div class="card-text">
                        <h2 class="card-title">Report an Issue</h2>
                        <p>Report the problem that you are facing in your constituency</p>
                    </div>
                </div>
                </a>
</br>
<a href="citizenlogin" class="card">
                <div class="card-content">
                    <img src="images/track.jpg" alt="Track Status" class="card-image">
                    <div class="card-text">
                        <h2 class="card-title">Track Status</h2>
                        <p>Track the status of the issues that you have raised</p>
                    </div>
                </div>
</a>
            </div>
        

        <div class="section">
            <a href="citizenlogin" class="card">
                <div class="card-content">
                <img src="images/update.jpg" alt="Updates" class="card-image">
                <div class="card-text">
                <h2 class="card-title">Updates</h2>
                <p >See the updates of your constituency</p>
                </div>
            </div>
            </a>
</br>
<a href="citizenlogin" class="card">
                <div class="card-content">
                <img src="images/feedback.jpg" alt="Send Feedback" class="card-image">
                <div class="card-text">
                <h2 class="card-title">Send Feedback</h2>
                <p >You can send feedback on resolving issues or on governance</p>
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
