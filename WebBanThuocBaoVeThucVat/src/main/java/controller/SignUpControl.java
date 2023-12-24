package controller;

import Service.SendingEmail;
import bean.User;
import dao.AccountDAO;
import org.apache.commons.codec.cli.Digest;
import org.springframework.util.DigestUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

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
        String hashpass = DigestUtils.md5DigestAsHex(pass.getBytes());

//        HttpSession session = req.getSession();

        String myHash ;
        Random random = new Random();
        random.nextInt(999999);
        myHash = DigestUtils.md5DigestAsHex((""+random).getBytes());

        User user = new User();
//        user.setHash(myHash);
//        user.setEmail(email);
//        user.setLastname(lastname);
//        user.setSurname(surname);
//        user.setUsername(username);
//        user.setPhone(phone);
//        user.setPassword(hashpass);

        if(!pass.equals(re_pass)){
            req.getRequestDispatcher("login_register.jsp").forward(req,resp);
        }else{
            AccountDAO acc = new AccountDAO();
            user = acc.checkAccountExist(email);
            if(user == null){
                String str = acc.signUp( email, pass, username, surname, lastname, phone, myHash);
                if(str.equals("success")){
                    SendingEmail se = new SendingEmail(email, myHash);
                    se.sendMail();
                    resp.sendRedirect("verify.jsp");
                }else{
                    resp.sendRedirect("cuahang.jsp");
                }
            }else{
                req.getRequestDispatcher("login_register.jsp").forward(req,resp);
            }
        }
    }
}
