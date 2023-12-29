package controller;

import Service.SendingEmail;
import bean.User;
import dao.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/PasswordForgot")
public class ForgotPassControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");

        AccountDAO dao = new AccountDAO();
        User user = dao.checkAccountExist(email);
        if(user != null){
            SendingEmail se = new SendingEmail(email);
            se.sendFPassByEmail();
            resp.sendRedirect("verify.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
