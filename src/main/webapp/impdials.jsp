<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Important Dial Numbers in India</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #001f3f;
        color: #fff;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .container {
        max-width: 600px;
        padding: 40px;
        background-color: rgba(0, 0, 0, 0.8);
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
        overflow: hidden;
    }
    
    h1 {
        text-align: center;
        font-size: 32px;
        margin-bottom: 30px;
        margin-top: 0;
    }
    
    .dial-numbers {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }
    
    .dial-number {
        padding: 20px;
        border-bottom: 1px solid #336699;
        display: flex;
        align-items: center;
        justify-content: space-between;
        opacity: 0;
        animation: fadeIn 1s ease forwards;
    }
    
    .label {
        font-size: 20px;
        margin: 0;
        color: #fff;
    }
    
    .number {
        font-size: 20px;
        color: #ff5733;
        margin: 0;
    }

    .icon {
        font-size: 24px;
        color: #ff5733;
        margin-right: 10px;
    }

    @keyframes neon {
        0% {
            text-shadow: 0 0 5px #ff5733, 0 0 10px #ff5733, 0 0 20px #ff5733, 0 0 40px #ff5733, 0 0 80px #ff5733, 0 0 90px #ff5733, 0 0 100px #ff5733, 0 0 150px #ff5733;
        }
        50% {
            text-shadow: none;
        }
        100% {
            text-shadow: 0 0 5px #ff5733, 0 0 10px #ff5733, 0 0 20px #ff5733, 0 0 40px #ff5733, 0 0 80px #ff5733, 0 0 90px #ff5733, 0 0 100px #ff5733, 0 0 150px #ff5733;
        }
    }

    .neon {
        animation: neon 1.5s infinite alternate-reverse;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-10px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>
<div class="container">
    <h1>Important Dial Numbers in India</h1>
    <ul class="dial-numbers">
        <li class="dial-number">
            <span class="label neon"><i class="fas fa-user-shield icon"></i> Police</span>
            <span class="number">100</span>
        </li>
        <li class="dial-number">
            <span class="label neon"><i class="fas fa-fire icon"></i> Fire</span>
            <span class="number">101</span>
        </li>
        <li class="dial-number">
            <span class="label neon"><i class="fas fa-ambulance icon"></i> Ambulance</span>
            <span class="number">102</span>
        </li>
        <li class="dial-number">
            <span class="label neon"><i class="fas fa-hands-helping icon"></i> Emergency Disaster Management</span>
            <span class="number">108</span>
        </li>
        <li class="dial-number">
            <span class="label neon"><i class="fas fa-female icon"></i> Women Helpline</span>
            <span class="number">1091</span>
        </li>
        <li class="dial-number">
            <span class="label neon"><i class="fas fa-child icon"></i> Child Helpline</span>
            <span class="number">1098</span>
        </li>
    </ul>
</div>
</body>
</html>
