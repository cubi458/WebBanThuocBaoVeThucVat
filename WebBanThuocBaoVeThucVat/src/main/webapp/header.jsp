<%@page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<body>
<!-- Page Preloder -->
<!-- <div id="preloder">
    <div class="loader"></div>
</div> -->

<!-- Humberger Begin -->
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>

            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <!-- <div class="header__cart__price">Số dư tài khoản: <span>200.000₫</span></div> -->
    </div>
    <div class="humberger__menu__widget">
        <!-- <div class="header__top__right__language">
            <img src="img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div> -->
        <div class="header__top__right__auth">
            <a href="./login_register.jsp"><i class="fa fa-user"></i> Tài khoản</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li><a href="index.jsp">Trang chủ</a></li>
            <li class="active"><a href="cuahang.jsp">Cửa hàng</a></li>
            <li><a href="#">Quản lý</a>
                <ul class="header__menu__dropdown">
                    <li><a href="thong-tin-don-hang.jsp">Thông tin đơn hàng</a></li>
                    <li><a href="gio-hang.jsp">Giỏ hàng</a></li>
                    <li><a href="thanh-toan.jsp">Thanh toán</a></li>
                    <li><a href="blog-details.jsp">Các bài viết</a></li>
                </ul>
            </li>
            <li><a href="blog.jsp">Blog</a></li>
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
                <div class="col-lg-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> vuonpho@gmail.com</li>
                            <li>Miễn phí giao hàng cho đơn đặt hàng trị giá trên 500.000đ</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <!-- <div class="header__top__right__language">
                            <img src="img/language.png" alt="">
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">Spanis</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </div> -->
                        <div class="header__top__right__auth">
                            <div class="openBtn">
                                <a class="#" href="./login_register.jsp"><i class="fa fa-user"></i> Tài khoản</a>
                            </div>
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
                    <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li class="active"><a href="cuahang.jsp">Cửa hàng</a></li>
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
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <a href="gio-hang.jsp">
                        <ul>
                            <span class="cart-word" style="font-weight: bold;">Giỏ hàng</span>
                            <li><i class="fa-solid fa-cart-shopping"></i> <span>3</span></li>
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
<section class="hero hero-normal">
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
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Js Plugins -->

</body>

</html>