package controller;

import Service.IProductService;
import Service.ProductService;
import bean.Product;
import dao.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/ProductController")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IProductService productService = new ProductService();
        List<Product> products = productService.findAll1();
        List<Product> products2 = productService.findAll2();
        request.setAttribute("products", products);
        request.setAttribute("products2", products2);
        String url = "cuahang.jsp";
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}