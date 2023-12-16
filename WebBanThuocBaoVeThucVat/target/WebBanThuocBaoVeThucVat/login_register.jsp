<%--
  Created by IntelliJ IDEA.
  User: Windows 10
  Date: 16-12-2023
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Responsive Login and Signup Form </title>
    <!-- CSS -->
    <link rel="stylesheet" href="css/signup_signin/signup_signin.css">

    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<section class="container forms">
    <div class="form login">
        <div class="form-content">
            <header>Login</header>
            <form action="#">
                <div class="field input-field">
                    <input type="email" placeholder="Email" class="input">
                </div>
                <div class="field input-field">
                    <input type="password" placeholder="Mật khẩu" class="password">
                    <i class='bx bx-hide eye-icon'></i>
                </div>
                <div class="form-link">
                    <a href="#" class="forgot-pass">Quên mật khẩu?</a>
                </div>
                <div class="field button-field">
                    <button>Đăng nhập</button>
                </div>
            </form>
            <div class="form-link">
                <span>Chưa có tài khoản? <a href="#" class="link signup-link">Signup</a></span>
            </div>
        </div>
<%--        <div class="line"></div>--%>
<%--        <div class="media-options">--%>
<%--            <a href="#" class="field facebook">--%>
<%--                <i class='bx bxl-facebook facebook-icon'></i>--%>
<%--                <span>Login with Facebook</span>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="media-options">--%>
<%--            <a href="#" class="field google">--%>
<%--                <img src="#" alt="" class="google-img">--%>
<%--                <span>Login with Google</span>--%>
<%--            </a>--%>
<%--        </div>--%>
    </div>
    <!-- Signup Form -->
    <div class="form signup">
        <div class="form-content">
            <header>Signup</header>
            <form action="#">
                <div class="field input-field">
                    <input type="email" placeholder="Email" class="input">
                </div>
                <div class="field input-field">
                    <input type="password" placeholder="Nhập mật khẩu" class="password">
                </div>
                <div class="field input-field">
                    <input type="password" placeholder="Nhập lại mật khẩu" class="password">
                    <i class='bx bx-hide eye-icon'></i>
                </div>
                <div class="field button-field">
                    <button>Đăng ký</button>
                </div>
            </form>
            <div class="form-link">
                <span>Đã có tài khoản? <a href="#" class="link login-link">Đăng nhập</a></span>
            </div>
        </div>
<%--        <div class="line"></div>--%>
<%--        <div class="media-options">--%>
<%--            <a href="#" class="field facebook">--%>
<%--                <i class='bx bxl-facebook facebook-icon'></i>--%>
<%--                <span>Login with Facebook</span>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="media-options">--%>
<%--            <a href="#" class="field google">--%>
<%--                <img src="#" alt="" class="google-img">--%>
<%--                <span>Login with Google</span>--%>
<%--            </a>--%>
<%--        </div>--%>
    </div>
</section>
<!-- JavaScript -->
<script src="js/signup_signin.js"></script>
</body>
</html>
