package dao;

import bean.User;
import db.JDBIConnector;

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
//    UPDATE `users` SET `email`='dinhvu@gmail.com',`pass`='123dc',`name`='Dinh Vu',`role`=0 WHERE`id`=2;
    public static void updateUser(String email, String pass, String name, int role,int id) {
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("UPDATE users SET email=?,pass=?,name=?,role=? WHERE id=?")
                        .bind(0,email)
                        .bind(1,pass)
                        .bind(2,name)
                        .bind(3,role)
                        .bind(4,id)
                        .execute()
        );
    }
// kiểm tra người dùng tồn tại.nếu người dùng ko tồn tại false và ngc lại
    public static boolean isUserExists(String email) {
        User a= UserDAO.getUserByEmail(email);
        return a !=null;
    }

    public static void main(String[] args) {
//        System.out.println(isUserExists("12tudao@gmail.com"));
        updateUser("abc@gmail.com","ass","aaaa",1,34);
    }


}
