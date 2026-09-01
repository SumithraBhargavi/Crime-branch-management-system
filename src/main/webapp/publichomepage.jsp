<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Poppins", sans-serif;
        }

        .container {
            max-width: 1050px;
            width: 90%;
            margin: auto;
        }

        .navbar {
            width: 100%;
            box-shadow: 0 1px 4px rgb(146 161 176 / 15%);
            position: sticky;
            top: 0;
            background-color: white;
            z-index: 999;
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 62px;
        }

        .navbar .menu-items {
            display: flex;
        }

        .navbar .nav-container li {
            list-style: none;
        }

        .navbar .nav-container a {
            text-decoration: none;
            color: #0e2431;
            font-weight: 500;
            font-size: 1.2rem;
            padding: 0.7rem;
        }

        .navbar .nav-container a:hover {
            font-weight: bolder;
        }

        .nav-container {
            display: block;
            position: relative;
            height: 60px;
        }

        .nav-container .checkbox {
            position: absolute;
            display: block;
            height: 32px;
            width: 32px;
            top: 20px;
            left: 20px;
            z-index: 5;
            opacity: 0;
            cursor: pointer;
        }

        .nav-container .hamburger-lines {
            display: block;
            height: 26px;
            width: 32px;
            position: absolute;
            top: 17px;
            left: 20px;
            z-index: 2;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .nav-container .hamburger-lines .line {
            display: block;
            height: 4px;
            width: 100%;
            border-radius: 10px;
            background: #0e2431;
        }

        .nav-container .hamburger-lines .line1 {
            transform-origin: 0% 0%;
            transition: transform 0.4s ease-in-out;
        }

        .nav-container .hamburger-lines .line2 {
            transition: transform 0.2s ease-in-out;
        }

        .nav-container .hamburger-lines .line3 {
            transform-origin: 0% 100%;
            transition: transform 0.4s ease-in-out;
        }

        .navbar .menu-items {
            padding-top: 120px;
            box-shadow: inset 0 0 2000px rgba(255, 255, 255, .5);
            height: 100vh;
            width: 100%;
            transform: translate(-150%);
            display: flex;
            flex-direction: column;
            margin-left: -40px;
            padding-left: 50px;
            transition: transform 0.5s ease-in-out;
            text-align: center;
            background-color: aliceblue;
        }

        .navbar .menu-items li {
            margin-bottom: 1.2rem;
            font-size: 1.5rem;
            font-weight: 500;
        }

        .logo {
            position: absolute;
            top: 5px;
            right: 15px;
            font-size: 1.2rem;
            color: #0e2431;
        }

        .nav-container input[type="checkbox"]:checked~.menu-items {
            transform: translateX(0);
        }

        .nav-container input[type="checkbox"]:checked~.hamburger-lines .line1 {
            transform: rotate(45deg);
        }

        .nav-container input[type="checkbox"]:checked~.hamburger-lines .line2 {
            transform: scaleY(0);
        }

        .nav-container input[type="checkbox"]:checked~.hamburger-lines .line3 {
            transform: rotate(-45deg);
        }

        .nav-container input[type="checkbox"]:checked~.logo {
            display: none;
        }

        main {
            height: 100vh;
            background-image: url(crime\ managemetn\ logo.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
        }

        .word {
            display: inline-block;
            opacity: 0;
            animation: fadeIn 1s forwards;
            color: white;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .word:nth-child(1) {
            animation-delay: 0.5s;
        }

        .word:nth-child(2) {
            animation-delay: 1.0s;
        }

        .word:nth-child(3) {
            animation-delay: 1.5s;
        }

        .word:nth-child(4) {
            animation-delay: 2.0s;
        }

        .word:nth-child(5) {
            animation-delay: 2.5s;
        }

        .word1 {
            position: absolute;
            top: 16vh;
            left: 30vw;
            font-size: 32px;
        }

        .seperation {
            height: 2px;
            background-color: antiquewhite;
        }

        .contained {
            height: 50vh;
            width: 100%;
            background-color: rgb(21, 20, 20);
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        .displayfir {
            font-size: 30px;
            color: white;
        }

        img {
            height: 25vh;
            width: 25vw;
            border-radius: 7px;
        }

        .safetyms {
            font-size: 30px;
            color: white;
        }

        .contained1 {
            height: 50vh;
            width: 100%;
            background-color: rgb(21, 20, 20);
            display: flex;
            align-items: center;
            justify-content: space-around;
            flex-direction: row-reverse;
        }
        .contained2 {
            height: 50vh;
            width: 100%;
            background-color: rgb(21, 20, 20);
            display: flex;
            align-items: center;
            justify-content: space-around;
            flex-direction: row-reverse;
        }
        .contained3{
            height: 50vh;
            width: 100%;
            background-color: rgb(21, 20, 20);
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        .About {
            height: 20vh;
            width: 100%;
            background-color: rgb(21, 20, 20);
            display: flex;
            flex-direction: column;
            color: white;
            align-items: center;
            justify-content: center;
            gap: 20px;
        }
    </style>

</head>

<body>
    <nav>
        <div class="navbar">
            <div class="container nav-container">
                <input class="checkbox" type="checkbox" name="" id="" />
                <div class="hamburger-lines">
                    <span class="line line1"></span>
                    <span class="line line2"></span>
                    <span class="line line3"></span>
                </div>
                <div class="logo">
                    <h1>Crime Management System</h1>
                </div>
                <div class="menu-items">
                    <li><a href="homepage.html">Home</a></li>
                    <li><a href="#con1">Safety Measures</a></li>
                    <li><a href="#con">Lodge a complaint</a></li>
                    <li><a href="#con2">File a missing complaint</a></li>
                    <li><a href="#con2">Important dial Numbers</a></li>
                    <li><a href="#pop">About</a></li>
                </div>
            </div>
        </div>
        <main>
            <h3 class="word1">
                <span class="word">Welcome</span>
                <span class="word">to</span>
                <span class="word">Crime</span>
                <span class="word">Management</span>
                <span class="word">System</span>
            </h3>
        </main>
        <div class="seperation"></div>
        <div id="con" class="contained">
            <div class="displayfir">
                <h3>Witnessed a Crime file your Complaints here.</h3>
            </div>
            <div class="firlogbox">
                <a href="fir.jsp">
                    <img src="fir-image.png" alt="Description of the image">
                </a>
            </div>

        </div>
        <div class="seperation"></div>
        <div id="con1" class="contained1">
            <div class="safetyms">
                <h3>Safety Measures one must be always aware of</h3>
            </div>
            <div class="firlogbox">
                <a href="safetymeasures.jsp">
                    <img src="safetylogo.png" alt="Description of the image">
                </a>
            </div>

        </div>
        <div class="seperation"></div>
        <div id="con2" class="contained3">
            <div class="safetyms">
                <h3>Need to file a missing complaint?</h3>
            </div>
            <div class="firlogbox">
                <a href="missingreport.jsp">
                    <img src="https://as1.ftcdn.net/v2/jpg/02/84/32/50/1000_F_284325057_i0OkSYKCo50YyFn18O4jzc7bcD72qQtP.jpg" alt="Description of the image">
                </a>
            </div>

        </div>
        <div class="seperation"></div>
        <div id="con2" class="contained2">
            <div class="safetyms">
                <h3>Emergency? check which number to dial up.</h3>
            </div>
            <div class="firlogbox">
                <a href="impdials.jsp">
                    <img src="dials.png" alt="Description of the image">
                </a>
            </div>

        </div>
        
        <div class="seperation"></div>
        <div id="con1" class="About">
            <h3>For any queries contact 123@gmail.com</h3>
            <div id="pop">
                <h4>&copy; 2024 Crime Management System.</h4>
                <h4 style="text-align: center;">All Rights Reserved.</h4>
            </div>
        </div>

    </nav>
    <script>
        const menuItems = document.querySelectorAll('.menu-items li a');
        const checkbox = document.querySelector('.nav-container input[type="checkbox"]');

        menuItems.forEach(item => {
            item.addEventListener('click', () => {
                checkbox.checked = false;
            });
        });
    </script>


</body>

</html>