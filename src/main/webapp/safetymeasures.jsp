<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Safety Measures</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
    }

    .crime-options {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }

    .crime-option {
        padding: 10px 20px;
        margin: 0 10px;
        border: 1px solid #333;
        border-radius: 5px;
        cursor: pointer;
        background-color: #fff;
        color: #333;
        transition: background-color 0.3s, color 0.3s;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
    }

    .crime-option:hover {
        background-color: #333;
        color: #fff;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    }

    .crime-option.selected {
        background-color: #333;
        color: #fff;
    }

    .crime-title {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
        color: #333;
        text-transform: uppercase;
    }

    .safety-measures {
        display: none; /* Hide all safety measures initially */
        list-style-type: none;
        padding: 0;
        margin: 0;
        background-color: #fff; /* Background color for safety measures */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    .safety-measure {
        transition: transform 0.3s, box-shadow 0.3s;
        background-color: #f0f0f0;
        padding: 15px;
        border-radius: 5px;
        margin-bottom: 10px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    .safety-measure:hover {
        transform: translateY(-3px);
    }

    .safety-measures.active {
        display: block; 
    }

    .safety-measure img {
        display: none; /* Hide images by default */
        max-width: 200px;
        border-radius: 5px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }

    .safety-measure:hover img {
        display: block; /* Display image on hover */
    }

    /* Hover effect for safety measure */
    .safety-measure:hover {
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    }
    

    /* Paragraph for safety measure description */
    .safety-measure p {
        display: none; /* Hide paragraph by default */
        transition: opacity 0.3s;
        position: absolute;
        top: calc(100% + 10px);
        left: 50%;
        transform: translateX(-50%);
        width: 80%;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 10px;
        border-radius: 5px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        z-index: 1;
        text-align: center;
        margin-top: 10px; /* Add margin to create space between image and paragraph */
    }

    .safety-measure:hover p {
        display: block; /* Display paragraph on hover */
    }
    
    /* Added colors */
    .crime-options {
        background-color: #007bff;
        padding: 10px;
        border-radius: 10px;
    }
    
    .crime-option {
        background-color: #fff;
        color: #007bff;
        border-color: #007bff;
    }
    
    .crime-option.selected {
        background-color: #007bff;
        color: #fff;
    }
    
    .crime-option:hover {
        background-color: #0056b3;
        border-color: #0056b3;
        color: #fff;
    }
    
    .crime-title {
        color: #007bff;
    }
    
    .safety-measure {
        background-color: #f0f0f0;
        color: #333;
    }
    
    .safety-measure:hover {
        background-color: #e0e0e0;
    }

    /* Styling for Back to Homepage button */
    .back-button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff; /* Button background color */
        color: #fff; /* Button text color */
        text-decoration: none; /* Remove underline */
        border-radius: 5px; /* Rounded corners */
        transition: background-color 0.3s; /* Smooth transition */
    }

    .back-button:hover {
        background-color: #0056b3; /* Darker background color on hover */
    }
</style>
</head>
<body>
<div class="crime-options">
    <div class="crime-option selected" data-crime="theft" onclick="showSafetyMeasures('theft')">Theft</div>
    <div class="crime-option" data-crime="assault" onclick="showSafetyMeasures('assault')">Assault</div>
    <div class="crime-option" data-crime="cybercrime" onclick="showSafetyMeasures('cybercrime')">Cybercrime</div>
    <div class="crime-option" data-crime="vandalism" onclick="showSafetyMeasures('vandalism')">Vandalism</div>
</div>

<div id="theft-measures" class="safety-measures active">
    <h2 class="crime-title">Safety Measures for Theft</h2>
    <ul>
        <li class="safety-measure">
            Install a home security system
            <img src="https://i5.walmartimages.com/asr/34d468f3-9d86-423d-837f-52a10fc80f26_1.66e4eaeb6a559b0585ba5333230d8707.jpeg" alt="Home Security System">
            <p>A home security system is a network of interconnected devices and sensors designed to protect homes from intruders, theft, and other emergencies.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Keep valuables out of sight
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpnvrn5yrcwAttY87idKBrzVXljVZaN8oIbzvaBx936Q&s" alt="Valuables Out of Sight">
            <p>Keep valuables out of sight.Even If its there make sure it's placed safely in a locker and in a bank.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Lock doors and windows when leaving
            <img src="https://www.txpremierlocksmith.com/wp-content/uploads/2018/07/Door-Locks.jpg" alt="Lock Doors and Windows">
            <p>Check two to three times that you have locked all your doors and windows before leaving because, many invaders have a chance of getting into your moslty through your windows.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Use motion-sensor lights
            <img src="https://rukminim2.flixcart.com/image/850/1000/ksez24w0/smart-lighting/k/l/b/4-lamp0012-led-wrader-original-imag5zgznvnqg5rk.jpeg?q=90&crop=false" alt="Motion-Sensor Lights">
            <p>Motion sensor lights are outdoor lighting fixtures equipped with motion sensors that detect movement within a certain range. These lights automatically turn on when motion is detected and turn off after a preset period of time when no further motion is sensed.</p>
        </li>
    </ul>
</div>

<div id="assault-measures" class="safety-measures">
    <h2 class="crime-title">Safety Measures for Assault</h2>
    <ul>
        <li class="safety-measure">
            Stay in well-lit areas
            <img src="https://www.hoosiervillage.com/wp-content/uploads/2021/01/OaksNeighborhood.jpg" alt="Well-Lit Areas">
            <p> staying in Areas well-lit have a psychological effect on us i.e it makes us feel safe </p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Avoid confrontation
            <img src="https://www.wikihow.com/images/thumb/4/4e/Deal-With-Enemies-Step-3-Version-2.jpg/v4-460px-Deal-With-Enemies-Step-3-Version-2.jpg" alt="Avoid Confrontation">
            <p>Dont have a face to face talk with enemies </p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Be aware of your surroundings
            <img src="https://imgix.bustle.com/lovelace/uploads/1332/e533ddc0-9ad2-0134-ce6c-0aec1efe63a9.jpg?w=760&h=466&fit=crop&crop=faces&auto=format%2Ccompress&q=50&dpr=2" alt="Be Aware of Surroundings">
            <p>make sure you know nook and corner of your surroundings as if any emergency arises,You will have good way to escape</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Learn self-defense techniques
            <img src="https://www.realsimple.com/thmb/cfdtEndSYzYodal5CMZkYp0wgMs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/4-Self-Defense-Moves-Everyone-Should-Know-2000-2fafbffaac1140248f4f26940cb27182.jpg" alt="Learn Self-Defense Techniques">
            <p>Self-defense techniques encompass a range of physical and mental strategies designed to protect oneself from harm in threatening situations.</p>
        </li>
    </ul>
</div>

<div id="cybercrime-measures" class="safety-measures">
    <h2 class="crime-title">Safety Measures for Cybercrime</h2>
    <ul>
        <li class="safety-measure">
            Use strong, unique passwords
            <img src="https://th.bing.com/th/id/OIP.-IKh6Vw_emhVL55B-Y4x6wHaE8?w=1920&h=1280&rs=1&pid=ImgDetMain" alt="Strong Passwords">
            <p>Enhance your online security with strong, unique passwords that combine letters, numbers, and special characters, ensuring protection against unauthorized access</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Enable two-factor authentication
            <img src="https://th.bing.com/th/id/OIP.9B6ZPoMK2yWw67z8BFb7YgHaDD?rs=1&pid=ImgDetMain" alt="Two-Factor Authentication">
            <p> With 2FA in place, the chances of unauthorized access to your accounts are significantly reduced. It makes it much harder for attackers to gain control of your accounts, especially in cases where passwords are compromised.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Keep software up-to-date
            <img src="https://image-us.samsung.com/SamsungUS/support/solutions/mobile/phones/galaxy-s/s23/PH_S23_How-to-update-your-Galaxy-phone-or-tablet.png" alt="Keep Software Updated">
            <p>Keeping software up-to-date ensures security, stability, and performance by patching vulnerabilities, fixing bugs, improving compatibility, adding new features, optimizing performance, and ensuring regulatory compliance.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Be cautious of suspicious emails and links
            <img src="https://www.ezcomputersolutions.com/wp-content/uploads/2018/09/Zuck-Spam-Email.png" alt="Be Cautious of Suspicious Emails">
            <p>Don't click on spam and suspicious links which allows phisers to hack our computer and take all our properties.</p>
        </li>
    </ul>
</div>

<div id="vandalism-measures" class="safety-measures">
    <h2 class="crime-title">Safety Measures for Vandalism</h2>
    <ul>
        <li class="safety-measure">
            Install security cameras
            <img src="https://www.techcube.co.uk/wp-content/uploads/2017/09/cctv-camera.jpg" alt="Security Cameras">
            <p>installing security cameras allows us to see whose entering our property and what are they doing to our property.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Report suspicious activity
            <img src="https://i.ytimg.com/vi/TqFYyi95i2U/maxresdefault.jpg" alt="Report Suspicious Activity">
            <p>If you're in a public area, report the suspicious activity to the appropriate authorities immediately. This could be security personnel, law enforcement, or emergency services. Provide them with as much detail as possible.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Document Damage
            <img src="https://images.fosterwebmarketing.com/1020/taking%20picutres%20after%20an%20accident.jpeg" alt="Document damage">
            <p>n the unfortunate event that vandalism occurs, document the damage thoroughly with photographs or video footage. This evidence can be valuable when filing a police report or an insurance claim.</p>
        </li>
        <br><br><br><br>
        <li class="safety-measure">
            Use deterrents like fences or alarms
            <img src="https://th.bing.com/th/id/OIP.GOZ7tuxXGXSXAuf72jkieQHaFj?rs=1&pid=ImgDetMain" alt="Use Deterrents">
            <p>Fences act as a physical barrier, deterring intruders and unwanted visitors from accessing your property. They provide an added layer of security, especially when equipped with locks or security features.</p>
        </li>
    </ul>
</div>

<center><a class="back-button" href="publichomepage.jsp">Back to Homepage</a></center>

<script>
    function showSafetyMeasures(crimeType) {
        // Hide all safety measures
        document.querySelectorAll('.safety-measures').forEach(function(element) {
            element.classList.remove('active');
        });

        // Remove 'selected' class from all crime options
        document.querySelectorAll('.crime-option').forEach(function(element) {
            element.classList.remove('selected');
        });

        // Show safety measures for the selected crime type
        document.getElementById(crimeType + '-measures').classList.add('active');

        // Mark the selected crime option
        document.querySelector('.crime-option[data-crime="' + crimeType + '"]').classList.add('selected');
    }
</script>
</body>
</html>
