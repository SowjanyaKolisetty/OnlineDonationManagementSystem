<!DOCTYPE html>
<html>
<head>
    <title>Request Donation</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
         body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f9fc;
            color: #333;
            margin: 0;
            padding: 0;
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
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 40%;
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .form-container h2 {
            margin-bottom: 20px;
            font-size: 1.5rem;
            color: #004080;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            text-align: left;
        }
        input, textarea, button {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }
        textarea {
            resize: none;
        }
        button {
            background: #004080;
            color: white;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background: #00264d;
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
    <div class="form-container">
        <h2>Request Donation</h2>
        <form action="submit" method="post" enctype="multipart/form-data">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Your Name" required>
            
            <label for="address">Address</label>
            <textarea id="address" name="address" rows="3" placeholder="Enter your address" required></textarea>
            
            <label for="reason">Reason for Request</label>
            <textarea id="reason" name="reason" rows="3" placeholder="Explain your reason" required></textarea>
            
            <label for="picture">Upload Picture</label>
            <input type="file" id="image" name="image" accept="image/*">
            
            <button type="submit">Submit Request</button>
        </form>
    </div>
</body>
</html>
