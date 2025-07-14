<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Loan Applications</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://img.freepik.com/free-photo/table-with-finance-work-stuff-coffee-money-tablet-pen-papers_1268-17457.jpg?semt=ais_hybrid&w=740') no-repeat center center fixed;
            background-size: cover;
            padding: 40px;
            text-align: center;
            color: #333;
        }

        h2 {
            color: #fff;
            margin-bottom: 25px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.5);
        }

        table {
            width: 85%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.97);
            box-shadow: 0 0 20px rgba(0,0,0,0.3);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 14px;
            text-align: center;
            font-size: 15px;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f5f5f5;
        }

        .action-links a {
            margin: 0 5px;
            padding: 6px 12px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .action-links a.edit-btn {
            background-color: gray;
            color: black;
        }

        .action-links a.delete-btn {
            background-color: gray;
            color: black;
        }

        .nav-links {
            margin-top: 30px;
        }

        .nav-links a {
            margin: 0 10px;
            text-decoration: none;
            color:  #fff;
            background-color: black;
            padding: 12px 18px;
            border-radius: 6px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

    </style>
</head>
<body>

    <h2 background-color: black>All Loan Applications</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Amount</th>
            <th>Duration</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="loan" items="${loans}">
            <tr>
                <td>${loan.id}</td>
                <td>${loan.name}</td>
                <td>${loan.email}</td>
                <td>${loan.amount}</td>
                <td>${loan.duration}</td>
                <td class="action-links">
                    <a href="${pageContext.request.contextPath}/edit/${loan.id}" class="edit-btn">Edit</a>
                    <a href="${pageContext.request.contextPath}/delete/${loan.id}" class="delete-btn" onclick="return confirm('Are you sure you want to delete this record?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/loanForm">Back to Loan Form</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>

</body>
</html>
