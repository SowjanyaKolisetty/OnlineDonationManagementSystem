<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
    
    
body {
    background-color: #d5d8dc; /* Light blue background */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

/* Navbar Styling */
.navbar {
    background-color: #76d7c4; /* Dark blue background for the navbar */
    overflow: hidden; /* Ensure the container is cleared */
    border-bottom: 3px solid #cccccc; /* Light blue border under navbar */
    box-shadow: 0px 4px 8px rgba(0, 0, 255, 0.1); /* Subtle shadow effect */
}

.navbar a {
    float: left;
    display: block;
    color: #ffffff; /* White text color */
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 18px;
}

.navbar a:hover {
    background-color: #4682b4; /* Steel blue color on hover */
    color: #f0f8ff; /* Light blue text on hover */
}

/* Styling for the Heading */
h3 {
    color: #003366; /* Dark blue color for the heading */
    font-size: 24px;
}

/* Form Container */
.form-container {
    width: 600px;
    margin: 50px auto; /* Center the form */
    padding: 20px;
    border: 1px solid #cccccc;
    border-radius: 8px;
    box-shadow: 0px 0px 15px rgba(0, 0, 255, 0.2); /* Blue shadow for the container */
    background-color: #ffffff;
}

/* Table Styling */
table {
    width: 100%;
    margin-top: 20px;
}

td {
    padding: 10px;
}

/* Label Styling */
label {
    font-weight: bold;
    color: #000080; /* Navy blue for the labels */
}

/* Input Fields */
input[type="text"],
input[type="password"],
input[type="date"],
input[type="number"],
input[type="email"],
select {
    width: 100%;
    padding: 8px;
    border: 1px solid #cccccc;
    border-radius: 4px;
}

/* Radio Buttons Styling */
input[type="radio"] {
    margin-right: 5px;
}

/* Buttons */
input[type="submit"],
input[type="reset"] {
    background-color: #4682b4; /* Steel blue for buttons */
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    margin-top: 10px;
    cursor: pointer;
    border-radius: 4px;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
    background-color: #5a9bd3; /* Lighter blue on hover */
}

/* Button Container */
.button-container {
    text-align: center;
}

/* Custom Styling for Select Dropdown */
select {
    height: 35px; /* Increase height for a better appearance */
}

/* Responsive Design */
@media screen and (max-width: 768px) {
    .form-container {
        width: 100%; /* Full width on smaller screens */
        padding: 15px;
    }
} 
    
    </style>
</head>
<body>

  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Recipient Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertrecipient">
            <table>
               <tr>
                    <td><label for="rname">Enter Name</label></td>
                    <td><input type="text" id="rname" name="rname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="rgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="rgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="rgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="rdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="rdob" name="rdob" required/></td>
                </tr>
                <tr>
                    <td><label for="rlocation">Enter Location</label></td>
                    <td><input type="text" id="rlocation" name="rlocation" required/></td>
                </tr>
                 <tr>
    <td><label for="remail">Email</label></td>
    <td>
        <input 
            type="email" 
            id="remail" 
            name="remail" 
            required 
            pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" 
            title="Enter a valid email address, e.g., example@example.com" 
        />
    </td>
</tr>
<tr>
    <td><label for="rpwd">Password</label></td>
    <td>
        <input 
            type="password" 
            id="rpwd" 
            name="rpwd" 
            required 
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}" 
            title="Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one digit, and one special character (@#$%^&+=)." 
        />
    </td>
</tr>

                
                 <tr>
    <td><label for="rcontact">Contact</label></td>
    <td>
        <input 
            type="text" 
            id="rcontact" 
            name="rcontact" 
            required 
            pattern="^[0-9]{10}$" 
            title="Please enter a valid 10-digit contact number."
        />
    </td>
</tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
