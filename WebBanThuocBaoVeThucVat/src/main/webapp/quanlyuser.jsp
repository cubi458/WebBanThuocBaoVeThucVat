<%@ page import="java.util.List" %>
<%@ page import="bean.User" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin1
  Date: 11/24/2023
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<User> dsUser = (List<User>) request.getAttribute("dsUser");
    if (dsUser == null) dsUser = new ArrayList<>();%>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <title>Quan ly don hang</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/admin/bootstrap.min.admin.css">
    <!----css3---->
    <link rel="stylesheet" href="css/admin/custom.css">


    <!--google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">


    <!--google material icon-->
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">


</head>
<body>
<div class="wrapper">
    <div class="body-overlay"></div>
    <!-------sidebar--design------------>
    <div id="sidebar">
        <div class="sidebar-header">
            <img src="img/logo.png" class="img-fluid"/>
        </div>
        <ul class="list-unstyled component m-0">
            <li>
                <a href="./dashboard" class="dashboard"><i class="material-icons">dashboard</i>Trang chủ </a>
            </li>

            <li class="dropdown active">
                <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">aspect_ratio</i>Quản lý
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                    <li><a href="./MaProduct">Quản lý sản phẩm</a></li>
                    <li><a href="./MaUsers">Quản lý người dùng</a></li>
                    <li><a href="quanlyDonHang.jsp">Quản lý đơn hàng</a></li>
                    <li><a href="#">Quản lý bài viết</a></li>
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

        <div class="top-navbar">
            <div class="xd-topbar">
                <div class="row">
                    <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
                        <div class="xp-menubar">
                            <span class="material-icons text-white">signal_cellular_alt</span>
                        </div>
                    </div>

                    <div class="col-md-5 col-lg-3 order-3 order-md-2">
                        <div class="xp-searchbar">
                            <form>
                                <div class="input-group">
                                    <input type="search" class="form-control"
                                           placeholder="Search">
                                    <div class="input-group-append">
                                        <button class="btn" type="submit" id="button-addon2">Go
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
                        <div class="xp-profilebar text-right">
                            <nav class="navbar p-0">
                                <ul class="nav navbar-nav flex-row ml-auto">
                                    <li class="dropdown nav-item active">
                                        <a class="nav-link" href="#" data-toggle="dropdown">
                                            <span class="material-icons">notifications</span>
                                            <span class="notification">4</span>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">You Have 4 New Messages</a></li>
                                            <li><a href="#">You Have 4 New Messages</a></li>
                                            <li><a href="#">You Have 4 New Messages</a></li>
                                            <li><a href="#">You Have 4 New Messages</a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                                            <span class="material-icons">question_answer</span>
                                        </a>
                                    </li>

                                    <li class="dropdown nav-item">
                                        <a class="nav-link" href="#" data-toggle="dropdown">
                                            <span class="material-icons">person</span>
                                        </a>
                                        <ul class="dropdown-menu small-menu">
                                            <li><a href="#">
                                                <span class="material-icons">person_outline</span>
                                                Profile
                                            </a></li>
                                            <li><a href="#">
                                                <span class="material-icons">settings</span>
                                                Settings
                                            </a></li>
                                            <li><a href="#">
                                                <span class="material-icons">logout</span>
                                                Logout
                                            </a></li>

                                        </ul>
                                    </li>


                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>

                <div class="xp-breadcrumbbar text-center">
                    <h4 class="page-title">Quản lý người dùng</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Vishweb</a></li>
                        <li class="breadcrumb-item active" aria-curent="page">Dashboard</li>
                    </ol>
                </div>


            </div>
        </div>
        <!------top-navbar-end----------->


        <!------main-content-start----------->

        <div class="main-content">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-wrapper">

                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                    <h2 class="ml-lg-2">Quản lý người dùng</h2>
                                </div>
                                <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                        <i class="material-icons">&#xE147;</i>
                                        <span>Thêm người dùng</span>
                                    </a>
                                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">
                                        <i class="material-icons">&#xE15C;</i>
                                        <span>Xóa</span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Mã</th>
                                <th>Tên</th>
                                <th>Email</th>
                                <th>Mật khẩu</th>
                                <th>Vai trò</th>
                                <th>Chỉnh</th>
                            </tr>
                            </thead>
                            <tbody>
                            <% for (User a : dsUser) { %>
                            <tr>
                                <th><a href=""><span class="material-icons">person</span></a></th>
                                <th><%=a.getId()%>
                                </th>
                                <th><%=a.getUsername()%>
                                </th>
                                <th><%=a.getEmail()%>
                                </th>
                                <th><%=a.getPassword()%>
                                </th>
                                <th>
                                    <% if (a.getRole() == 1) {%>
                                    admin
                                    <%} else {%>
                                    user
                                    <%}%>
                                </th>
                                <th>
                                    <a href="./updateUser?userID=<%=a.getId()%>" class="edit">
                                        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                    </a>
                                    <a href="#deleteEmployeeModal<%=a.getId()%>" class="delete" data-toggle="modal">
                                        <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                    </a>
                                </th>
                            </tr>
                            <!---------------------------------Xóa người dùng-------------------------------------->
                            <div class="modal fade" tabindex="-1" id="deleteEmployeeModal<%=a.getId()%>" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Xóa thành viên</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Bạn có chắc muốn xóa <%=a.getUsername()%> ra khỏi danh sách</p>
                                            <p class="text-warning"><small>this action Cannot be Undone,</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy
                                            </button>
                                            <button type="button" class="btn btn-success"
                                                    onclick="deleteUser('<%=a.getEmail()%>')">Xóa
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}%>
                            </tbody>
                        </table>
                        <div class="clearfix">
                            <div class="hint-text">showing <b>5</b> out of <b>25</b></div>
                            <ul class="pagination">
                                <li class="page-item disabled"><a href="#">Previous</a></li>
                                <% int tag = (int) request.getAttribute("tag");
                                    int endPage = (int) request.getAttribute("endPage");
                                    for (int i = 1; i <= endPage; i++) {
                                        String classValue = (tag == i) ? "page-item active" : "page-item";
                                %>
                                <li class="<%= classValue %>">
                                    <a href="./MaUsers?uid=<%= i %>" class="page-link"><%= i %>
                                    </a>
                                </li>
                                <% } %>
                                <li class="page-item"><a href="#" class="page-link">Next</a></li>
                            </ul>
                        </div>
                        <%--                                <li class="page-item "><a href="#" class="page-link">1</a></li>--%>
                        <%--                                <li class="page-item "><a href="#" class="page-link">2</a></li>--%>
                        <%--                                <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
                        <%--                                <li class="page-item "><a href="#" class="page-link">4</a></li>--%>
                        <%--                                <li class="page-item "><a href="#" class="page-link">5</a></li>--%>
                    </div>
                </div>


                <!-------------------------------------Thêm người dùng-------------------------------------->
                <div class="modal fade" tabindex="-1" id="addEmployeeModal" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Thêm thành viên</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="./insertUser" method="post">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>Tên tài khoản</label>
                                        <input type="text" name="username" class="form-control" required>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col">
                                            <label>Họ</label>
                                            <input type="text" name="surname" class="form-control" required>
                                        </div>
                                        <div class="col">
                                            <label>Tên(Nhập tên lót)</label>
                                            <input type="text" name="lastname" class="form-control" required>
                                        </div>
                                    </div>
                                    <!-- Các phần còn lại của biểu mẫu -->
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" name="email" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Mật khẩu</label>
                                        <input type="text" name="pass" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <input type="text" name="phone" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Vai trò</label>
                                        <select class="form-control" name="role" required>
                                            <option value="user">User</option>
                                            <option value="admin">Admin</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                                    <button type="submit" class="btn btn-success">Thêm</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!----edit-modal end--------->


                <!----edit-modal start--------->
                <%--                <div class="modal fade" tabindex="-1" id="editEmployeeModal" role="dialog">--%>
                <%--                    <div class="modal-dialog" role="document">--%>
                <%--                        <div class="modal-content">--%>
                <%--                            <div class="modal-header">--%>
                <%--                                <h5 class="modal-title">Edit Employees</h5>--%>
                <%--                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                <%--                                    <span aria-hidden="true">&times;</span>--%>
                <%--                                </button>--%>
                <%--                            </div>--%>
                <%--                                <div class="modal-body">--%>
                <%--                                    <div class="form-group">--%>
                <%--                                        <label>Tên</label>--%>
                <%--                                        <input type="text" name="name" class="form-control" required>--%>
                <%--                                    </div>--%>
                <%--                                    <div class="form-group">--%>
                <%--                                        <label>Email</label>--%>
                <%--                                        <input type="email" name="email" class="form-control" required>--%>
                <%--                                    </div>--%>
                <%--                                    <div class="form-group">--%>
                <%--                                        <label>Mật khẩu</label>--%>
                <%--                                        <input type="password" name="pass"  class="form-control" required>--%>
                <%--                                    </div>--%>
                <%--                                    <div class="form-group">--%>
                <%--                                        <label>Vai trò</label>--%>
                <%--                                        <select class="form-control" name="role" required>--%>
                <%--                                            <option value="user" >User</option>--%>
                <%--                                            <option value="admin">Admin</option>--%>
                <%--                                        </select>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                                <div class="modal-footer">--%>
                <%--                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
                <%--                                    <button type="button" class="btn btn-success" id="saveButton">Lưu</button>--%>
                <%--                                </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>


                <!----edit-modal end--------->


                <!----delete-modal start--------->

                <!----edit-modal end--------->


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
<script src="js/adminJS/jquery-3.3.1.slim.min.js"></script>
<script src="js/adminJS/popper.min.js"></script>
<script src="js/adminJS/jquery-3.3.1.min.js"></script>
<script src="js/adminJS/bootstrap.min.js"></script>


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

<script>
    function deleteUser(userEmail) {
        // Tạo một biểu mẫu và thêm input ẩn để chứa email người dùng
        var form = document.createElement("form");
        form.setAttribute("method", "post");
        form.setAttribute("action", "./deletUser");

        var input = document.createElement("input");
        input.setAttribute("type", "hidden");
        input.setAttribute("name", "userEmail");
        input.setAttribute("value", userEmail);

        form.appendChild(input);
        document.body.appendChild(form);

        // Gửi yêu cầu POST
        form.submit();
    }
</script>


</body>

</html>