package controller.User;

<<<<<<<< HEAD:WebBanThuocBaoVeThucVat/src/main/java/controller/User/DeletUser.java
import Service.UserService;
import dao.UserDAO;

========
>>>>>>>> origin/phuc:WebBanThuocBaoVeThucVat/src/main/java/controller/AdminProductControl.java
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

<<<<<<<< HEAD:WebBanThuocBaoVeThucVat/src/main/java/controller/User/DeletUser.java
@WebServlet(name = "DeletUser",value = "/deletUser")
public class DeletUser extends HttpServlet {
========
@WebServlet(urlPatterns = "/AdminProduct")
public class AdminProductControl extends HttpServlet {

>>>>>>>> origin/phuc:WebBanThuocBaoVeThucVat/src/main/java/controller/AdminProductControl.java
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        req.getRequestDispatcher("quanlySP.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<<< HEAD:WebBanThuocBaoVeThucVat/src/main/java/controller/User/DeletUser.java
        String email=req.getParameter("userEmail");
        if(email!= null && !email.isEmpty()){
            UserService.getInstance().deleteUser(email);
            resp.sendRedirect("./MaUsers");
        }
========
        super.doPost(req, resp);
>>>>>>>> origin/phuc:WebBanThuocBaoVeThucVat/src/main/java/controller/AdminProductControl.java
    }
}
