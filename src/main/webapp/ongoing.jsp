<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Current Drives - Donation Platform</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        
       
    </style>
</head>
<body>

<%@include file="mainnavbar.jsp" %>
    

    <!-- Ongoing Drives Section -->
    <section class="ongoing-drives">
        <div class="container">
            <h1>Current Donation Drives</h1>
            <p>Below are the ongoing donation drives. Please consider registering to donate and support those affected.</p>
            <br>
            <div class="drives-grid">
                <!-- Drive 1 -->
                <div class="drive">
                    <img src="images/ong-1.jpg" alt="Flood Relief Drive - Kerala, India">
                    <h3>Flood Relief Drive - Kerala, India</h3>
                    <p>Location: Kerala, India</p>
                    <p>Disaster: Severe Flooding</p>
                    <p>Urgently Needed: Food, Water, Medical Supplies</p>
                </div>
                
                <!-- Drive 2 -->
                <div class="drive">
                    <img src="images/ong-7.jpg" alt="Wildfire Relief Drive - California, USA">
                    <h3>Wildfire Relief Drive - California, USA</h3>
                    <p>Location: California, USA</p>
                    <p>Disaster: Wildfires</p>
                    <p>Urgently Needed: Shelter, Water, Protective Gear</p>
                </div>
                
                <!-- Drive 3 -->
                <div class="drive">
                    <img src="images/ong-8.jpg" alt="Earthquake Relief Drive - Turkey">
                    <h3>Earthquake Relief Drive - Turkey</h3>
                    <p>Location: Turkey</p>
                    <p>Disaster: Earthquake</p>
                    <p>Urgently Needed: Clothing, Blankets, Medical Supplies</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Register to Donate Section -->
    <section class="register-to-donate">
        <div class="container">
            <h2>Register to Donate</h2>
            <p>Your contribution can make a huge difference in the lives of those affected by disasters. Join us today and help those in need.</p>
            <a href="" class="register-btn">Register Now</a>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-left">
                    <h3>Contact Us</h3>
                    <p>Email: support@donationplatform.com</p>
                    <p>Phone: +123 456 7890</p>
                </div>
                <div class="footer-center">
                    <h3>Follow Us</h3>
                    <a href="" class="social-media-link">Facebook</a>
                    <a href="#" class="social-media-link">Twitter</a>
                    <a href="#" class="social-media-link">Instagram</a>
                </div>
                <div class="footer-right">
                    <h3>Quick Links</h3>
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms of Service</a>
                    <a href="#">FAQ</a>
                </div>
            </div>
                   </div>
    </footer>


    <script src="script.js"></script>
</body>
</html>
