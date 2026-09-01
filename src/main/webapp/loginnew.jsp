<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login page</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
}
.background{
    width: 471px;
    height: 408px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 160px;
    width: 160px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(#1845ad, #23a2f6);
    left: -37px;
    top: -86px;
}
.shape:last-child{
    background: linear-gradient(to right,#ff512f,#f09819);
    right: -30px;
    bottom: -80px;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height:40px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top:4px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .fb{
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}
.burger-wrapper {
    cursor: pointer;
}
#meny {
    background: #333;
    width: 26rem;
    height: 100vh;
    position: fixed;
    right: 0;
    transition-timing-function: cubic-bezier(10,2,3,1);
    transform: translateX(50rem);
    top: 0;
    z-index: 0;
    transition: 0.5s;
}
#menyAvPaa {
    display: none;
}

#menyAvPaa:checked ~ #meny {
    transform: translateX(0rem);
}

#burger {
    position: absolute;
    cursor: pointer;
    width: 2rem;
    height: 2rem;
    right: 1rem;
    top: 1rem;
    display: flex;
    justify-content: space-between;
    flex-direction: column;
}

#burger > div {
    height: 2px;
    background-color: rgb(146, 126, 126); /* Change the color here */
    transition: 0.5s;
    z-index: 999;
}

#menyAvPaa:checked ~ #burger > div {
    background-color: #fff;
}

#menyAvPaa:checked ~ #burger > div:nth-child(1) {
    transform: translateY(15px) rotate(45deg);
}
#menyAvPaa:checked ~ #burger > div:nth-child(2) {
    opacity: 0;
}
#menyAvPaa:checked ~ #burger > div:nth-child(3) {
    transform: translateY(-15px) rotate(-45deg);
}
nav{
  display: flex;
  
}
ul{
  display: flex;
  flex-direction: column;
  list-style:none;
  margin-top: 20vh;
  margin-left: 5vw;
  gap: 80px;
}
li {
  font-family:Poppins;
  font-size: 30px;
  transition: color 0.3s ease; /* Adding transition effect */
  color: rgb(0, 0, 0) ;
}

li:hover {
  color: #ffbb00; /* Changing color on hover */
}
h1{
    color: white;
}
.container{
    height: 120px;
    display: flex;
    align-items: center;
    justify-content: space-around;
    font-family:Poppins;
}
    </style>
</head>
<body>
    <div class="container">
       <center><h1>Crime Management System</h1></center>
    </div>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="LoginServlet" method="post">
        <h3>Login</h3>

        <label for="Username">Username</label>
        <input type="text" placeholder="Username" id="Username" name="Username">
        <label for="Password">Password</label>
        <input type="Password" placeholder="Password" id="Password" name="Password">

        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
               <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>

        <button>Log in</button>
    </form>
    <input type="checkbox" id="menyAvPaa">
        <label id="burger" for="menyAvPaa">
            <div></div>
            <div></div>
            <div></div>
        </label>
      <nav id="meny">
          <div class="box1">
            <ul>
              <a style="text-decoration: none;" href="homepage.html"><li>Home</a></li>
              <li>About</li>
              <a style="text-decoration: none;" href="signupnew.jsp"><li>SignUp</li></a>
              <li>Login</li>
            </ul>
          </div>
      </nav>
</body>
</html>
    