package dao;

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

    // Kiểm tra id
    //-----------------------------------------------------------------------------------
    public static List<User> dsUsers(){
        List<User> users = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.<User>toList()));
        return users;
    }
    //xóa ng dùng theo email.
    public static void deleteUser(String email){
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("DELETE FROM users WHERE email = ?")
                        .bind(0,email)
                        .execute());
    }
    // thêm ng dùng.
    public static void insertUser(String email,String pass,String name,int role){
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("INSERT INTO users( email, pass, name, role) VALUES (?,?,?,?)")
                        .bind(0, email)
                        .bind(1, pass)
                        .bind(2, name)
                        .bind(3, role)
                        .execute()
        );
    }
    // Chỉnh sửa ng dùng.
    public static User selectUser(int id){
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users where id = ?")
                        .bind(0, id)
                        .mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }
    //UPDATE `users` SET `email`='tamle7723@gmail.com',`pass`='addcb',`name`='Tam Le',`role`='[value-5]' WHERE `id`=1
//    public static void updateUser(String email, String pass, String name, int role) {
//        JDBIConnector.me().withHandle(handle ->
//                handle.createUpdate("UPDATE users SET pass=?, name=?, role=? WHERE email=?")
//                        .bind(0, pass)
//                        .bind(1, name)
//                        .bind(2, role)
//                        .bind(3, email)
//                        .execute()
//        );
//    }
//
//    public static void main(String[] args) {
//        UserDAO.updateUser("anhkiet@gmail.com","adc12","Tan Kiet",0);
//    }


}
