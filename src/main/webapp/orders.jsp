<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Orders Page</title>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<style>
    /* Basic reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    /* Page layout */
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(120deg, #84fab0, #8fd3f4);
    }

    /* Form container styling */
    .form-container {
        background: #ffffff;
        padding: 2rem;
        width: 100%;
        max-width: 400px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        transition: all 0.3s ease;
    }

    /* Table styling */
    table {
        width: 100%;
    }

    td {
        padding: 1rem 0;
    }

    /* Input styling */
    input[type="text"],
    input[type="email"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 1rem;
        transition: border 0.3s;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="number"]:focus {
        border-color: #339900;
    }

    /* Button styling */
    .btn-primary {
        display: inline-block;
        width: 100%;
        padding: 12px;
        background: #339900;
        color: #ffffff;
        font-size: 1rem;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .btn-primary:hover {
        background: #267700;
    }

    /* Heading styling */
    h2 {
        text-align: center;
        font-size: 1.5rem;
        color: #333;
        margin-bottom: 1rem;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Place Your Order</h2>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" required /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" id="email" required /></td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td><input type="number" name="amount" id="amount" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button id="rzp-button1" class="btn-primary">Proceed To Pay</button>
                </td>
            </tr>
        </table>
    </div>

    <script>
        async function createOrder() {
            const response = await fetch("http://localhost:2003/createOrder", {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    amount: document.getElementById('amount').value
                })
            });
            const order = await response.json();
            return order;
        }

        document.getElementById('rzp-button1').onclick = async function(e) {
            const order = await createOrder();

            var options = {
                "key": "rzp_test_YoyjIpZp6LvIF9",
                "amount": order.amount,
                "currency": "INR",
                "name": " KOLISETTY VENKATA NAGA SOWJANYA LAKSHMI ",
                "description": "order for Test",
                "order_id": order.razorpayOrderId,
                "reciept": order.email,
                "callback_url": "http://localhost:2003/paymentCallback",
                "prefill": {
                    "name": order.name,
                    "email": order.email
                },
                "theme": {
                    "color": "#339900"
                }
            };

            var rzp1 = new Razorpay(options);
            rzp1.open();
            e.preventDefault();
        }
    </script>
</body>
</html>
