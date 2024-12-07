<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Platform</title>
    <link rel="stylesheet" href="styles.css">
   
  
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
        @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css');

        /* Urgent Call to Action Section CSS */
        .urgent-carousel {
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            overflow: hidden;
        }
        .carousel-container {
            display: flex;
            transition: transform 0.5s ease;
        }
        .urgent-section {
            flex: 0 0 100%;
            max-width: 100%;
            background-color: #ffeded;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            text-align: center;
            position: relative;
        }
        .urgent-section img {
            width: 100%;
            max-height: 250px;
            object-fit: cover;
            border-radius: 10px;
        }
        .urgent-text {
            background-color: rgba(255, 0, 0, 0.8);
            color: white;
            font-size: 24px;
            font-weight: bold;
            padding: 10px;
            position: absolute;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 5px;
            z-index: 10;
        }
        .urgent-description {
            font-size: 18px;
            color: #333;
            margin-top: 20px;
        }
        .countdown-timer {
            margin: 20px 0;
            font-size: 28px;
            color: #ff0000;
            font-weight: bold;
        }
        .donate-now-button {
            display: inline-block;
            padding: 15px 30px;
            background-color: #ff5722;
            color: white;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            text-decoration: none;
            border-radius: 50px;
            transition: background-color 0.3s;
        }
        .donate-now-button:hover {
            background-color: #e64a19;
        }
        /* Arrow Buttons */
        .prev, .next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 30px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        .prev {
            left: 10px;
        }
        .next {
            right: 10px;
        }
        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
    </style>
</head>
<body>

    <%@include file="mainnavbar.jsp" %>

    <!-- Header Section with Changing Background Images -->
    <header class="hero">
        <div class="container">
            <div class="header-text">
                <h1>Join Our Mission to Help Those in Need</h1>
                <p>Connecting donors with recipients during emergencies, improving lives, and bringing hope where it's needed most.</p>
                <div class="cta-buttons">
                    
                    <a href="login1.html" class="btn donate-btn">Donate Now</a>
                </div>
            </div>
        </div>
    </header>

    <!-- Ongoing Drives Section -->
    <section id="ongoing-drives">
        <div class="container">
            <h2>Ongoing Donation Drives</h2>
            <div class="drives-grid">
                <div class="drive">
                    <img src="https://image.lexica.art/full_webp/ef2fd043-8774-4221-b671-fdb1a16fac3c" alt="Food Drive">
                    <h3>Food and Water for Flood Victims</h3>
                    <p>500 people in need</p>
                    <p>Items Requested: Bottled water, Non-perishable food, Clothes</p>
                </div>
                <div class="drive">
                    <img src="https://www.globalgiving.org/pfil/22681/pict_original.jpg" alt="Medical Drive">
                    <h3>Medical Supplies for Earthquake Victims</h3>
                    <p>300 people in need</p>
                    <p>Items Requested: First-aid kits, Medicines, Blankets</p>
                </div>
                <div class="drive">
                    <img src="https://www.bec.org/wp-content/uploads/2022/01/BIL080122-2.jpg" alt="Education Drive">
                    <h3>Education Supplies for Underprivileged Children</h3>
                    <p>200 people in need</p>
                    <p>Items Requested: Books, Stationery, School bags</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Urgent Call to Action Section -->
    <!-- Urgent Call to Action Section with Carousel -->
    <div class="urgent-carousel">
        <div class="carousel-container" id="carouselContainer">
            <!-- First Urgent Section -->
            <section class="urgent-section">
                <div class="urgent-text">Urgent: Help Flood Victims Now!</div>
                <img src="images/floods1.jpg" alt="Flood Disaster Area">
                <p class="urgent-description">
                    Thousands of families have been displaced due to devastating floods. Your donation can provide food, water, and shelter to those affected. Act now to make a difference.
                </p>
                <div class="countdown-timer" id="countdown1">Time Left: 00 Days 00:00:00</div>
                <a href="" class="donate-now-button">Donate Now</a>
            </section>

            <!-- Second Urgent Section -->
            <section class="urgent-section">
                <div class="urgent-text">Urgent: Earthquake Relief Needed!</div>
                <img src="images/p3.jpg" alt="Earthquake Disaster Area">
                <p class="urgent-description">
                    Thousands are in need of medical supplies and food after a catastrophic earthquake. Your contribution can help save lives.
                </p>
                <div class="countdown-timer" id="countdown2">Time Left: 00 Days 00:00:00</div>
                <a href="" class="donate-now-button">Donate Now</a>
            </section>

            <!-- Third Urgent Section -->
            <section class="urgent-section">
                <div class="urgent-text">Urgent: Support Refugees!</div>
                <img src="images/p4.jpg" alt="Refugee Crisis">
                <p class="urgent-description">
                    Millions of refugees need urgent assistance. Donate to provide them with food, water, and essential medical care.
                </p>
                <div class="countdown-timer" id="countdown3">Time Left: 00 Days 00:00:00</div>
                <a href="" class="donate-now-button">Donate Now</a>
            </section>
        </div>

        <!-- Navigation Arrows -->
        <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
        <button class="next" onclick="moveSlide(1)">&#10095;</button>
    </div>

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

<script>
        // Carousel Slider Logic
        let currentSlide = 0;

        function moveSlide(step) {
            const slides = document.getElementsByClassName("urgent-section");
            const totalSlides = slides.length;
            currentSlide = (currentSlide + step + totalSlides) % totalSlides;
            document.getElementById('carouselContainer').style.transform = `translateX(-${currentSlide * 100}%)`;
        }

        // Countdown Timer Logic for each section
        function startCountdown(endTime, elementId) {
            const countdownElement = document.getElementById(elementId);

            function updateTimer() {
                const now = new Date().getTime();
                const distance = endTime - now;

                const days = Math.floor(distance / (1000 * 60 * 60 * 24));
                const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((distance % (1000 * 60)) / 1000);

                countdownElement.innerHTML = `Time Left: ${days} Days ${hours}:${minutes}:${seconds}`;

                if (distance < 0) {
                    clearInterval(countdownInterval);
                    countdownElement.innerHTML = "Campaign Ended";
                }
            }

            const countdownInterval = setInterval(updateTimer, 1000);
            updateTimer(); // Initial call to display the timer immediately
        }

        // Set campaign end times for each section
        const campaignEndTime1 = new Date("2024-10-01T00:00:00").getTime();
        const campaignEndTime2 = new Date("2024-11-01T00:00:00").getTime();
        const campaignEndTime3 = new Date("2024-12-01T00:00:00").getTime();

        // Initialize countdowns for each section
        startCountdown(campaignEndTime1, 'countdown1');
        startCountdown(campaignEndTime2, 'countdown2');
        startCountdown(campaignEndTime3, 'countdown3');
    </script>

    </body>
</html>
