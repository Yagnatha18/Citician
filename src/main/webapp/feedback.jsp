<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citician</title>
    <link rel="stylesheet" href="css/feedback.css">
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
    </br></br></br>
<center><h2>Send Feedback</h2></center>
    <div class="main-content">
        
        <form class="feedback-form" method="post" action="addfeedback">
            <div class="form-group">
                <label for="subject">Subject<span class="required">*</span>:</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            <div class="form-group">
                <label for="location">Village/ City/ Town<span class="required">*</span>:</label>
                <input type="text" id="location" name="location" required>
            </div>
            <div class="form-group">
                <label for="report-id">Report Id:</label><small>(If you want to give feedback on an issue)</small>
                <input type="text" id="report-id" name="report-id">
                
            </div>
            <div class="form-group">
                <label for="feedback">Feedback<span class="required">*</span>:</label>
                <textarea id="feedback" name="feedback" rows="4" required></textarea>
            </div>
            <button type="submit" class="submit-button">Submit</button>
        </form>
    </div>

    
</body>
</html>
