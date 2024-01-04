package controller.Product;

<<<<<<<< HEAD:WebBanThuocBaoVeThucVat/src/main/java/controller/Product/Store.java
import Service.ProductServirce;
import Service.UserService;
import bean.Product;

========
>>>>>>>> origin/phuc:WebBanThuocBaoVeThucVat/src/main/java/controller/LogoutControl.java
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

<<<<<<<< HEAD:WebBanThuocBaoVeThucVat/src/main/java/controller/Product/Store.java
@WebServlet(name = "Store", value = "/store")
public class Store extends HttpServlet {
========
@WebServlet(urlPatterns = {"/logout"})
public class LogoutControl extends HttpServlet {
>>>>>>>> origin/phuc:WebBanThuocBaoVeThucVat/src/main/java/controller/LogoutControl.java
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("uslogin");
        resp.sendRedirect("HomePageController");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<<< HEAD:WebBanThuocBaoVeThucVat/src/main/java/controller/Product/Store.java
        List<Product>listPro= ProductServirce.getInstance().getListPro();
        req.setAttribute("listPro",listPro);
        req.getRequestDispatcher("./cuahang.jsp").forward(req,resp);
========

>>>>>>>> origin/phuc:WebBanThuocBaoVeThucVat/src/main/java/controller/LogoutControl.java
    }
}
