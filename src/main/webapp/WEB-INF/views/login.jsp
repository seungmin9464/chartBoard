<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 2025. 6. 2.
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.net.URLDecoder" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="<c:url value='/css/a.css'/>">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <title>Document</title>
</head>

<script>
  const signUpBtn = document.getElementById("signUp");
  const signInBtn = document.getElementById("signIn");
  const container = document.querySelector(".container");

  signUpBtn.addEventListener("click", () => {
    container.classList.add("right-panel-active");
  });
  signInBtn.addEventListener("click", () => {
    container.classList.remove("right-panel-active");
  });

</script>
<body>
<div class="wrapper">
  <div class="container">
    <div class="sign-up-container">
      <form>
        <h1>Create Account</h1>
        <div class="social-links">
          <div>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
          </div>
        </div>
        <span>or use your email for registration</span>
        <input type="text" placeholder="Name">
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <button class="form_btn">Sign Up</button>
      </form>
    </div>
    <div class="sign-in-container">
      <form action="/login" method="POST">
        <h1>Sign In</h1>
        <div class="social-links">
          <div>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
          </div>
        </div>
        <span>or use your account</span>
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <button class="form_btn">Sign In</button>
      </form>
    </div>
    <div class="overlay-container">
      <div class="overlay-left">
        <h1>Welcome Back</h1>
        <p>To keep connected with us please login with your personal info</p>
        <button id="signIn" class="overlay_btn">Sign In</button>
      </div>
      <div class="overlay-right">
        <h1>Hello, Friend</h1>
        <p>Enter your personal details and start journey with us</p>
        <button id="signUp" class="overlay_btn">Sign Up</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
