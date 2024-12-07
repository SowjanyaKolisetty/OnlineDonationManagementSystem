<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
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

           /* Sidebar styling */
    .navbar {
        width: 240px;
        background-color: #2c3e50;
        color: white;
        padding: 20px;
        position: fixed;
        height: 100vh;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        left: 0;
        top: 0;
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
        }

        /* Main content and form styling */
        .main-content {
            margin-left: 260px;
            padding: 40px;
            width: calc(100% - 260px);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            width: 100%;
            max-width: 600px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            padding: 15px 15px;
            margin: auto;
            transition: all 0.3s;
        }

        .form-container h1 {
            font-size: 28px;
            font-weight: 700;
            color: #333;
            text-align: center;
            margin-bottom: 10px;
        }

        .form-container p.subtitle {
            font-size: 16px;
            color: #666;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Form groups with smooth edges and labels on the left */
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            gap: 15px;
        }

        .form-group label {
            width: 100px;
            font-weight: 600;
            font-size: 16px;
            color: #333;
            text-align: right;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group textarea {
            width: 100%;
            padding: 10px 15px;
            font-size: 16px;
            color: #333;
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-sizing: border-box;
            outline: none;
            transition: border-color 0.3s;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group textarea:focus {
            border-color: #00164f;
        }

        .form-group input[type="text"]::placeholder,
        .form-group input[type="email"]::placeholder,
        .form-group textarea::placeholder {
            color: #aaa;
            font-size: 14px;
        }

        /* Submit button styling */
        .form-container button {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            font-weight: 600;
            color: #ffffff;
            background-color: #00164f;
            border: none;
            border-radius: 10px;
            
            transition: background-color 0.3s, transform 0.3s;
            margin-top: 20px;
        }

        .form-container button:hover {
            background-color: #000c3a;
            transform: scale(1.02);
        }

        /* Footer message */
        .form-container p.footer-message {
            font-size: 14px;
            color: #666;
            text-align: center;
            margin-top: 20px;
        }
   
    </style>
</head>
<body>
 <!-- Sidebar Navbar -->
    <div class="navbar">
        <h1>ONECAUSE</h1>
        <ul>
            <li><a href="donorhome"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="donorprofile"><i class="fas fa-user"></i> Profile</a></li>
            <li><a href="viewalldonations"><i class="fas fa-hand-holding-heart"></i> My Donations</a></li>
            <li><a href="orders"><i class="fas fa-money-bill-alt"></i> Make a Payment</a></li>
            
            <li><a href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

<!-- Main content for the form -->
<div class="main-content">
    <div class="form-container">
        <h1>Contact Us</h1>
        <p class="subtitle">We will get back to you asap!</p>

        <form action="sendemail" method="post">
            <div class="form-group">
                <label for="name">Name <span style="color: red;">*</span></label>
                <input type="text" id="name" name="name" placeholder="Name" required>
            </div>

            <div class="form-group">
                <label for="email">Email <span style="color: red;">*</span></label>
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>

            <div class="form-group">
                <label for="subject">Subject <span style="color: red;">*</span></label>
                <input type="text" id="subject" name="subject" placeholder="Subject" required>
            </div>

            <div class="form-group">
                <label for="message">Message <span style="color: red;">*</span></label>
                <textarea id="message" name="message" rows="5" placeholder="Message" required></textarea>
            </div>

            <button type="submit">Send</button>
        </form>
    </div>
</div>

</body>
</html>
