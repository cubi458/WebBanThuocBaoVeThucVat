package controller.User;

import Service.UserService;
import dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InsertUser", value = "/insertUser")

public class InsertUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String surname = req.getParameter("surname");
        String lastname = req.getParameter("lastname");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String phone =req.getParameter("phone");
        String role = req.getParameter("role");
        String hash="";
        int roleINT ;
        if (role.equals("admin")) {
            roleINT = 1;
        }else {
            roleINT =0;
        }
        UserService.getInstance().insertUser(email,username,pass,roleINT,surname,lastname,phone,hash);
        resp.sendRedirect("./MaUsers");
    }

}
