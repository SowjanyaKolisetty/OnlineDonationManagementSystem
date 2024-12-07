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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <title>View All Requests</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f9fc;
            color: #333;
            margin: 0;
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

        main {
            margin-left: 260px;
            padding: 20px;
        }

        h3 {
            color: #34495e;
            margin-bottom: 20px;
            font-size: 1.8em;
            font-weight: bold;
            text-decoration: underline;
        }

        input[type="text"] {
            padding: 10px;
            width: 60%;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-size: 16px;
        }

        th {
            background-color: #2c3e50;
            color: white;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        @media screen and (max-width: 768px) {
            .navbar {
                width: 200px;
            }

            main {
                margin-left: 220px;
            }

            input[type="text"] {
                width: 100%;
            }
        }
    </style>
    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 1; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1]; // Filter by Full Name
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>
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

    <main>
        <h3>View All Requests</h3>
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..." />

        <table id="myTable">
            <thead>
                <tr class="header">
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Reason</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${reqlist}" var="request">
                    <tr>
                        <td><c:out value="${request.id}" /></td>
                        <td><c:out value="${request.name}" /></td>
                        <td><c:out value="${request.address}" /></td>
                        <td><c:out value="${request.reason}" /></td>
                        <td><c:out value="${request.status != null ? request.status : 'Pending'}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
</body>

</html>
