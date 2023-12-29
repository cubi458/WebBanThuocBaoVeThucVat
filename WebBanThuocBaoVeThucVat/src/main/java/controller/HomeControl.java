package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/home", "/admin-home", "/dang-nhap", "/dang-xuat"})
public class HomeControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action != null && action.equals("login")){
            req.getRequestDispatcher("login_register.jsp").forward(req,resp);
        }else if(action != null && action.equals("home")){
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else if(action != null && action.equals("admin")){
            req.getRequestDispatcher("admin.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
