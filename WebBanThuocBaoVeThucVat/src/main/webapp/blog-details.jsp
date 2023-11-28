<%@page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <a href="#"><i class="fa fa-user"></i> Tài khoản</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="cuahang.jsp">Shop</a></li>
            <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="thong-tin-don-hang.jsp">Shop Details</a></li>
                    <li><a href="gio-hang.jsp">Shoping Cart</a></li>
                    <li><a href="thanh-toan.jsp">Check Out</a></li>
                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                </ul>
            </li>
            <li><a href="blog.jsp">Blog</a></li>
            <li><a href="lien-he.jsp">Contact</a></li>
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
            <li>Miễn phí vận chuyển cho đơn hàng trị giá trên 500.000đ</li>
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
                            <li>Miễn phí cho tất cả các đơn hàng trị giá trên 500.000đ</li>
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
                        <li><a href="#">Quản lý</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="thong-tin-don-hang.jsp">Thông tin đơn hàng</a></li>
                                <li><a href="gio-hang.jsp">Giỏ hàng</a></li>
                                <li><a href="thanh-toan.jsp">Thanh toán</a></li>
                                <li><a href="./blog-details.jsp">Các bài viết</a></li>
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

<!-- Blog Details Hero Begin -->
<section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="blog__details__hero__text">
                    <h2>CÔNG TY CỔ PHẦN BẢO VỆ THỰC VẬT VƯỜN PHỐ</h2>
                    <ul>
                        <li>By Michael Scofield</li>
                        <li>January 14, 2019</li>
                        <li>8 Comments</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Hero End -->

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5 order-md-1 order-2">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Tìm kiếm...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Danh mục</h4>
                        <ul>
                            <li><a href="#">Tất cả</a></li>
                            <li><a href="#">Kĩ thuật nông nghiệp</a></li>
                            <li><a href="#">Hoạt động công ty</a></li>
                            <li><a href="#">Phong thuỷ</a></li>
                        </ul>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tin tức mới nhất</h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Chọn đất trồng phù hợp cho từng loại cây trồng<br /></h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-2.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Cách ủ phân hữu cơ với mật rỉ đường và chế phẩm vi sinh bón rau an toàn<br /> </h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-3.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Cách xử lý cây chanh vàng Mỹ trồng chậu hoa trái xum xuê <br /></h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tìm kiếm bởi</h4>
                        <div class="blog__sidebar__item__tags">
                            <a href="#">Kĩ thuật nông nghiệp</a>
                            <a href="#">Hoạt động công ty</a>
                            <a href="#">Phong thuỷ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7 order-md-1 order-1">
                <div class="blog__details__text">
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Đất được xem là yếu tố quan trọng và cốt lõi ảnh hưởng đến sự sinh trưởng và phát triển của cây trồng, đặc biệt là với cây trồng chậu. Mỗi loại cây có bộ rễ và đặc điểm sinh trưởng khác nhau sẽ thích hợp với từng cấu trúc đất khác nhau. Hãy cùng Vườn Sài Gòn tìm hiểu chi tiết về vấn đề này nhé!</p>
                    <p><strong>1. Yêu cầu của đất trồng cây trong chậu</strong></p>
                    <ul>
                        <li>Đất tơi xốp, thông thoáng giúp rễ cây dễ dàng lan rộng và phát triển.</li>
                        <li>Tỷ lệ các thành phần hợp lý, phù hợp với các loại cây trồng khác nhau; không khô quá hay giữ nước nhiều.</li>
                        <li>Cung cấp đủ dinh dưỡng và các chất cần thiết cho cây trồng.</li>
                        <li>Hệ vi sinh có lợi phong phú hỗ trợ cây trồng phát triển.</li>
                    </ul>
                    <p><strong>2. Lựa chọn đất trồng cây trong chậu phù hợp</strong></p>
                    <p>Dựa vào cấu tạo bộ rễ và sự sinh trưởng, có thể phân ra làm 3 nhóm cây để lựa chọn loại đất trồng phù hợp.</p>
                    <p><strong>2.1. Những cây lâu năm có bộ rễ dài và ăn sâu xuống đất</strong></p>
                    <p>Những loại cây kiểng sống lâu năm thân gỗ to; tán lớn hoặc một số loại cây có hoa như: cây nguyệt quế, cây sứ, lộc vừng,..có bộ rễ lớn. Cần được trồng trong một không gian đất hoặc chậu đủ lớn để rễ cây có thể phát triển tốt, hoàn thiện nhất.</p>
                    <p>Loại đất trồng cây phù hợp với nhóm cây này nhất cần có độ tơi xốp, lượng đất thịt chiếm từ 25% đến 30% để giúp rễ cây đứng vững, không bị bật gốc khi gặp gió bão.</p>
                    <p><strong>2.2. Cây có bộ rễ chùm</strong></p>
                    <p>Thường là những loại cây kiểng có kích thước nhỏ như: cây hoa mai, hoa hồng, sứ thái, và các loại cây ăn quả,..</p>
                    <p>Nhóm cây này thường có nhu cầu dinh dưỡng khá cao. Nên đất cần được bổ sung nhiều chất hữu cơ như phân bò, heo ủ hoai, phân trùn quế, bánh dầu,...</p>
                    <p><strong>2.3. Cây thân thảo, rau xanh, hoa kiểng có tuổi thọ ngắn</strong></p>
                    <p>Nhóm này có chu kỳ sinh trưởng ngắn (chỉ vài tháng đến tối đa là một năm), nên đất trồng không đòi hỏi quá nhiều dinh dưỡng như hai nhóm trên mà chỉ cần có độ tơi xốp để thoát nước tốt là được.</p>
                    <p><strong>3. Những lưu ý khi chọn đất trồng chậu phù hợp</strong></p>
                    <p>Đất có trọng lượng càng nặng sẽ có khả năng giữ nước càng tốt và ngược lại. Hãy ghi nhớ điều này khi chọn mua đất trồng nhé.</p>
                    <p>Những loại cây cần nhiều ánh sáng mặt trời sẽ phù hợp với loại đất có trọng lượng trung bình. Vì chúng có khả năng giữ nước tốt hơn đất có trọng lượng nhẹ. Giúp hạn chế được tình trạng bị khô do tiếp xúc nhiều với ánh nắng thường xuyên.</p>
                    <p>Những loại cây trồng trong bóng râm thích hợp với đất nhẹ hơn. Vì nếu sử dụng đất có trọng lượng quá nặng, giữ nước quá cao, cây có thể chết vì bị úng, thừa độ ẩm.</p>
                    <p>Những loại đất quá nhẹ, chỉ bao gồm mùn cưa, than bùn và rêu có độ giữ ẩm nước rất kém, dễ gây chết cây của bạn nếu không chú ý.</p>
                    <p>Nếu bạn trồng những loại cây chịu hạn (như xương rồng) thì những loại đất cát hoặc được pha cát cao ít chất dinh dưỡng và thoát nước tốt sẽ phù hợp hơn.</p>
                    <p><strong>Dat Trong Cay Trong Chau</strong></p>
                    <p>Như vậy, chúng ta đã biết chọn đất gì phù hợp cho cây trồng ở nhà đem lại hiệu quả xanh, sạch, sức khỏe cho gia đình. Nếu có bất kỳ thắc mắc nào, bạn vui lòng liên hệ hotline của Vườn Sài Gòn: 0909 1234 09.</p>
                </div>

                <div class="blog__details__content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="blog__details__author">
                                <div class="blog__details__author__pic">
                                    <img src="img/blog/details/details-author.jpg" alt="">
                                </div>
                                <div class="blog__details__author__text">
                                    <h6>Michael Scofield</h6>
                                    <span>Admin</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="blog__details__widget">
                                <ul>
                                    <li><span>Danh mục:</span> Kĩ thuật nông nghiệp</li>
                                    <li><span>Tags:</span> All, Trending, Cooking, Healthy Food, Life Style</li>
                                </ul>
                                <div class="blog__details__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Section End -->

<!-- Related Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>Các blog khác</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-1.jpg" alt="">
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
                        <img src="img/blog/blog-2.jpg" alt="">
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
                        <img src="img/blog/blog-3.jpg" alt="">
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
<!-- Related Blog Section End -->

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
                    <h6>Useful Links</h6>
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