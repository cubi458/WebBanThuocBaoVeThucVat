<%@ page import="dao.AccountDAO" %>
<%@ page import="bean.User" %>
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Chỉnh sửa người dùng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body{
            margin-top:20px;
            background:#353b48
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="//cdn.ckeditor.com/4.6.0/full/ckeditor.js"></script>
    <script>
        function chooseFile(fileInput){
            if(fileInput.files && fileInput.files[0]){
                var reader=new FileReader();

                reader.onload = function (e) {
                    $('#image').attr('src', e.target.result);
                }
                reader.readAsDataURL(fileInput.files[0]);
            }
        }
    </script>
</head>

<body>
<%--<% User user = (User) session.getAttribute("uslogin"); %>--%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
    <div class="row flex-lg-nowrap">
        <div class="col-12 col-lg-auto mb-3" style="width: 200px;"></div>
        <div class="col">
            <div class="row">
                <div class="col mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="e-profile">
                                <div class="row">
                                    <div class="col-12 col-sm-auto mb-3">
                                        <h1>Thêm sản phẩm</h1>
                                    </div>
                                    <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                                    </div>
                                </div>
                                <div class="tab-content pt-3">
                                    <div class="tab-pane active">
                                        <form id="editUserForm" class="form" action="#" method="post" novalidate onsubmit="saveFormData()">
                                            <%--                                            <% String notify = (String) session.getAttribute("notify"); %>--%>
                                            <%--                                            <% if(notify != null) {%>--%>
                                            <%--                                            <p><%= notify %></p>--%>
                                            <%--                                            <% } %>--%>
                                            <div class="row">
                                                <div class="col">
<%--                                                    <div class="row">--%>
<%--                                                        <div class="col">--%>
<%--                                                            <div class="form-group">--%>
<%--                                                                <label>Họ</label>--%>
<%--                                                                <input class="form-control" id="surname" type="text" name="surname" placeholder="">--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="col">--%>
<%--                                                            <div class="form-group">--%>
<%--                                                                <label>Tên</label>--%>
<%--                                                                &lt;%&ndash;                                                                <input class="form-control" id="lastname" type="text" name="lastname" placeholder="<%= user.getLastname() %>">&ndash;%&gt;--%>
<%--                                                                <input class="form-control" id="lastname" type="text" name="lastname" placeholder="">--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="col">--%>
<%--                                                            <div class="form-group">--%>
<%--                                                                <label>Tên người dùng</label>--%>
<%--                                                                &lt;%&ndash;                                                                <input class="form-control" id="username" type="text" name="username" placeholder="<%= user.getUsername() %>">&ndash;%&gt;--%>
<%--                                                                <input class="form-control" id="username" type="text" name="username" placeholder="">--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Tên sản phẩm</label>
                                                                <input class="form-control" id="productName" type="text" name="productName" >
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Doanh mục</label>
                                                                <input class="form-control" id="productCate" type="text" name="productCate">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Số lượng trong kho</label>
                                                                <input class="form-control" id="productNum" type="text" name="productNum">
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Ảnh</label>
                                                                <img id="image" src="" alt="" style="width: 302px; height: 200px; border-style: dashed; border-width: 0.1mm">
                                                                <input type="file" name="" id="imageFile"  onchange="chooseFile(this)" accept="image/jpg , image/jpeg, image/png">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Giá sản phẩm</label>
                                                                <input class="form-control" id="price" type="text" name="price" placeholder="" oninput="formatNumber()">
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label for="activeInput">Trạng thái</label>
                                                                <input id="activeInput" class="form-control" name="active" style="cursor: pointer" type="text" placeholder="" onclick="toggleActive()" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col mb-3"></div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Quy cách</label>
<%--                                                                <input class="form-control ckeditor" id="role" type="text" name="role" placeholder="">--%>
                                                                <textarea class="form-control ckeditor" id="cktext" name="role" rows="3"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Mô tả</label>
                                                                <input class="form-control ckeditor" id="proDecs" type="text" name="proDecs" placeholder="">
                                                                <textarea class="form-control ckeditor" id="cktext1" name="proDecs" rows="3"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col d-flex justify-content-start">
                                                    <button class="btn btn-primary" type="button" style="background-color: #7fad39; border: #7fad39;" onclick="showAlert()">Save Changes</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-3 mb-3">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="px-xl-3">
                                <button class="btn btn-block btn-secondary" style="background-color: #7fad39; border: #7fad39;">
                                    <i class="fa fa-sign-out"></i>
                                    <span><a href="HomePageController" style="text-decoration: none; text-underline: none; color: white;">Trang chủ</a></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"></script>


<%--<script>--%>
<!-- Lắng nghe sự kiện thay đổi của checkbox-->
<%--  function togglePasswordVisibility() {--%>
<%--    var passwordInput = document.getElementById("currentPassword");--%>
<%--    var hash= document.getElementById("hash");--%>
<%--    var checkbox = document.getElementById("showPasswordCheckbox");--%>

<%--    // Nếu checkbox được chọn, hiển thị mật khẩu, ngược lại ẩn mật khẩu--%>
<%--    passwordInput.type = checkbox.checked ? "text" : "password";--%>
<%--    hash.type = checkbox.checked ? "text" :"password";--%>
<%--  }--%>
<%--</script>--%>
<script>
  function toggleActive() {
    var activeInput = document.getElementById("activeInput");
    // Thay đổi giá trị của input giữa 0 và 1 khi input được click
    if (activeInput.value === "Mở bán") {
      activeInput.value = "Hủy bán";
    } else {
      activeInput.value = "Mở bán";
    }
  }
</script>
<script>
    function formatNumber() {
        // Lấy giá trị nhập vào
        let inputValue = document.getElementById("price").value;

        // Loại bỏ tất cả các ký tự không phải số
        let numericValue = inputValue.replace(/\D/g, '');

        // Chia chuỗi thành các phần có độ dài là 3 và nối chúng lại bằng dấu chấm
        let formattedValue = numericValue.replace(/\B(?=(\d{3})+(?!\d))/g, '.');

        // Gán giá trị đã được định dạng vào ô input
        document.getElementById("price").value = formattedValue;
    }
</script>

<%--<script>--%>
<%--  function showAlert() {--%>
<%--    Swal.fire({--%>
<%--      title: "Bạn có muốn lưu lại ?",--%>
<%--      showCancelButton: true,--%>
<%--      confirmButtonText: "Lưu"--%>
<%--    }).then((result) => {--%>
<%--      if (result.isConfirmed) {--%>
<%--        // Nếu người dùng nhấn "Save", thực hiện hành động submit form--%>
<%--        document.getElementById("editUserForm").submit();--%>
<%--      } else {--%>
<%--        Swal.fire("Đã hủy", "", "info");--%>
<%--      }--%>
<%--    });--%>

<%--  }--%>
<%--</script>--%>
</body>
</html>