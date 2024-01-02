<%@ page import="bean.User" %><%--
  Created by IntelliJ IDEA.
  User: Admin1
  Date: 12/24/2023
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%User a = (User) request.getAttribute("user");
if (a==null) a=new User();%>


<html>
<head>
  <title>Chỉnh sửa</title>
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
  <style>
    .form-group11 {
      display: flex;
      align-items: center;
      margin-bottom: 10px; /* Điều chỉnh khoảng cách giữa các cặp label và input */
    }

    .form-group11 label {
      margin-right: 10px; /* Điều chỉnh khoảng cách giữa label và input */
    }

    .modal-dialog1 {
      display: flex;
      align-items: center;
      justify-content: center;
      padding-top: 23px;
    }

    .modal-dialog-centered {
      display: flex;
      align-items: center;
      min-height: calc(100% - 1rem);
    }

    /* Tùy chỉnh kích thước của modal nếu cần */
    .modal-content {
      width: 80%; /* hoặc bất kỳ giá trị phù hợp nào bạn muốn */
    }
  </style>

</head>
<body>
<div class="modal-dialog1">
  <div class="modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Employees</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <!---->
      <form action="./updateUser" method="post">
        <div class="modal-body">
          <div class="form-group11">
            <label>Mã</label>
            <input type="text" value="<%=a.getId()%>" name="id" class="form-control" readonly>
          </div>
          <div class="form-group">
            <label>Tên tài khoản</label>
            <input type="text" value="<%=a.getUsername()%>" name="username" class="form-control" required>
          </div>
          <div class="form-group row">
            <div class="col">
              <label>Họ</label>
              <input type="text" value="<%=a.getSurname()%>" name="surname" class="form-control" required>
            </div>
            <div class="col">
              <label>Tên(Nhập tên lót)</label>
              <input type="text" value="<%=a.getLastname()%>" name="lastname" class="form-control" required>
            </div>
          </div>
          <!-- Các phần còn lại của biểu mẫu -->
          <div class="form-group">
            <label>Email</label>
            <input type="email" value="<%=a.getEmail()%>" name="email" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Mật khẩu</label>
            <input type="text" value="<%=a.getPassword()%>" name="pass" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Số điện thoại</label>
            <input type="text" value="<%=a.getPhone()%>" name="phone" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Vai trò</label>
            <select class="form-control" name="role" required>
              <option value="user" <%String s = String.valueOf(a.getRole()).equals("0") ? "selected" : "";%> >User</option>
              <option value="admin" <%String b = String.valueOf(a.getRole()).equals("1") ? "selected" : "";%> >Admin</option>
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="cancelAction()">Cancel</button>
          <button type="submit" class="btn btn-success" id="saveButton">Lưu</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
  function cancelAction() {
    window.location.href = "./MaUsers";
  }
</script>



</body>
</html>
