package controller;

import bean.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShoppingCartCL", value = "/ShoppingCartCL")
public class ShoppingCartCL extends HttpServlet {
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
        String action = request.getParameter("action");
        switch (action){
            case "post":
                break;
            default:
                break;
        }
    }
}