package controller;

import Service.IProductService;
import Service.ProductService;
import bean.Category;
import bean.Product;
import dao.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ThanhToanCL", value = "/ThanhToanCL")
public class ThanhToanCL extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IProductService productService = new ProductService();
        CategoryDAO dao = new CategoryDAO();
        List<Category> cateList = dao.getList();
        List<Product> products = productService.findAll1();
        List<Product> products2 = productService.findAll2();
        request.setAttribute("category", cateList);
        request.setAttribute("products", products);
        request.setAttribute("products2", products2);
        String url = "thanh-toan.jsp";
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}