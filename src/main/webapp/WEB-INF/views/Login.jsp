<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://static.vecteezy.com/system/resources/previews/007/784/841/non_2x/health-and-science-medical-innovation-concept-abstract-geometric-futuristic-background-from-hexagons-pattern-light-blue-radiant-background-illustration-vector.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .overlay {
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 0;
        }

        .login-box {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px 35px;
            border-radius: 10px;
            width: 380px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
            z-index: 1;
            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        .login-box h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
            font-size: 26px;
        }

        .input-group {
            position: relative;
            margin-bottom: 25px;
        }

        .input-group i {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #aaa;
        }

        .input-group input {
            width: 100%;
            padding: 12px 12px 12px 35px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: 0.3s;
        }

        .input-group input:focus {
            border-color: #4CAF50;
            outline: none;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.3);
        }

        .login-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(skyblue);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 15px;
            font-weight: 500;
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            font-size: 13px;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    
    <form class="login-box" action="login" method="post" color:black>
        <h2>Login</h2>
        
        <div class="input-group">
            <i class="fa fa-user"></i>
            <input type="text" name="username" placeholder="Username" required>
        </div>

        <div class="input-group">
            <i class="fa fa-lock"></i>
            <input type="password" name="password" placeholder="Password" required>
        </div>

        <input type="submit" class="login-btn" value="Login">

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <div class="footer-text">
            &copy; 2025 YourCompany. All rights reserved.
        </div>
    </form>
</body>
</html>
