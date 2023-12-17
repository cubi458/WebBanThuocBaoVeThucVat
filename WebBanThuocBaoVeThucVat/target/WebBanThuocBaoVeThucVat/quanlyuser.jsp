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
<% List<User> list = (List<User>) request.getAttribute("dsUser");
    if(list==null) list=new ArrayList<>();%>

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
                <a href="admin.jsp" class="dashboard"><i class="material-icons">dashboard</i>Trang chủ </a>
            </li>

            <li class="dropdown active">
                <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">
                    <i class="material-icons">aspect_ratio</i>Quản lý
                </a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                    <li><a href="quanlySP.jsp">Quản lý sản phẩm</a></li>
                    <li><a href="quanlyuser.jsp">Quản lý khách hàng</a></li>
                    <li><a href="quanlyDonHang.jsp">Quản lý đơn hàng</a></li>
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
                                    <h2 class="ml-lg-2">Manage Employees</h2>
                                </div>
                                <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                        <i class="material-icons">&#xE147;</i>
                                        <span>Add New Employees</span>
                                    </a>
                                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">
                                        <i class="material-icons">&#xE15C;</i>
                                        <span>Delete</span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th><span class="custom-checkbox">
							 <input type="checkbox" id="selectAll">
							 <label for="selectAll"></label></span></th>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Email</th>
                                <th>Mật khẩu</th>
                                <th>Vai trò</th>
                                <th>Actions</th>
                            </tr>
                            </thead>

                            <tbody>
                            <% for(User a : list) { %>
                            <tr>
                                <th><span class="custom-checkbox">
							 <input type="checkbox" id="checkbox<%=a.getId()%>" name="option[]" value="1">
							 <label for="checkbox<%=a.getId()%>"></label></span></th>
                                <th><%=a.getId()%></th>
                                <th><%=a.getName()%></th>
                                <th><%=a.getEmail()%></th>
                                <th><%=a.getPass()%></th>
                                <th>
                                    <%if(a.getRole()==1){%>
                                    admin
                                    <%}else{%>
                                    user
                                    <%}%>
                                </th>
                                <th>
                                    <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                                        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                    </a>
                                    <a href="javascript:void(0);" class="delete" data-email="<%=a.getEmail()%>" data-toggle="modal" onclick="deleteUser('<%=a.getEmail()%>')">
                                        <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                    </a>
                                </th>
                            </tr>
                            <%}%>


<%--                            <tr>--%>
<%--                                <th><span class="custom-checkbox">--%>
<%--							 <input type="checkbox" id="checkbox5" name="option[]" value="1">--%>
<%--							 <label for="checkbox5"></label></span></th>--%>
<%--                                <th>10</th>--%>
<%--                                <th>Vishwajeet Kumar</th>--%>
<%--                                <th>vishkumar234@gmail.com</th>--%>
<%--                                <th> B-2 ser57 Nodia East Delhi,India.</th>--%>
<%--                                <th>(78-555-229)</th>--%>
<%--                                <th>--%>
<%--                                    <a href="#editEmployeeModal" class="edit" data-toggle="modal">--%>
<%--                                        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>--%>
<%--                                    </a>--%>
<%--                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">--%>
<%--                                        <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>--%>
<%--                                    </a>--%>
<%--                                </th>--%>
<%--                            </tr>--%>

                            </tbody>


                        </table>

                        <div class="clearfix">
                            <div class="hint-text">showing <b>5</b> out of <b>25</b></div>
                            <ul class="pagination">
                                <li class="page-item disabled"><a href="#">Previous</a></li>
                                <li class="page-item "><a href="#" class="page-link">1</a></li>
                                <li class="page-item "><a href="#" class="page-link">2</a></li>
                                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                <li class="page-item "><a href="#" class="page-link">4</a></li>
                                <li class="page-item "><a href="#" class="page-link">5</a></li>
                                <li class="page-item "><a href="#" class="page-link">Next</a></li>
                            </ul>
                        </div>


                    </div>
                </div>


                <!----add-modal start--------->
                <div class="modal fade" tabindex="-1" id="addEmployeeModal" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Add Employees</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="emil" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <textarea class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-success">Add</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!----edit-modal end--------->


                <!----edit-modal start--------->
                <div class="modal fade" tabindex="-1" id="editEmployeeModal" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Employees</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="emil" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <textarea class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-success">Save</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!----edit-modal end--------->


                <!----delete-modal start--------->
                <div class="modal fade" tabindex="-1" id="deleteEmployeeModal" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Delete Employees</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure you want to delete this Records</p>
                                <p class="text-warning"><small>this action Cannot be Undone,</small></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-success">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>

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
        if (confirm("Are you sure you want to delete this user?")) {
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/deleUser', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var result = xhr.responseText;
                    if (result === 'Delete successful') {
                        alert("User deleted successfully!");
                        location.reload();
                    } else {
                        alert("Failed to delete user");
                    }
                }
            };
            xhr.send('userEmail=' + userEmail);
        }
    }

</script>

</body>

</html>



