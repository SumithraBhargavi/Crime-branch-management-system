<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
            background-size: cover; 
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: white;
            font-size: 3em;
            text-align: center;
            font-family: Arial, sans-serif;
            animation: fadeIn 2s ease; 
        }
        .container {
            max-width: 600px; 
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5); 
            border-radius: 10px; 
            animation: slideIn 2s ease; 
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        @keyframes slideIn {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
        a {
            font-size: large;
            color: white;
            text-decoration: none;
            background-color: #007bff; 
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease; 
        }
        a:hover {
            background-color: #0056b3; 
        }
    </style>
    <title>Crime Page</title>
</head>
<body>
    <div class="container">
        <div>
            <p>THANK YOU.</p>
            <p>YOUR CASE WILL BE SOLVED SOON.</p>
        </div>
        <a href="publichomepage.jsp">Back to Homepage</a>
    </div>
</body>
</html>
