package controller;

import Service.UserService;
import bean.User;
import dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditUser",value = "/updateUser")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userID= req.getParameter("userID");
        int intuserID= Integer.parseInt(userID);
        User user = UserService.getInstance().selectUser(intuserID);
        req.setAttribute("user",user);
        req.getRequestDispatcher("./editUser.jsp").forward(req,resp);
//            doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userIdStr = req.getParameter("userID");
        int intValue=0;
        if (userIdStr != null && !userIdStr.isEmpty()) {
            intValue = Integer.parseInt(userIdStr);
        }

        String email = req.getParameter("email");
        String pass= req.getParameter("pass");
        String role=req.getParameter("role");

        int roleINT=0;
        if(role.equals("Admin")) {
            roleINT = 1;
        }else{ if(role.equals("User")){
            roleINT =0;
        }
        }
        String name =req.getParameter("name");
        UserService.getInstance().updateUser(email,pass,name,roleINT,intValue);

        resp.sendRedirect("./MaUsers");
    }
}
