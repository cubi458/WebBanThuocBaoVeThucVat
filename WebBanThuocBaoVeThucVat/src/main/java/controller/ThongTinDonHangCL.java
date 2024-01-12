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

@WebServlet(name = "ThongTinDonHangCL", value = "/ThongTinDonHangCL")
public class ThongTinDonHangCL extends HttpServlet {
    IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("cart");

        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
            session.setAttribute("cart", shoppingCart);
        }

        String action = request.getParameter("action");

        if ("get".equals(action)) {
            request.getRequestDispatcher("/thong-tin-don-hang.jsp").forward(request, response);
        } else if ("delete".equals(action)) {
            Delete(request, response, shoppingCart);
        } else if ("put".equals(action)) {
            Put(request, response, shoppingCart);
        } else if ("post".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Product product = productService.findById(id);
            CartItem cartItem = new CartItem(product, 1);
            shoppingCart.add(cartItem);
            session.setAttribute("cart", shoppingCart);

            // Kiểm tra nếu đang ở trang ProductController thì chuyển hướng đến trang ProductController,
            // nếu đang ở trang HomePageController thì chuyển hướng đến trang HomePageController.
            String referer = request.getHeader("referer");
            if (referer != null) {
                if (referer.contains("HomePageController")) {
                    response.sendRedirect("HomePageController");
                } else if (referer.contains("ProductController")) {
                    response.sendRedirect("ProductController");
                } else {
                    response.sendRedirect("ThongTinDonHangCL?action=get");
                }
            }
        } else {
            // Xử lý trường hợp khác nếu cần
        }
    }

    protected void Put(HttpServletRequest req, HttpServletResponse resp, ShoppingCart shoppingCart) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String error = "";

        if (quantity > 0) {
            shoppingCart.update(id, quantity);
        } else {
            error = "Số lượng phải lớn hơn 0";
        }

        req.setAttribute("error", error);
        req.getRequestDispatcher("/thong-tin-don-hang.jsp").forward(req, resp);
    }

    protected void Delete(HttpServletRequest req, HttpServletResponse resp, ShoppingCart shoppingCart) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        shoppingCart.remove(id);
        resp.sendRedirect("thong-tin-don-hang.jsp");
    }
}
