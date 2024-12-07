<%@page import="com.klef.jfsd.springboot.model.Recipient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Recipient recipient = (Recipient) session.getAttribute("recipient");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Recipient Profile</title>
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
            height: 100vh;
            overflow: hidden;
        }

        /* Sidebar styling */
        .navbar {
            width: 240px;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            position: fixed;
            height: 100vh;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
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
            color: #f7f9f9;
            transition: color 0.3s;
        }

        .navbar ul li a:hover i {
            color: #c0d9e7;
        }

        /* Main content styling */
        .content {
            margin-left: 260px;
            padding: 30px;
            width: calc(100% - 260px);
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow-y: auto;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }

        h3 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="tel"],
        input[type="password"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #2c3e50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            margin: 5px;
            transition: background 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #2d7aa8;
        }

        h4 {
            text-align: center;
            color: red;
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

    <!-- Main Content -->
    <div class="content">
        <h4 align="center">
            <c:out value="${message}"></c:out>
        </h4>

        <h3><u>Update Recipient Profile</u></h3>
        <div class="form-container">
            <form method="post" action="updaterecipientprofile">
                <table>
                    <tr>
                        <td><label for="rid">Recipient ID</label></td>
                        <td><input type="number" id="rid" name="rid" readonly value="<%= recipient.getId() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="rname">Enter Name</label></td>
                        <td><input type="text" id="rname" name="rname" value="<%= recipient.getName() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="rgender" value="MALE" <%= recipient.getGender().equals("MALE") ? "checked" : "" %> required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="rgender" value="FEMALE" <%= recipient.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="rgender" value="OTHERS" <%= recipient.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="rdob">Enter Date of Birth</label></td>
                        <td><input type="date" id="rdob" name="rdob" value="<%= recipient.getDateofbirth() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="rlocation">Enter Location</label></td>
                        <td><input type="text" id="rlocation" name="rlocation" value="<%= recipient.getLocation() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="remail">Enter Email ID</label></td>
                        <td><input type="email" id="remail" name="remail" readonly value="<%= recipient.getEmail() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="rpwd">Enter Password</label></td>
                        <td><input type="password" id="rpwd" name="rpwd" value="<%= recipient.getPassword() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="rcontact">Enter Contact</label></td>
                        <td><input type="tel" id="rcontact" name="rcontact" value="<%= recipient.getContact() %>" required/></td>
                    </tr>
                </table>
                <div class="button-container">
                    <input type="submit" value="Update" />
                    <input type="reset" value="Clear" />
                </div>
            </form>
        </div>
    </div>

   </body>
   </html>