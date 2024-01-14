package controller;

import Service.UserService;
import bean.User;
import org.springframework.util.DigestUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="UserEdit",value = "/editUser")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userID= req.getParameter("userID");
        int usidInt=0;
        if((userID!=null) && (!userID.isEmpty())){
            usidInt=Integer.parseInt(userID);
        }
        User userEdit=UserService.getInstance().selectUser(usidInt);
        req.setAttribute("user",userEdit);

        String surname= req.getParameter("surname");
        String lastname= req.getParameter("lastname");
        String username =req.getParameter("username");
        String phone=req.getParameter("phone");
        String password=req.getParameter("password");//mật khẩu cũ
        String passwordHash= DigestUtils.md5DigestAsHex(password.getBytes());
        String newPassword= req.getParameter("newPassword");// mật khẩu mới
        String newPasswordHash= DigestUtils.md5DigestAsHex(newPassword.getBytes());
        String error="";
        if(!passwordHash.equals(userEdit.getPassword())) {
            error = "Mật khẩu cũ không chính xác";
        }else{
//            UserService.getInstance().;
            error="";

        }
        req.setAttribute("error",error);



        req.getRequestDispatcher("admin_page/editUser.jsp").forward(req,resp);
    }
}
