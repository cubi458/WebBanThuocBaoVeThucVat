<%@ page import="bean.User" %>
<%@page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <title>crud dashboard</title>
    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="admin_page/css/bootstrap.min.admin.css">
    <link rel="stylesheet" href="admin_page/css/custom.css">

    <!--google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">

</head>
<body>
<div class="wrapper">
    <div class="body-overlay"></div>
    <!-------sidebar--design------------>
    <div id="sidebar">
        <div class="sidebar-header">
            <img src="assets/img/logo.png" class="img-fluid"/>
        </div>

        <ul class="list-unstyled component m-0">
            <li class="active">
                <a href="admin-home?action=admin" class="dashboard"><i class="material-icons">dashboard</i>Trang chủ </a>
            </li>

            <li class="dropdown">
                <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">aspect_ratio</i>Quản lý
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                    <li><a href="admin-product?action=qlsp">Quản lý sản phẩm</a></li>
                    <li><a href="admin-user?action=qlnd">Quản lý khách hàng</a></li>
                    <li><a href="admin-order?action=qldh">Quản lý đơn hàng</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">apps</i>widgets
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu2">
                    <li><a href="#">Apps 1</a></li>
                    <li><a href="#">Apps 2</a></li>
                    <li><a href="#">Apps 3</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">equalizer</i>charts
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu3">
                    <li><a href="#">Pages 1</a></li>
                    <li><a href="#">Pages 2</a></li>
                    <li><a href="#">Pages 3</a></li>
                </ul>
            </li>


            <li class="dropdown">
                <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">extension</i>UI Element
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu4">
                    <li><a href="#">Pages 1</a></li>
                    <li><a href="#">Pages 2</a></li>
                    <li><a href="#">Pages 3</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#homeSubmenu5" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">border_color</i>forms
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu5">
                    <li><a href="#">Pages 1</a></li>
                    <li><a href="#">Pages 2</a></li>
                    <li><a href="#">Pages 3</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#homeSubmenu6" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">grid_on</i>tables
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu6">
                    <li><a href="#">table 1</a></li>
                    <li><a href="#">table 2</a></li>
                    <li><a href="#">table 3</a></li>
                </ul>
            </li>


            <li class="dropdown">
                <a href="#homeSubmenu7" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">content_copy</i>Pages
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu7">
                    <li><a href="#">Pages 1</a></li>
                    <li><a href="#">Pages 2</a></li>
                    <li><a href="#">Pages 3</a></li>
                </ul>
            </li>


            <li class="">
                <a href="#" class=""><i class="material-icons">date_range</i>copy </a>
            </li>
            <li class="">
                <a href="#" class=""><i class="material-icons">library_books</i>calender </a>
            </li>

        </ul>
    </div>

    <!-------sidebar--design- close----------->


    <!-------page-content start----------->

    <div id="content">

        <!------top-navbar-start----------->

        <jsp:include page="include/header_content.jsp"/>
        <!------top-navbar-end----------->


        <!------main-content-start----------->

        <div class="main-content">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-warning">
                                <span class="material-icons">equalizer</span>
                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Đơn hàng</strong></p>
                            <h3 class="card-title">70,340</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons text-info">info</i>
                                <a href="#pablo">See detailed report</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-rose">
                                <span class="material-icons">shopping_cart</span>
                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Sản phẩm</strong></p>
                            <h3 class="card-title">102</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">local_offer</i> Product-wise sales
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-success">
                                <span class="material-icons">attach_money</span>

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Revenue</strong></p>
                            <h3 class="card-title">$23,100</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">date_range</i> Weekly sales
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-info">
                                <span class="material-icons">follow_the_signs</span>
                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Khách hàng</strong></p>
                            <h3 class="card-title">+245</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">update</i> Just Updated
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!------main-content-end----------->


        <!----footer-design------------->

        <footer class="footer">
            <div class="container-fluid">
                <div class="footer-in">
                    <p class="mb-0">&copy 2021 Vishweb Design . All Rights Reserved.</p>
                </div>
            </div>
        </footer>


    </div>

</div>


<!-------complete html----------->


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="admin_page/js/adminJS/jquery-3.3.1.slim.min.js"></script>
<script src="admin_page/js/adminJS/popper.min.js"></script>
<script src="admin_page/js/adminJS/jquery-3.3.1.min.js"></script>
<script src="admin_page/js/adminJS/bootstrap.min.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        $(".xp-menubar").on('click', function () {
            $("#sidebar").toggleClass('active');
            $("#content").toggleClass('active');
        });

        $('.xp-menubar,.body-overlay').on('click', function () {
            $("#sidebar,.body-overlay").toggleClass('show-nav');
        });

    });
</script>


</body>

</html>


