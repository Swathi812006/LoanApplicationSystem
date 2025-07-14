<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Loan Application Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://png.pngtree.com/background/20230329/original/pngtree-businessman-falling-into-the-trap-of-loan-credit-the-businessman-falling-picture-image_2187282.jpg') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            box-sizing: border-box;
            flex-direction: column;
        }

        .navbar {
            width: 100%;
            max-width: 420px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 15px;
            margin-top: 10px;
        }

        .nav-link {
            background-color: #444;
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 6px;
            font-weight: bold;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .nav-link:hover {
            background-color: #444;
        }

        .form-container {
            width: 100%;
            max-width: 420px;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease;
        }

        .form-container:hover {
            transform: scale(1.01);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #bbb;
            font-size: 14px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="email"]:focus {
            border-color: #007bff;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: lightblue;
            color: black;
            padding: 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            font-size: 15px;
            transition: background-color 0.3s ease;
            margin-top: 8px;
        }

        input[type="submit"]:hover {
            background-color: lightblue;
        }

        .msg {
            text-align: center;
            color: green;
            margin-bottom: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Loan Application</h2>

        <c:if test="${not empty message}">
            <div class="msg">${message}</div>
            <script>
                setTimeout(function() {
                    window.location.href = 'view';
                }, 3000);
            </script>
        </c:if>

        <form action="apply" method="post">
            <input type="text" name="name" placeholder="Your Name" required />
            <input type="email" name="email" placeholder="Your Email" required />
            <input type="number" name="amount" placeholder="Loan Amount" required />
            <input type="text" name="duration" placeholder="Duration (months)" required />
            <input type="submit" value="Apply">
        </form>
    </div>
    <div class="navbar">
        <a href="view" class="nav-link">Go to View Details</a>
    </div>
    

</body>
</html>
