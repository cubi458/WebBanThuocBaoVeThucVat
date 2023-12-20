package controller;

import Service.IProductService;
import Service.ProductService;
import bean.CartItem;
import bean.Product;
import bean.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShoppingCartCL", value = "/ShoppingCartCL")
public class ShoppingCartCL extends HttpServlet {
    IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = request.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        if(shoppingCart==null){
            shoppingCart = new ShoppingCart();
        }
        session.setAttribute("cart", shoppingCart);

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = request.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        String action = request.getParameter("action");
        switch (action){
            case "get":
                response.sendRedirect("gio-hang.jsp");
                break;
            case "delete":
                doDelete(request, response);
                break;
            case "put":
                doPut(request, response);
                break;
            default:
                break;
        }
    int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        CartItem cartItem = new CartItem(product, 1);
        shoppingCart.add(cartItem);
        session.setAttribute("cart", shoppingCart);
        response.sendRedirect("ProductController");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }
}