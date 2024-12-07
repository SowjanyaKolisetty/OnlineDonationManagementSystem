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
    <title>Recipient Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  
<style>
    /* Reset and body styling */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f7f9fc;
        color: #333;
        display: flex;
        min-height: 100vh;
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
    /* Profile dropdown styling */
    .profile-container {
        position: absolute;
        top: 20px;
        right: 20px;
        display: flex;
        align-items: center;
        cursor: pointer;
        color: #333;
    }

    .profile-container img {
        border-radius: 50%;
        width: 40px;
        height: 40px;
        margin-right: 10px;
        border: 2px solid #2c3e50;
    }

    /* Centering Profile Card */
    .content {
        margin-left: 260px; /* Offset for the sidebar */
        padding: 20px;
        width: calc(100% - 260px);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .profile-card {
        width: 100%;
        max-width: 400px;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
        text-align: center;
        color: #2c3e50;
    }

    .profile-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    /* Profile Image */
    .profile-image {
        width: 100px;
        height: 100px;
        border-radius: 100%;
        border: 4px solid #3498db;
        margin-top: 20px;
    }

    /* Card Header */
    .profile-card h3 {
        font-size: 24px;
        color: #2c3e50;
        margin-top: 20px;
    }

    .profile-card p {
        font-size: 14px;
        color: #2c3e50;
        margin: 5px 0 10px;
    }

    /* Card Information */
    .profile-info {
        display: flex;
        justify-content: space-between;
        padding: 10px 10px;
        font-size: 14px;
        color: #34495e;
    }

    .profile-info span {
        color: #5d6d7e;
        font-weight: bold;
    }

    .profile-info b {
        color: #2c3e50;
    }

    /* Action Buttons */
    .profile-card .button-container {
        margin: 15px 0;
    }

    .profile-card .button-container a {
        text-decoration: none;
        padding: 10px 18px;
        margin: 0 8px;
        color: #ffffff;
        background-color: #2c3e50;
        border-radius: 4px;
        font-weight: bold;
        transition: background 0.3s;
        font-size: 14px;
    }

    .profile-card .button-container a:hover {
        background-color: #2d7aa8;
    }

    /* Responsive design */
    @media (max-width: 768px) {
        .navbar {
            width: 100%;
            height: auto;
            position: relative;
            box-shadow: none;
        }

        .content {
            margin-left: 0;
            width: 100%;
        }

        .profile-card {
            max-width: 100%;
        }
    }
     /* Contact Us Button Styling */
        .contact-us {
            position: absolute;
            bottom: 20px;
            right: 20px;
            display: flex;
            align-items: center;
            background-color: #ffffff;
            padding: 10px 20px;
            border-radius: 50px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            cursor: pointer;
            transition: box-shadow 0.3s;
            color: #333;
            font-weight: bold;
        }

        .contact-us img {
            border-radius: 50%;
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        .contact-us:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.25);
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
   
    <div class="content">
        <div class="profile-card">
           
            <h3><%= recipient.getName() %></h3>
            <p><b>Recipient ID:</b> <%= recipient.getId() %></p>
            <div class="profile-info">
                <div><b>Gender:</b> <span><%= recipient.getGender() %></span></div>
                <div><b>DOB:</b> <span><%= recipient.getDateofbirth() %></span></div>
            </div>
            <div class="profile-info">
                <div><b>Location:</b> <span><%= recipient.getLocation() %></span></div>
                <div><b>Email:</b> <span><%= recipient.getEmail() %></span></div>
            </div>
            <div class="profile-info">
                <div><b>Contact:</b> <span><%= recipient.getContact() %></span></div>
                <div><b>Status:</b> <span><%= recipient.getStatus() %></span></div>
            </div>
            <div class="button-container">
                <a href="updaterecipient">Update Profile</a>
                <a href="#">Change Password</a>
            </div>
        </div>
    </div>
</body>
</html>
