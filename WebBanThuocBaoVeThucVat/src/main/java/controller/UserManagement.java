package controller;

import Service.UserService;
import bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserManagement", value = "/maUser")
public class UserManagement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String roleID=req.getParameter("roleID");
        int roleInt= Integer.parseInt(roleID);
        // chuyển role,uid về kiểu dữ liệu int.
        String uid= req.getParameter("uid");// trang hiện tại
        int uidInt=Integer.parseInt(uid);
        // khởi tạo 1 biến role khác bằng với role .
        int roleInt2=roleInt;
        req.setAttribute("roleInt2",roleInt2);


        //Lấy ra số lượng khách hàng
        int num=UserService.getInstance().numOfRole(roleInt);
        int endPage= num/5;
        if(num%5 !=0){
            endPage++;
        }
        req.setAttribute("endPage",endPage);
        req.setAttribute("tag",uidInt);
        List<User>dsUser = UserService.getInstance().listOfRole(roleInt,uidInt);// role/index
        req.setAttribute("dsUser",dsUser);
        req.getRequestDispatcher("admin_page/quanlyuser.jsp").forward(req,resp);
    }
}
