<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Login and signup for public</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="signup.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
  <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="https://th.bing.com/th/id/R.26571dcfdbe958c9d0e74496b2b773bd?rik=JDMSlP49RE5Tmw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2fb%2f4%2f9%2f258961.jpg&ehk=9mLj8Mtgnz97Obcjur71zIiXRUPN99pAbg4aadP5xEw%3d&risl=&pid=ImgRaw&r=0" alt="">
        <div class="text">
          <span class="text-1">THE SAFETY OF PEOPLE<br> IS THE HIGHEST LAW</span>
          <span class="text-2">Let's get the justice</span>
        </div>
      </div>
      <div class="back">
        <div class="text">
          <span class="text-1">SAFETY ISN'T EXPENSIVE<br>ITS PRICELESS</span>
          <span class="text-2"></span>
        </div>
      </div>
    </div>
    <div class="forms">
      <div class="form-content">
        <div class="login-form">
          <div class="title">Login</div>
          <form action="LoginServlet2" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your username" id="Username" name="Username" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" id="Password" name="Password" required>
              </div>
              <div class="text"><a href="#">Forgot password?</a></div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Don't have an account? <label for="flip">Signup now</label></div>
              <% 
                String error = request.getParameter("error");
                if (error != null && error.equals("1")) { 
              %>
              <p style="color: red;">Invalid username or password. Please try again.</p>
              <% } %>
            </div>
          </form>
        </div>
        <div class="signup-form">
          <div class="title">Signup</div>
          <form action="SignupServlet2" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your name"id="Name" name="Name" required>
              </div>
              <div class="input-box">
                <i class="fas fa-hashtag"></i>
                <input type="text" placeholder="Enter your age" id="Age" name="Age" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" id="Email" name="Email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-phone"></i>
                <input type="text" placeholder="Enter your phone number" id="Phone" name="Phone" required>
              </div>
              <div class="input-box">
                <i class="fas fa-home"></i>
                <input type="text" placeholder="Enter your address" id="Address" name="Address" required>
              </div>
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your username" id="Username" name="Username" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" id="Password" name="Password" required>
              </div>
              <div class="button input-box">
                <input type="Submit" value="Submit"id="Submit" name="Submit">
              </div>
              <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
