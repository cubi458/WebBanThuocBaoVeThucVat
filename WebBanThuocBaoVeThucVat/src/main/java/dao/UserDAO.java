package dao;

import Service.UserService;
import bean.User;
import db.JDBIConnector;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class UserDAO {
    //Jdbi jdbi = JDBIConnector.me():sử dụng đối tượng jdbi để tương tác với cơ sở dữ liệu.
    public static User getUserByEmail(String email){
        Optional<User> user = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from users where email = ?")
                        .bind(0,email)
                        .mapToBean(User.class).stream().findFirst()
        ));
        return user.isEmpty() ? null : user.get();
    }
    // Cho ra ds User
    //-----------------------------------------------------------------------------------
    public static List<User> dsUsers(){
        List<User> users = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.<User>toList()));
        return users;
    }
    // xóa người dùng theo email.
    public static void deleteUser(String email){
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("DELETE FROM users WHERE email = ?")
                        .bind(0,email)
                        .execute());
    }


//    public static void main(String[] args) {
//        UserDAO.deleteUser("dinhvu@gmail.com");
//    }

}
