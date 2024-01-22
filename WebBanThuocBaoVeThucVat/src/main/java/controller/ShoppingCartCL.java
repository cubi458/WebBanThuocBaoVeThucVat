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
import java.util.List;
import java.util.Map;

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
        switch (action) {
            case "get":
                request.getRequestDispatcher("gio-hang.jsp").forward(request, response);
                break;
            case "delete":
                Delete(request, response);
                break;
            case "put":
                Put(request, response);
                break;
            case "post":
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
                break;
//            case "checkout":
//                try {
//                    checkout(request, response);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
//                break;
            case "view":
                showProductDetails(request, response);
                break;

            default:
                // Xử lý trường hợp khác nếu cần
        }
    }



    protected void Put(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShoppingCart shoppingCart;
        HttpSession session = req.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        int id = Integer.parseInt(req.getParameter("id"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String e = "";
        if(quantity>0){
            shoppingCart.update(id, quantity);
        }
        else{
            e="Số lượng phải lớn hơn 0";
        }
        req.setAttribute("error", e);
        session.setAttribute("cart", shoppingCart);
        req.getRequestDispatcher("ShoppingCartCL?action=get").forward(req,resp);
    }


    protected void Delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ShoppingCart shoppingCart;
        HttpSession session = req.getSession();
        shoppingCart = (ShoppingCart) session.getAttribute("cart");
        int id = Integer.parseInt(req.getParameter("id"));
        shoppingCart.remove(id);
        session.setAttribute("cart", shoppingCart);
        resp.sendRedirect("gio-hang.jsp");
    }


//    protected void checkout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
//        String first_name = req.getParameter("first_name");
//        String last_name = req.getParameter("last_name");
//        String city = req.getParameter("city");
//        String ward = req.getParameter("ward");
//        String address = req.getParameter("address");
//        String phone = req.getParameter("phone");
//        String email = req.getParameter("email");
//        String note = req.getParameter("note");
//
//        HttpSession session = req.getSession();
//
//        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("cart");
//
//        if (shoppingCart != null && !shoppingCart.getCartItemList().isEmpty()) {
//            double total = shoppingCart.getTotalPrice();
//            Order order = new Order(first_name, last_name, city, ward, address, phone, email, note, total);
//
//            try {
//                OrderService.add(order);
//            } catch (SQLException e) {
//                // Xử lý exception nếu có
//                e.printStackTrace();
//            }
//            session.removeAttribute("cart");
//            resp.sendRedirect("thanh-toan.jsp");
//        } else {
//            // Xử lý trường hợp giỏ hàng null hoặc trống
//            resp.sendRedirect("gio-hang.jsp"); // Chuyển hướng người dùng đến trang giỏ hàng với thông báo lỗi
//        }
//    }
private void showProductDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int productId = Integer.parseInt(request.getParameter("id"));
    Product product = productService.findById(productId);

    // Set sản phẩm vào request attribute để sử dụng trong JSP
    request.setAttribute("product", product);

    // Forward request đến trang hiển thị thông tin sản phẩm (thong-tin-san-pham.jsp)
    RequestDispatcher dispatcher = request.getRequestDispatcher("thong-tin-don-hang.jsp");
    dispatcher.forward(request, response);
}


}
