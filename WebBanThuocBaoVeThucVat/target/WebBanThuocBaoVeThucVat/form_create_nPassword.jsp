<%--
  Created by IntelliJ IDEA.
  User: Windows 10
  Date: 29-12-2023
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href='css/signup_signin/signup_signin.css' rel='stylesheet'>
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <title>Title</title>
    <title>Title</title>
</head>
<body>
<div class="form login">
    <div class="form-content">
        <header>Tạo mật khẩu mới</header>
        <form action="ForgotPassword" method="post">
            <% String error = (String) session.getAttribute("error"); %>
            <% if(error != null) { %>
            <p class="text-danger"><%= error %></p>
            <% } %>
            <div class="field input-field">
                <input name="newPassword" type="password" placeholder="Nhập mật khẩu mới" class="password">
                <i class='bx bx-hide eye-icon'></i>
            </div>
            <div class="field input-field">
                <input name="rePassword" type="password" placeholder="Nhập lại mật khẩu" class="password">
            </div>
            <div class="field button-field">
                <button type="submit">Xác nhận</button>
            </div>
        </form>
    </div>
</div>
</body>
<script src="js/signup_signin.js"></script>
</html>
