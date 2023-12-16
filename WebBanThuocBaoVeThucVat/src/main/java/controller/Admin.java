package controller;

import bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Admin",value = "/admin")
public class Admin extends HttpServlet {
    // 0 là user /1 là admin
    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
//        HttpSession session=req.getSession();
//        User auth= (User) session.getAttribute("auth");
//        if(auth != null && auth.checkRole(1)){ //Nếu bn tồn tại và m là admin.
//            resp.sendRedirect("admin.jsp");
//        }
//        req.setAttribute("error","Bạn không có quyền truy cập");
//        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);

    }
}
