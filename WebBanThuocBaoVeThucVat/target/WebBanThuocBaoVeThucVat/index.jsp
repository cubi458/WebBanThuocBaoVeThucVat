<%@ page import="bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.ShoppingCart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.User" %>
<%--

  Created by IntelliJ IDEA.
  User: Windows 10
  Date: 16-12-2023
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="assets/img/logo.png">
    <title>Vườn phố</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <%--    <link rel="stylesheet" href="assets/css/Log_Regis.css">--%>
    <%--    <script src="assets/js/log_reg.js" defer></script>--%>
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        List<Product> products2 = (List<Product>) request.getAttribute("products2");
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("cart");

        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }
    %>

    <%--    <link rel="stylesheet" href="css/Log_Regis.css">--%>
    <%--    <script src="js/log_reg.js" defer></script>--%>
    <style>
        .red {
            color: red;
        }
    </style>
</head>
<body>
<!-- Page Preloder -->
<!-- <div id="preloder">
    <div class="loader"></div>
</div> -->

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="assets/img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>

            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <!-- <div class="header__cart__price">Số dư tài khoản: <span>200.000₫</span></div> -->
    </div>
    <div class="humberger__menu__widget">


        <!-- <div class="header__top__right__language">
            <img src="assets/img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div> -->

        <div class="header__top__right__auth">
            <a href="login"><i class="fa fa-user"></i> Tài khoản</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="HomePageController">Trang chủ</a></li>
            <li><a href="ProductController">Cửa hàng</a></li>
            <li><a href="#">Quản lý</a>
                <ul class="header__menu__dropdown">
                    <li><a href="thong-tin-don-hang.jsp">Thông tin đơn hàng</a></li>
                    <li><a href="gio-hang.jsp">Giỏ hàng</a></li>
                    <li><a href="thanh-toan.jsp">Thanh toán</a></li>
                    <li><a href="blog-details.jsp">Các bài viết</a></li>
                </ul>
            </li>
            <li><a href="blog.jsp">Tin tức</a></li>
            <li><a href="lien-he.jsp">Liên hệ</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> vuonpho@gmail.com</li>
            <li>Miễn phí giao hàng cho đơn đặt hàng trị giá trên 500.000đ</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li>Miễn phí giao hàng cho đơn đặt hàng trị giá trên 500.000đ</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <!-- <div class="header__top__right__language">
                            <img src="assets/img/language.png" alt="">
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">Spanis</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </div> -->
                        <div class="header__top__right__auth">
                            <%User auth = (User) session.getAttribute("uslogin");%>
                            <% if(auth != null){ %>
                            <div class="openBtn">
                                <div class="header__top__right__social">
                                    <a class="#" href="logout"><i class="fa fa-user"></i> Đăng xuất </a>
                                </div>
                                <a class="#" href="user-profile.jsp"> Xin chào <%= auth.getUsername() %></a>
                            </div>
                            <% }else { %>
                            <div class="openBtn">
                                <a class="#" href="login"><i class="fa fa-user"></i> Tài khoản</a>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index.html"><img src="assets/img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="HomePageController">Trang chủ</a></li>
                        <li><a href="ProductController">Cửa hàng</a></li>
                        <li><a href="#">Quản lý</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="thong-tin-don-hang.jsp">Thông tin đơn hàng</a></li>
                                <li><a href="gio-hang.jsp">Giỏ hàng</a></li>
                                <li><a href="thanh-toan.jsp">Thanh toán</a></li>
                                <li><a href="blog-details.jsp">Các bài viết</a></li>
                            </ul>
                        </li>
                        <li><a href="blog-details.jsp">Tin tức</a></li>
                        <li><a href="lien-he.jsp">Liên hệ </a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <a href="gio-hang.jsp">
                        <ul>
                            <span class="cart-word" style="font-weight: bold;">Giỏ hàng</span>
                            <li><i class="fa-solid fa-cart-shopping"></i> <span><%=shoppingCart.getSize()%></span></li>
                        </ul>
                    </a>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh mục sản phẩm</span>
                    </div>
                    <ul>
                        <!-- <li><a href="#">Hạt giống</a></li>
                        <li><a href="#">Cây giống</a></li>
                        <li><a href="#">Phân bón lá</a></li>
                        <li><a href="#">Phân bón rễ</a></li>
                        <li><a href="#">Phân bón vi lượng</a></li> -->
                        <li><a href="#">Thuốc kích rễ, ươm cành</a></li>
                        <li><a href="#">Thuốc trừ sâu</a></li>
                        <li><a href="#">Thuốc trừ bệnh</a></li>
                        <li><a href="#">Vi sinh vật đối kháng</a></li>
                        <li><a href="#">Thuốc bảo vệ thực vật loại khác</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Bạn cần tìm thứ gì?">
                            <button type="submit" class="site-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+84 123456789</h5>
                            <span>hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
                <div class="hero__item set-bg" data-setbg="assets/img/hero/banner.jpg">
                    <div class="hero__text">
                        <a href="ProductController" class="primary-btn">Mua ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <% for(Product p : products){%>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="<%=p.getThumb()%>">
                        <h5><a href="#"><%=p.getName()%></a></h5>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</section>

<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Các sản phẩm nổi bật</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".oranges">Hạt giống</li>
                        <li data-filter=".fresh-meat">Phân bón</li>
                        <li data-filter=".vegetables"></li>
                        <li data-filter=".fastfood">Thuốc bảo vệ thực vật</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <% for(Product p : products) {%>
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="<%=p.getThumb()%>">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="ShoppingCartCL?action=post&id=<%=p.getId()%>"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#"><%=p.getName()%></a></h6>
                        <h5><%=p.getPrice()%></h5>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="assets/img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="assets/img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm mới nhất</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <% for(Product p : products2) {%>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.getThumb()%>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getName()%></h6>
                                    <span><%=p.getPrice()%></span>
                                </div>

                            </a>
                            <% } %>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <% for(Product p : products2) {%>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.getThumb()%>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getName()%></h6>
                                    <span><%=p.getPrice()%></span>
                                </div>

                            </a>
                            <% } %>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm bán chạy</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <% for(Product p : products2) {%>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.getThumb()%>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getName()%></h6>
                                    <span><%=p.getPrice()%></span>
                                </div>
                            </a>
                            <% } %>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <% for(Product p : products) { %>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%= p.getThumb() %>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%= p.getName() %></h6>
                                    <span><%= p.getPrice() %></span>
                                </div>
                            </a>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm đang giảm giá</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <% for(Product p : products) { %>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.getThumb()%>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%= p.getName() %></h6>
                                    <span><%= p.getPrice() %></span>
                                </div>
                            </a>
                            <% } %>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <% for(Product p : products) { %>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.getThumb()%>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%= p.getName() %></h6>
                                    <span><%= p.getPrice() %></span>
                                </div>
                            </a>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>Trang thông tin</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="assets/img/blog/blog-1.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Cách ủ phân hữu cơ với mật rỉ đường và chế phẩm vi sinh bón rau an toàn</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="assets/img/blog/blog-2.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Cách xử lý cây chanh vàng Mỹ trồng chậu hoa trái xum xuê</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="assets/img/blog/blog-3.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Chọn đất phù hợp cho từng loại cây trồng</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./index.html"><img src="assets/img/logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa chỉ: 171 Nguyễn Văn Khối, Phường 8, Gò Vấp, TP. HCM</li>
                        <li>Liên hệ: +84 123456789</li>
                        <li>Email: vuonpho@gmail.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Chính sách công ty</h6>
                    <ul>
                        <li><a href="#">Về chúng tôi</a></li>
                        <li><a href="#">Về cửa hàng chúng tôi</a></li>
                        <li><a href="#">Chính sách mua hàng</a></li>
                        <li><a href="#">Thông tin vận chuyển</a></li>
                        <li><a href="#">Điều khoản và bảo mật</a></li>
                        <li><a href="#">Địa chỉ cửa hàng</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">Chúng tôi là ai</a></li>
                        <li><a href="#">Dịch vụ của chúng tôi</a></li>
                        <li><a href="#">Các Project</a></li>
                        <li><a href="#">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Tham gia với chúng tôi</h6>
                    <p>Cập nhật thông tin mới nhất và các ưu đãi về cửa hàng thông qua email.</p>
                    <form action="#">
                        <input type="text" placeholder="Nhập địa chỉ email">
                        <button type="submit" class="site-btn">ĐĂNG KÝ</button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<%--<div class="blur-bg-overlay"></div>--%>
<%--<div class="form-popup">--%>
<%--    <span class="close-btn material-symbols-rounded"><svg xmlns="http://www.w3.org/2000/svg" height="1em"--%>
<%--                                                          viewBox="0 0 384 512"><path--%>
<%--            d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"/></svg></span>--%>
<%--    <div class="form-box login">--%>
<%--        <div class="form-details">--%>
<%--            <h2>Chào mừng quý khách quay lại</h2>--%>
<%--            <p>Hãy điền địa chỉ email và mật khẩu vào các ô bên phải</p>--%>
<%--        </div>--%>
<%--        <div class="form-content">--%>
<%--            <h2>ĐĂNG NHẬP</h2>--%>
<%--            &lt;%&ndash;            <%=request.getAttribute("error")%>&ndash;%&gt;--%>
<%--            <form class="form_login" method="post" action="./login" >--%>
<%--                <div class="input-field">--%>
<%--                    <input type="text" name="email" required>--%>
<%--                    <label>Email</label>--%>
<%--                </div>--%>
<%--                <div class="input-field">--%>
<%--                    <input type="password" name="pass" required>--%>
<%--                    <label>Password</label>--%>
<%--                </div>--%>
<%--                <a href="#" class="forgot-pw">Quên mật khẩu?</a>--%>
<%--                <button type="submit">Login</button>--%>
<%--            </form>--%>
<%--            <div class="bottom-link">--%>
<%--                Chưa có tài khoản--%>
<%--                <a href="#" id="signup-link">Đăng ký</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!--ĐĂNG KÝ-->--%>
<%--    <div class="form-box signup">--%>
<%--        <div class="form-details">--%>
<%--            <h2>Tạo tài khoản</h2>--%>
<%--            <p>Điền thông tin theo yêu cầu bên phải</p>--%>
<%--        </div>--%>
<%--        <div class="form-content">--%>
<%--            <h2>ĐĂNG KÝ</h2>--%>
<%--            <form class="form_register" method="post" action="./register">--%>
<%--                &lt;%&ndash;                <%=request.getAttribute("error1")%>&ndash;%&gt;--%>
<%--                <div class="input-field">--%>
<%--                    <input type="text" name="name" required>--%>
<%--                    <label>Nhập tên</label>--%>
<%--                </div>--%>
<%--                <div class="input-field">--%>
<%--                    <input type="text" name="email" required>--%>
<%--                    <label>Nhập email</label>--%>
<%--                </div>--%>
<%--                <div class="input-field">--%>
<%--                    <input type="password" name="pass" id="NhapMK" onkeyup="KiemTraMK()" required>--%>
<%--                    <label>Nhập Password </label>--%>
<%--                </div>--%>
<%--                <div class="input-field">--%>
<%--                    <input type="password" name="pass" id="NhapLaiMK" onkeyup="KiemTraMK()" required>--%>
<%--                    <label>Nhập lại Password<span class="red" id="msg"></span></label>--%>
<%--                </div>--%>
<%--                &lt;%&ndash;                <div class="policy-text">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                    <input type="checkbox" id="policy">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                    <label for="policy">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                        Tôi đồng ý với&ndash;%&gt;--%>
<%--                &lt;%&ndash;                        <a href="">Điều khoản</a>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                    </label>&ndash;%&gt;--%>

<%--                &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                <button type="submit">Register</button>--%>
<%--            </form>--%>
<%--            <div class="bottom-link">--%>
<%--                Đã có sẵn tài khoản?--%>
<%--                <a href="#" id="login-link">Đăng nhập</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<!-- Js Plugins -->
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.nice-select.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/jquery.slicknav.js"></script>
<script src="assets/js/mixitup.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/main.js"></script>

</body>

</html>