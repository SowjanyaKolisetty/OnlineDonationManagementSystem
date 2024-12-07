<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration & SignUp</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* Reset default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Navbar Section */
        .navbar {
            background-color: #2d3a8c;
            color: #fff;
            padding: 15px 0;
            position: fixed;
            top: 0;
            width: 100%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        .navbar .container {
            width: 90%;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
        }

        .navbar .logo {
            font-size: 2rem;
            font-weight: 600;
            color: #fff;
            text-decoration: none;
        }

        .navbar .nav-links {
            list-style: none;
            display: flex;
        }

        .navbar .nav-links li {
            margin-left: 20px;
        }

        .navbar .nav-links a {
            text-decoration: none;
            color: #fff;
            font-size: 1.1rem;
            padding: 8px 14px;
            transition: color 0.3s ease, background-color 0.3s ease;
            border-radius: 5px;
        }

        .navbar .nav-links a:hover {
            color: #ffeb3b;
            background-color: #1d2966;
        }

        /* Body and Background */
        body {
            background: linear-gradient(135deg, #e0eafc 0%, #cfdef3 50%, #e6e9f0 100%);
            padding-top: 80px;
            font-size: 16px;
        }

        /* Section Containers */
        .section-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px auto;
            width: 90%;
            max-width: 1200px;
        }

        /* Form Container */
        .form-container {
            background: #fff;
            padding: 30px 20px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            margin-bottom: 20px;
        }

        h3 {
            color: #2d3a8c;
            text-align: center;
            margin-bottom: 20px;
            position: relative;
            display: inline-block;
        }

        h3::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 3px;
            background-color: #ffeb3b;
            bottom: -5px;
            left: 0;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px 5px;
            font-size: 1rem;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        input[type="submit"], input[type="reset"], button {
            background-color: #2d3a8c;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s;
        }

        input[type="submit"]:hover, input[type="reset"]:hover, button:hover {
            background-color: #1a252f;
        }

        textarea {
            resize: none;
        }

        /* Dropdown Select */
        select {
            appearance: none;
            background-image: url('data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"%3E%3Cpath fill="none" d="M0 0h24v24H0z"%3E%3C/path%3E%3Cpath d="M12 14l6-6H6z" fill="rgba(0,0,0,0.5)"%3E%3C/path%3E%3C/svg%3E');
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 15px;
        }
    </style>
</head>
<body>
    <!-- Navbar Section -->
    <nav class="navbar">
        <div class="container">
            <a href="#" class="logo"><i class="fas fa-hands-helping"></i> ONECAUSE</a>
            <ul class="nav-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="ongoing.jsp">Ongoing Drives</a></li>
                <li><a href="impact.jsp">Impact</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="login1.html">Login</a></li>
             
              
            </ul>
        </div>
    </nav>

    <!-- Donor Registration Section -->
    <div class="section-container">
        <div class="form-container">
            <h3>Donor Registration</h3>
            <form method="post" action="insertdonor">
                <table>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" required /></td>
                    </tr>
                    <tr>
                        <td><label>Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="gender" value="MALE" required />
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="FEMALE" required />
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="gender" value="OTHERS" required />
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="dob">Date of Birth</label></td>
                        <td><input type="date" id="dob" name="dob" required /></td>
                    </tr>
                     <tr>
    <td><label for="email">Email</label></td>
    <td>
        <input 
            type="email" 
            id="email" 
            name="email" 
            required 
            pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" 
            title="Enter a valid email address, e.g., example@example.com" 
        />
    </td>
</tr>
<tr>
    <td><label for="pwd">Password</label></td>
    <td>
        <input 
            type="password" 
            id="pwd" 
            name="pwd" 
            required 
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}" 
            title="Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one digit, and one special character (@#$%^&+=)." 
        />
    </td>
</tr>

                
                 <tr>
    <td><label for="contact">Contact</label></td>
    <td>
        <input 
            type="text" 
            id="contact" 
            name="contact" 
            required 
            pattern="^[0-9]{10}$" 
            title="Please enter a valid 10-digit contact number."
        />
    </td>
</tr>

                    <tr>
                        <td><label for="address">Address</label></td>
                        <td><textarea id="address" name="address" rows="3" required></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <input type="submit" value="Register" />
                            <input type="reset" value="Clear" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>

       
</body>
</html>
