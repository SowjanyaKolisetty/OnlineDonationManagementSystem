<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.springboot.model.Recipient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Recipient recipient = (Recipient) session.getAttribute("recipient");
if(recipient==null)
{
  response.sendRedirect("recipientsessionexpiry");
  return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipient Home</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
/* Reset and body styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #eaf3f9;
    color: #333;
    display: flex;
    height: 100vh;
    overflow: hidden;
}
/* Sidebar styling */
       .navbar {
            width: 240px;
            background-color: #2c3e50;
            color: white;
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .navbar h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 25px;
            font-weight: bold;
            letter-spacing: 1px;
        }
        .navbar ul {
            list-style-type: none;
            padding: 0;
        }
        .navbar ul li {
            margin: 15px 0;
        }
        .navbar ul li a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            border-radius: 4px;
            transition: background 0.3s, transform 0.3s;
            font-size: 16px;
        }
        .navbar ul li a:hover {
            background-color: #34495e;
            transform: translateX(5px);
        }
        .navbar ul li a i {
            margin-right: 12px;
            font-size: 20px;
        }
/* Main content styling */
.content {
    margin-left: 260px;
    padding: 30px;
    width: calc(100% - 260px);
    display: flex;
    justify-content: center;
    align-items: center;
}

.welcome-container {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 100%;
    max-width: 600px;
}

.welcome-container h2 {
    font-size: 2em;
    color: #34495e;
    margin-bottom: 10px;
    font-weight: bold;
}

.welcome-container p {
    font-size: 1.1em;
    color: #777;
    margin-bottom: 20px;
}

.welcome-container .btn {
    background-color: #3498db;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    font-size: 1em;
    font-weight: bold;
    text-decoration: none;
    cursor: pointer;
    transition: background 0.3s;
}

.welcome-container .btn:hover {
    background-color: #2d7aa8;
}
</style>
</head>
<body>
<div class="navbar">
    <h1>ONECAUSE</h1>
    <ul>
        <li><a href="recipienthome"><i class="fas fa-home"></i>Home</a></li>
        <li><a href="recipientprofile"><i class="fas fa-user"></i>Profile</a></li>
        <li><a href="viewalldonationsbyrecipient"><i class="fas fa-hand-holding-heart"></i>View All Donations</a></li>
        <li><a href="recipientcontactus"><i class="fas fa-envelope"></i>Contact Us</a></li>
        <li><a href="viewallreqs"><i class="fas fa-tasks"></i>My Requests</a></li>
        <li><a href="recipientlogout"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
    </ul>
</div>

<!-- Main Content -->
<div class="content">
    <div class="welcome-container">
        <h2>Welcome, <%= recipient.getName() %>!</h2>
        <p>This is your personal recipient home page. From here, you can manage your profile, view messages, and configure settings.</p>
        <a class="btn" href="#">Explore More</a>
    </div>
</div>
</body>
</html>
