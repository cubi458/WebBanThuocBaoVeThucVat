<%@page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Vườn phố</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/Log_Regis.css">
    <script src="js/log_reg.js" defer></script>
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
            <a href="#"><i class="fa fa-user"></i> Login</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="cuahang.jsp">Shop</a></li>
            <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./thong-tin-don-hang.jsp">Shop Details</a></li>
                    <li><a href="gio-hang.jsp">Shoping Cart</a></li>
                    <li><a href="thanh-toan.jsp">Check Out</a></li>
                    <li><a href="blog-details.jsp">Blog Details</a></li>
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
                                <a class="#"><i class="fa fa-user"></i> Tài khoản</a>
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
                        <li><a href="cuahang.jsp">Cửa hàng</a></li>
                        <li class="active"><a href="#">Quản lý</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./thong-tin-don-hang.jsp">Thông tin đơn hàng</a></li>
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
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Thông tin sản phẩm</h2>
                    <div class="breadcrumb__option">
                        <a href="index.jsp">Trang chủ</a>
                        <a href="index.jsp">Cửa hàng</a>
                        <span>Chi tiết sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="img/product/details/product-details-1.jpg" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="img/product/details/product-details-2.jpg"
                             src="img/product/details/thumb-1.jpg" alt="">
                        <img data-imgbigurl="img/product/details/product-details-3.jpg"
                             src="img/product/details/thumb-2.jpg" alt="">
                        <img data-imgbigurl="img/product/details/product-details-5.jpg"
                             src="img/product/details/thumb-3.jpg" alt="">
                        <img data-imgbigurl="img/product/details/product-details-4.jpg"
                             src="img/product/details/thumb-4.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>Camilo 150SC – thuốc trừ bệnh 2 hoạt chất</h3>
                    <!-- <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 reviews)</span>
                    </div> -->
                    <div class="product__details__price">45.000₫</div>
                    <p>Camilo 150SC là thuốc trừ bệnh 2 hoạt chất Azoxystrobin và Hexaconazole có tác động tiếp xúc,
                        lưu dẫn, thấm sâu nhanh, chuyển vị mạnh trong cây, rất an toàn cho môi trường và con người.</p>
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                    </div>
                    <a href="#" class="primary-btn">THÊM VÀO GIỎ HÀNG</a>

                    <ul>
                        <li><b>Tình trạng</b> : <span>Còn hàng</span></li>
                        <!-- <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li> -->
                        <li><b>Quy cách</b> : <span>480 ml</span></li>
                        <!-- <li><b>Thành phần</b> : </li> <span>Azoxystrobin, Hexaconazole, Phụ gia</span> -->
                        <!-- <li><b>Share on</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li> -->
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">Mô tả</a>
                        </li>
                        <!--                            <li class="nav-item">-->
                        <!--                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"-->
                        <!--                                    aria-selected="false">Thông tin</a>-->
                        <!--                            </li>-->
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">Đánh
                                giá <span>(1)</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Mô tả sản phẩm</h6>
                                <p>
                                    Camilo 150SC là thuốc trừ bệnh 2 hoạt chất Azoxystrobin và Hexaconazole có tác động
                                    tiếp xúc, lưu dẫn, thấm sâu nhanh, chuyển vị mạnh trong cây, rất an toàn cho môi
                                    trường và con người.
                                </p>

                                <p>Thành phần:</p>
                                <ul>
                                    <li>Azoxystrobin: 50g/lít</li>
                                    <li>Hexaconazole: 100g/lít</li>
                                    <li>Phụ gia</li>
                                </ul>

                                <p>Quy cách: Chai 100 ml</p>

                                <p>Công dụng:</p>
                                <ul>
                                    <li>CAMILO 150SC – là thuốc chuyên trừ bệnh đốm vằn, vàng lá chín sớm trên lúa.</li>
                                    <li>CAMILO 150SC – có tác động tiếp xúc, lưu dẫn, thấm sâu nhanh, chuyển vị mạnh
                                        trong cây nên không sợ mưa rửa trôi sau vài giờ phun thuốc.
                                    </li>
                                    <li>CAMILO 150SC – làm khô nhanh vết bệnh chỉ sau 01 ngày phun thuốc. Nấm bệnh rất
                                        khó hình thành tính kháng nhờ có cơ chế tác động kép Vừa ngăn cản sự tạo vách tế
                                        bào nấm bệnh, vừa chặn đứng quá trình tạo năng lượng của tế bào nấm.
                                    </li>
                                    <li>CAMILO 150SC – giúp cây lúa sạch lá ủ (lá chân), nuôi dưỡng lá đòng xanh lâu,
                                        bông lúa vàng sáng, chắc tới cậy.
                                    </li>
                                    <li>CAMILO 150SC – rất an toàn và thân thiện với môi trường.</li>
                                </ul>
                            </div>
                        </div>
                        <!-- <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Thông tin sản phẩm</h6>
                                <p>
                                    Cây trồng cà phê - Dịch hại rỉ sắt
                                    Liều lượng: 0.25%
                                    PHI: 14
                                    Cách dùng: Phun ướt đều cây trồng khi tỷ lệ bệnh khoảng 5-10%
                                </p>

                                <p>
                                    Cây trồng cà phê - Dịch hại nấm hồng
                                    Liều lượng: 0.25%
                                    PHI: 14
                                    Cách dùng: Phun ướt đều cây trồng khi tỷ lệ bệnh khoảng 5-10%
                                </p>

                                <p>
                                    Cây trồng cao su - Dịch hại nấm hồng
                                    Liều lượng: 0.15 – 0.20%
                                    PHI: 14
                                    Cách dùng: Phun ướt đều cây trồng khi tỷ lệ bệnh khoảng 5-10%
                                </p>

                                <p>
                                    Cây trồng cao su - Dịch hại vàng rụng lá
                                    Liều lượng: 0.15 – 0.20%
                                    PHI: 14
                                    Cách dùng: Phun ướt đều cây trồng khi tỷ lệ bệnh khoảng 5-10%
                                </p>

                                <p>
                                    Cây trồng lúa - Dịch hại khô vằn
                                    Liều lượng: 0.5 – 0.7 lít/ha
                                    PHI: 14
                                    Cách dùng: Lượng nước phun 500 lít/ha. Phun thuốc khi tỷ lệ bệnh khoảng 15%
                                </p>
                            </div>
                        </div> -->

                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h4>Đánh giá về sản phẩm</h4>
                                <label for="">Đánh giá của bạn về sản phẩm này*</label>
                                <textarea name="" id="" cols="30" rows="10" placeholder="Đánh giá của bạn"
                                          style="width: 100%; height: 150px;"></textarea>
                                <div class="reviewer__information">
                                    <div class="reviewer__information_detail">
                                        <label for="">Tên*</label>
                                        <input type="name" placeholder="Tên">
                                    </div>
                                    <div class="reviewer__information_detail">
                                        <label for="">Địa chỉ email*</label>
                                        <input type="" placeholder="Địa chỉ email">
                                    </div>
                                </div>
                                <button>GỬI ĐÁNH GIÁ</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Sản phẩm liên quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                        <ul class="product__item__pic__hover">

                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Giống cây bơ</a></h6>
                        <h5>45.000₫</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">
                        <ul class="product__item__pic__hover">

                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Giống cây bưởi</a></h6>
                        <h5>45.000₫</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">
                        <ul class="product__item__pic__hover">


                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Giống cây mít</a></h6>
                        <h5>45.000₫</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">
                        <ul class="product__item__pic__hover">

                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Thuốc trừ sâu</a></h6>
                        <h5>45.000₫</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Address: 171 Nguyễn Văn Khối, Phường 8, Gò Vấp, TP. HCM</li>
                        <li>Phone: +84 123456789</li>
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
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright">

                    <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->
<div class="blur-bg-overlay"></div>
<div class="form-popup">
    <span class="close-btn material-symbols-rounded"><svg xmlns="http://www.w3.org/2000/svg" height="1em"
                                                          viewBox="0 0 384 512"><path
            d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"/></svg></span>
    <div class="form-box login">
        <div class="form-details">
            <h2>Chào mừng quý khách quay lại</h2>
            <p>Hãy điền địa chỉ email và mật khẩu vào các ô bên phải</p>
        </div>
        <div class="form-content">
            <h2>ĐĂNG NHẬP</h2>
            <form action="#">
                <div class="input-field">
                    <input type="text" name="name" required>
                    <label>Email</label>
                </div>
                <div class="input-field">
                    <input type="password" name="password" required>
                    <label>Password</label>
                </div>
                <a href="#" class="forgot-pw">Quên mật khẩu?</a>
                <button type="submit">Login</button>
            </form>
            <div class="bottom-link">
                Chưa có tài khoản
                <a href="#" id="signup-link">Đăng ký</a>
            </div>
        </div>
    </div>
    <!--ĐĂNG KÝ-->
    <div class="form-box signup">
        <div class="form-details">
            <h2>Tạo tài khoản</h2>
            <p>Điền thông tin theo yêu cầu bên phải</p>
        </div>
        <div class="form-content">
            <h2>ĐĂNG KÝ</h2>
            <form action="#">
                <div class="input-field">
                    <input type="text" name="name" required>
                    <label>Nhập email</label>
                </div>
                <div class="input-field">
                    <input type="password" name="password" required>
                    <label>Tạo Password</label>
                </div>
                <div class="policy-text">
                    <input type="checkbox" id="policy">
                    <label for="policy">
                        Tôi đồng ý với
                        <a href="">Điều khoản</a>
                    </label>

                </div>
                <button type="submit">Register</button>
            </form>
            <div class="bottom-link">
                Đã có sẵn tài khoản?
                <a href="#" id="login-link">Login</a>
            </div>
        </div>
    </div>
</div>
<!-- Back top end-->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>


</body>

</html>