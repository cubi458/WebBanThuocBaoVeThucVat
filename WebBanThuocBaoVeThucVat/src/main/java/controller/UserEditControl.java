package controller;

import bean.User;
import dao.AccountDAO;
import dao.UserDAO;
import org.springframework.util.DigestUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/userEdit")
public class UserEditControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action != null && action.equals("uEdit")){
            req.getRequestDispatcher("user-profile.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String surname = req.getParameter("surname");
        String lastname = req.getParameter("lastname");
        String username = req.getParameter("username");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String newPassword = req.getParameter("newPassword");
        String confirmPassword = req.getParameter("confirmPassword");

        HttpSession session = req.getSession();
        User userSession = (User) session.getAttribute("uslogin");
        String emailSession = userSession.getEmail();
        String passwordSession = userSession.getPassword();
        String surnameSession = userSession.getSurname();
        String lastnameSession = userSession.getLastname();
        String usernameSession = userSession.getUsername();
        String phoneSession = userSession.getPhone();

        boolean passwordChanged = false;
        boolean dataChanged = false;

        if ((surname != null && !surname.isEmpty()) ||
                (lastname != null && !lastname.isEmpty()) ||
                (username != null && !username.isEmpty()) ||
                (phone != null && !phone.isEmpty())) {
            dataChanged = true;
        }

        if (surname == null || surname.isEmpty()) {
            surname = surnameSession;
        }
        if (lastname == null || lastname.isEmpty()) {
            lastname = lastnameSession;
        }
        if (username == null || username.isEmpty()) {
            username = usernameSession;
        }
        if (phone == null || phone.isEmpty()) {
            phone = phoneSession;
        }

        UserDAO ud = new UserDAO();
        String notify = "";

        if (surname != null && lastname != null && username != null && phone != null) {
            String userEditInfo = ud.userChangeInfo(surname, lastname, username, phone, emailSession);
            if (userEditInfo.equals("success")) {
                notify = "Thay thông tin người dùng thành công";
            } else {
                notify = "Thay đổi không thành công";
            }
        } else if (surname == null && lastname == null && username == null && phone == null) {
            String userEditInfo = ud.userChangeInfo(surnameSession, lastnameSession, usernameSession, phoneSession, emailSession);
            notify = "Chưa có thông tin người dùng thay đổi";
        } else {
            notify = "Bạn chưa nhập đủ thông tin người dùng";
        }

        if (newPassword != null && !newPassword.isEmpty() && confirmPassword != null && !confirmPassword.isEmpty()) {
            passwordChanged = true;

            String hashNewPass = DigestUtils.md5DigestAsHex(newPassword.getBytes());
            String hashPassword = DigestUtils.md5DigestAsHex(password.getBytes());

            if (!hashPassword.equals(passwordSession)) {
                notify = "Mật khẩu cũ không chính xác";
                passwordChanged = false; // Đặt lại biến để không hiển thị thông báo
            } else if (!newPassword.equals(confirmPassword)) {
                notify = "Mật khẩu mới và xác nhận không khớp";
                passwordChanged = false; // Đặt lại biến để không hiển thị thông báo
            } else {
                String userChangePass = ud.userChangePassword(emailSession, hashNewPass);
                if (userChangePass.equals("success")) {
                    notify = "Thay đổi mật khẩu thành công";
                } else {
                    notify = "Thay đổi không thành công";
                }
            }
        } else if ((password != null && !password.isEmpty()) || (newPassword != null && !newPassword.isEmpty()) || (confirmPassword != null && !confirmPassword.isEmpty())) {
            notify = "Bạn chưa nhập đủ thông tin mật khẩu";
        }

        if (dataChanged || passwordChanged) {
            userSession.setSurname(surname);
            userSession.setLastname(lastname);
            userSession.setUsername(username);
            userSession.setPhone(phone);
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            session.setAttribute("uslogin", userSession);
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            session.setAttribute("notify", notify);
            resp.sendRedirect("userEdit?action=uEdit");
        } else {
            notify = "Chưa có dữ liệu người dùng thay đổi";
            session.setAttribute("notify", notify);
            resp.sendRedirect("userEdit?action=uEdit");
        }
        // Cập nhật phiên làm việc mới


    }
}
