<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Loan</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #d7e1ec, #f3f9ff);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .box {
            width: 420px;
            background: #ffffff;
            padding: 30px 25px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #444;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
            font-size: 15px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="number"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: lightblue;
            color: black;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: lightblue;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>Edit Loan</h2>
        <form action="/update" method="post">
            <input type="hidden" name="id" value="${loan.id}" />

            <label>Name:</label>
            <input type="text" name="name" value="${loan.name}" required />

            <label>Email:</label>
            <input type="email" name="email" value="${loan.email}" required />

            <label>Amount:</label>
            <input type="number" name="amount" value="${loan.amount}" required />

            <label>Duration (Months):</label>
            <input type="number" name="duration" value="${loan.duration}" required />

            <input type="submit" value="Update" />
        </form>
    </div>
</body>
</html>
