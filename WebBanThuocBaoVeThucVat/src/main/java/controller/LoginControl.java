package controller;

import bean.User;
import dao.AccountDAO;
import org.springframework.util.DigestUtils;

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

        String newPword = DigestUtils.md5DigestAsHex(pass.getBytes());

        User user = new User();

        AccountDAO acc = new AccountDAO();
        user = acc.login(email, newPword);
        HttpSession session = req.getSession();
        if(user == null){
            String error = "Tài khoản hoặc mật khẩu không đúng,vui lòng kiểm tra lại.";
            session.setAttribute("errorlogin", error);
            resp.sendRedirect("login_register.jsp");
        }else{
            session.setAttribute("uslogin", user);
            // phân quyền để chuyển trang
            if (user.getRole() == 0) {
                session.setAttribute("acc", user);
                resp.sendRedirect("index.jsp");
            }
            if (user.getRole() == 1) {
                session.setAttribute("admin", "admin");
                resp.sendRedirect("admin");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
