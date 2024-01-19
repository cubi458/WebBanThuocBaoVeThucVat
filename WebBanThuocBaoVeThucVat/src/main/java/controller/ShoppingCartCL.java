package controller;

import Service.IProductService;
import Service.OrderService;
import Service.ProductService;
import bean.CartItem;
import bean.Order;
import bean.Product;
import bean.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ShoppingCartCL", value = "/ShoppingCartCL")
public class ShoppingCartCL extends HttpServlet {
    IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = request.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        if (shoppingCart == null) {
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
        switch (action) {
            case "get":
                request.getRequestDispatcher("gio-hang.jsp").forward(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "put":
                put(request, response);
                break;
            case "post":
                addProductToCart(request, response);
                break;
            case "checkout":
                checkout(request, response);
                break;
            default:
                // Xử lý trường hợp khác nếu cần
        }
    }

    protected void put(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = req.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        int id = Integer.parseInt(req.getParameter("id"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String errorMessage = "";
        if (quantity > 0) {
            shoppingCart.update(id, quantity);
        } else {
            errorMessage = "Số lượng phải lớn hơn 0";
        }
        req.setAttribute("error", errorMessage);
        session.setAttribute("cart", shoppingCart);
        req.getRequestDispatcher("ShoppingCartCL?action=get").forward(req, resp);
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = req.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        int id = Integer.parseInt(req.getParameter("id"));
        shoppingCart.remove(id);
        session.setAttribute("cart", shoppingCart);
        resp.sendRedirect("gio-hang.jsp");
    }

    protected void addProductToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = request.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        CartItem cartItem = new CartItem(product, 1);
        shoppingCart.add(cartItem);
        session.setAttribute("cart", shoppingCart);

        // Kiểm tra nếu đang ở trang ProductController thì chuyển hướng đến trang ProductController,
        // nếu đang ở trang HomePageController thì chuyển hướng đến trang HomePageController.
        String referer = request.getHeader("referer");
        if (referer != null && referer.contains("HomePageController")) {
            response.sendRedirect("HomePageController");
        } else {
            response.sendRedirect("ProductController");
        }
    }

    protected void checkout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String city = req.getParameter("city");
        String ward = req.getParameter("ward");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String note = req.getParameter("note");

        HttpSession session = req.getSession();

        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("cart");
        if (shoppingCart != null) {
            Map<Product, Integer> cartItems = (Map<Product, Integer>) shoppingCart.getCartItemList();
            if (!cartItems.isEmpty()) {
                double total = 0.0;
                for (Map.Entry<Product, Integer> entry : cartItems.entrySet()) {
                    Product product = entry.getKey();
                    int quantity = entry.getValue();
                    total += product.getPrice() * quantity;
                }

                Order order = new Order(firstName, lastName, city, ward, address, phone, email, note, total);
                try {
                    OrderService.add(order);
                    session.removeAttribute("cart"); // Remove the cart after a successful order
                    req.setAttribute("orderSuccess", true);
                } catch (SQLException e) {
                    e.printStackTrace();
                    req.setAttribute("orderError", "An error occurred while processing the order. Please try again.");
                }
            } else {
                req.setAttribute("orderError", "Your cart is empty. Please add products to your cart before proceeding to checkout.");
            }
        } else {
            req.setAttribute("orderError", "Your cart is empty. Please add products to your cart before proceeding to checkout.");
        }

        req.getRequestDispatcher("checkout.jsp").forward(req, resp);
    }
}
