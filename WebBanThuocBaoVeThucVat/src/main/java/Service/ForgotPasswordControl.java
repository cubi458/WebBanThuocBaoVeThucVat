package Service;

import Service.SendingEmail;
import bean.User;
import dao.AccountDAO;
import org.springframework.util.DigestUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/ForgotPassword")
public class ForgotPasswordControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("key1");
        AccountDAO dao = new AccountDAO();
        User user = dao.checkAccountExist(email);
        HttpSession session = req.getSession();
        if(user != null){
            session.setAttribute("email", email);
            resp.sendRedirect("form_create_nPassword.jsp");
        }else{
            resp.sendRedirect("verify.jsp");
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("email");

        String newPassword = req.getParameter("newPassword");
        String rePassword = req.getParameter("rePassword");

        String hashPassword = DigestUtils.md5DigestAsHex(newPassword.getBytes());

        if(newPassword.equals(rePassword)){
            AccountDAO dao = new AccountDAO();
            String str = dao.forgetPassword(email, hashPassword);
            if(str.equals("Success")){
                resp.sendRedirect("dang-nhap?action=login");
            }else{
                String error = "Mời bạn nhập lại";
                session.setAttribute("error", error);
                resp.sendRedirect("form_create_nPassword.jsp");
            }
        }else {
            resp.sendRedirect("form_create_nPassword.jsp");
        }
    }
}
