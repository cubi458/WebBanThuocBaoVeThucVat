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

@WebServlet(name = "ProductMangement", value = "/MaProduct")
public class ProductMangement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product>listPro= ProductServirce.getInstance().getListPro();
        req.setAttribute("listPro",listPro);
        //=========================Phân số trang==================================
        int num= ProductServirce.getInstance().selectAllPro();
        int endPage=num/5;
        if(num%5 !=0){
            endPage++;
        }
        req.setAttribute("endPage",endPage);
        req.getRequestDispatcher("./quanlySP.jsp").forward(req,resp);
    }
}
