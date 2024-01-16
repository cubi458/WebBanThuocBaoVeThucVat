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
        String userID=req.getParameter("userID");
        int intuserID=0;
        if (userID != null && !userID.isEmpty()) {
            intuserID = Integer.parseInt(userID);
        }
        User oldUser= UserService.getInstance().selectUser(intuserID);
        String surname= req.getParameter("surname");
        String lastname= req.getParameter("lastname");
        String username =req.getParameter("username");
        String phone = req.getParameter("phone");
        String active = req.getParameter("active");
        if(surname==""){
            surname=oldUser.getSurname();
        }
        if(lastname== ""){
            lastname=oldUser.getLastname();
        }
        if(username== ""){
            username=oldUser.getUsername();
        }
        if(phone== ""){
            phone=oldUser.getPhone();
        }
        int activeInt=0;
        if(active != null && !active.isEmpty()) {
            activeInt = Integer.parseInt(active);
        }else{
            activeInt=oldUser.getActive();
        }
        resp.getWriter().println(userID);
        resp.getWriter().println(surname);
        resp.getWriter().println(lastname);
        resp.getWriter().println(username);
        resp.getWriter().println(phone);
        resp.getWriter().println(activeInt);
    }
}
