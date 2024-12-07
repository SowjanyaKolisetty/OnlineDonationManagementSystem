<%@page import="com.klef.jfsd.springboot.model.Recipient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
    <title>Spring Boot</title>
    <style >
   /* General page styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

/* Center header */
h2 {
    margin-top: 50px;
    font-size: 2.5em;
    color: #333;
    text-transform: uppercase;
}

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
/* Animation for hover effect */
@keyframes slideIn {
    from {
        transform: translateX(-100%);
        opacity: 0;
    }
    to {
        transform: translateX(0);
        opacity: 1;
    }
}

/* Apply animation to navbar links */
.navbar a {
    animation: slideIn 0.5s ease-out;
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
        <li><a href="recipientcontactus"><i class="fas fa-tasks"></i>Contact Us</a></li>
        <li><a href="viewallreqs"><i class="fas fa-envelope"></i>My Requests</a></li>
        <li><a href="recipientlogout"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
    </ul>
</div>
</body>
</html>