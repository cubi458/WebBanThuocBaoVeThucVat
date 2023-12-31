<%@page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<!--    <meta name="description" content="Ogani Template">-->
<!--    <meta name="keywords" content="Ogani, unica, creative, html">-->
<!--    <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
<!--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
<!--    <title>Vườn phố</title>-->

<!--    &lt;!&ndash; Google Font &ndash;&gt;-->
<!--    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">-->

<!--    &lt;!&ndash; Css Styles &ndash;&gt;-->
<!--    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/nice-select.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">-->
<!--    <link rel="stylesheet" href="css/style.css" type="text/css">-->
<!--    <meta charset="UTF-8">-->
    <title>Login/Regis</title>
    <link rel="stylesheet" href="css/Log_Regis.css">
</head>
<body>
    <!--Fo-->
    <div class="blur-bg-overlay"></div>
    <div class="form-popup">
        <span class="close-btn material-symbols-rounded"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 384 512"><path d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"/></svg></span>
        <div class="form-box login">
            <div class="form-details">
                <h2>Welcome Back</h2>
                <p>Please log in use your personal information to stay connected with us</p>
            </div>
            <div class="form-content">
                <h2>LOGIN</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" name="name" required>
                        <label>Email</label>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" required>
                        <label>Password</label>
                    </div>
                    <a href="#" class="forgot-pw">Forgot Password?</a>
                    <button type="submit">Login</button>
                </form>
                <div class="bottom-link">
                    Don't have a count?
                    <a href="#">Register</a>
                </div>
            </div>
        </div>
        <div class="form-box signup">
            <div class="form-details">
                <h2>Create account</h2>
                <p>Please log in use your personal information to stay connected with us</p>
            </div>
            <div class="form-content">
                <h2>SIGN UP</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" name="name" required>
                        <label>Enter your email</label>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" required>
                        <label>Create Password</label>
                    </div>
                    <div class="policy-text">
                        <input type="checkbox" id="policy">
                        <label for="policy">
                            I agree the
                            <a href="">Terms & conditions</a>
                        </label>

                    </div>
                    <button type="submit">Login</button>
                </form>
                <div class="bottom-link">
                    Already have an account?
                    <a href="#">Login</a>
                </div>
            </div>
        </div>
    </div>








</body>
</html>