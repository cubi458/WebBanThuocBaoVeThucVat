package controller.User;

import Service.UserService;
import bean.User;
import dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditUser",value = "/updateUser")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userID= req.getParameter("userID");
        int intuserID= Integer.parseInt(userID);
        User user = UserService.getInstance().selectUser(intuserID);
        req.setAttribute("user",user);
        req.getRequestDispatcher("./editUser.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userIdStr = req.getParameter("id");
        int intValue=0;
        if (userIdStr != null && !userIdStr.isEmpty()) {
            intValue = Integer.parseInt(userIdStr);
        }
        String phone=req.getParameter("phone");
        String username=req.getParameter("username");
        String surname=req.getParameter("surname");
        String lastname=req.getParameter("lastname");
        String hash="";
        String email = req.getParameter("email");
        String pass= req.getParameter("pass");
        String role=req.getParameter("role");
        int roleINT ;
        if (role.equals("admin")) {
            roleINT = 1;
        }else {
            roleINT =0;
        }
        // UserService.getInstance().updateUser("chantan@gmail.com","56dfg","chan tan",0,"Chau","Tan","04757585",137,"");
        UserService.getInstance().updateUser(email,pass,username,roleINT,surname,lastname,phone,intValue,hash);

        resp.sendRedirect("./MaUsers");
    }
}
