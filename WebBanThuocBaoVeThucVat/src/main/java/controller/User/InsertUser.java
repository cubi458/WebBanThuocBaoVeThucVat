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
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String role = req.getParameter("role");
        int roleINT ;
        if (role.equals("admin")) {
            roleINT = 1;
        }else {
            roleINT =0;
        }
        UserService.getInstance().insertUser(email, pass, name, roleINT);
        resp.sendRedirect("./MaUsers");
    }

}
