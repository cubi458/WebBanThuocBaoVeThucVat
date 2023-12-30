package controller.User;

import Service.UserService;
import bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListUser" , value = "/listUser")
public class ListUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String uid=req.getParameter("uid");
//        int uidInt = Integer.parseInt(uid);
//        List<User> listTop=UserService.getInstance().selectTen(uidInt);
//        req.setAttribute("listTop",listTop);
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uid=req.getParameter("uid");
        int uidInt =Integer.parseInt(uid);
        List<User>dsUser=UserService.getInstance().selectTen(uidInt);
        req.setAttribute("dsUser",dsUser);
        //=================================================================================================
        int num =UserService.getInstance().selectAllUser();
        int endPage= num/5;
        if(num %5 != 0){
            endPage++;
        }
        req.setAttribute("endPage",endPage);
//        req.setAttribute("tag",endPage);
        req.getRequestDispatcher("quanlyuser.jsp").forward(req,resp);
    }
}
