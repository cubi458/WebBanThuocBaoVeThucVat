package Service;

//import com.sun.tools.doclint.Entity;
import bean.User;
import dao.UserDAO;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;


public class UserService {

    private static UserService instance;

    public static UserService getInstance(){
        if(instance ==null ) instance=new UserService();
        return instance;
    }
    public User checkLogin(String email, String pass){
        User userByEmail = UserDAO.getUserByEmail(email);
        if(userByEmail != null && userByEmail.getEmail().equals(email) && userByEmail.getPass().equals(pass))
            return  userByEmail;
        return null;
    }
    public List<User> getDSUsers(){
        return UserDAO.dsUsers();
    }

    public static void main(String[] args) {
        List<User> users = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.<User>toList()));
        System.out.println(users);

    }

}
