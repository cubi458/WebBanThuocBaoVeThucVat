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
    .modal-dialog1 {
      width: 400px;
      height: 555px;
      margin: auto;
      position: absolute;
      top: 0; left: 0; bottom: 0; right: 0;
    }
  </style>

</head>
<body>
<div class="modal-dialog1">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Employees</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="./updateUser" method="post">
       <div class="modal-body">
         <div class="form-group">
           <label>Tên</label>
           <input type="text" value="<%=a.getName()%>" name="name" class="form-control" required>
         </div>
         <div class="form-group">
           <label>Email</label>
           <input type="email" value="<%=a.getEmail()%>" name="email" class="form-control" required>
         </div>
         <div class="form-group">
           <label>Mật khẩu</label>
           <input type="text" value="<%=a.getPass()%>" name="pass"  class="form-control" required>
         </div>
         <div class="form-group">
           <label>Vai trò</label>
           <%if(a.getRole()==0){%>
           <select class="form-control" name="role" required>
             <option value="user" selected>User</option>
             <option value="admin">Admin</option>
           </select>
           <%}else{%>
           <select class="form-control" name="role" required>
             <option value="user" >User</option>
             <option value="admin" selected>Admin</option>
           </select>
           <%}%>
         </div>
       </div>
       <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
         <button type="submit" class="btn btn-success" id="saveButton">Lưu</button>
       </div>
      </form>
    </div>

</div>



</body>
</html>
