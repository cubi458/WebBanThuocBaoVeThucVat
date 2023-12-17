package controller;

import bean.User;
import dao.AccountDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        AccountDAO acc = new AccountDAO();
        User user = acc.login(email, pass);
        HttpSession session = req.getSession();
        if(user == null){
            String error = "Tài khoản hoặc mật khẩu không đúng,vui lòng kiểm tra lại.";
            session.setAttribute("errorlogin", error);
            resp.sendRedirect("login_register.jsp");
        }else{
            session.setAttribute("uslogin", user);
            // phân quyền để chuyển trang
            if (user.getRole() == 0) {
                resp.sendRedirect("index.jsp");
            }
            if (user.getRole() == 1) {
                session.setAttribute("admin", "admin");
                resp.sendRedirect("admin.jsp");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
