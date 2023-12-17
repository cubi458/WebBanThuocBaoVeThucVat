package controller;

import bean.User;
import dao.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/signup"})
public class SignUpControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String surname = req.getParameter("surname");
        String lastname = req.getParameter("lastname");
        String phone = req.getParameter("phone");
        String pass = req.getParameter("pass");
        String re_pass = req.getParameter("rePass");


//        HttpSession session = req.getSession();

        if(!pass.equals(re_pass)){
            req.getRequestDispatcher("login_register.jsp").forward(req,resp);
        }else{
            AccountDAO acc = new AccountDAO();
            User user = acc.checkAccountExist(email);
            if(user == null){
                acc.signUp(email , pass, username, surname, lastname, phone);
                req.getRequestDispatcher("index.jsp").forward(req,resp);
            }else{
                req.getRequestDispatcher("login_register.jsp").forward(req,resp);
            }
        }
    }
}
