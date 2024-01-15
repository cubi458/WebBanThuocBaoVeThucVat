package controller;

import Service.UserService;
import bean.User;
import org.springframework.util.DigestUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="UserEdit",value = "/editUser")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userID= req.getParameter("userID");
        int usidInt=0;
        if((userID!=null) && (!userID.isEmpty())){
            usidInt=Integer.parseInt(userID);
        }
        User userEdit=UserService.getInstance().selectUser(usidInt);
        req.setAttribute("user",userEdit);

        req.getRequestDispatcher("admin_page/editUser.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
