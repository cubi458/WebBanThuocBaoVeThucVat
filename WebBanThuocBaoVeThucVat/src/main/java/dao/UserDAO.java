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
    //Tìm kiếm tác giả qua ID.
//    public static User selectById(int id){
//        User tim = new User();
//        tim.setId(id);
//        for(User a : UserDAO.dsUsers()){
//            if(a.equals(tim)){
//                return a;
//            }
//        }
//        return null;
//    }
//    //Tìm kiếm tác giả qua email.
//    static User selectById(String email){
//        User tim = new User();
//        tim.setEmail(email);
//        for(User a : UserDAO.dsUsers()){
//            if(a.equals(tim)){
//                return a;
//            }
//        }
//        return null;
//    }
//    // Kiểm tra email đã tồn tại chưa thông qua email.
//    static int insert(User a){
//        User existed = UserDAO.selectById(a.getEmail());// kiểm tra tác giả tồn tại
//        if(existed == null){
//            UserDAO.dsUsers().add(a);
//            return 1;
//        }else{
//            return 0;
//        }
//    }
//    private int insertAll(){
//
//    }

    public static void main(String[] args) {
//        System.out.println(UserDAO.dsUsers());

//        System.out.println(UserDAO.selectById(2));

//        User a= new User("tammle@gmail.com","ThanhTam","abcde");
//        System.out.println(UserDAO.insert(a));


    }



}
