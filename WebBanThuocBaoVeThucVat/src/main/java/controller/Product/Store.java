package controller.Product;

import Service.ProductServirce;
import Service.UserService;
import bean.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Store", value = "/store")
public class Store extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product>listPro= ProductServirce.getInstance().getListPro();
        req.setAttribute("listPro",listPro);
        req.getRequestDispatcher("./cuahang.jsp").forward(req,resp);
    }
}
