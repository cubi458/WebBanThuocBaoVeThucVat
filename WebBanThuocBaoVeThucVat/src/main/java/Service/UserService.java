package Service;

//import com.sun.tools.doclint.Entity;
import bean.Product;
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
    public void deleteUser(String email){
        UserDAO.deleteUser(email);
    }
    public void insertUser(String email,String pass,String name,int role){
        UserDAO.insertUser(email, pass, name, role);
    }

    public User selectUser(int a){
        return UserDAO.selectUser(a);
    }
    public void updateUser(String email, String pass, String name, int role,int id){
        UserDAO.updateUser(email, pass, name, role, id);
    }
    public int selectAllUser(){
        return UserDAO.selectAllUser();
    }
    public List<User> selectTen(int index){
        return UserDAO.selectTen(index);
    }
public static void main(String[] args) {
//    UserService.getInstance().insertUser("anhkiet@gmail.com","adc12","Tan Kiet",1);
//    UserService.getInstance().updateUser("abc@gmail.com","ass","aaaa",1,36);;
    for(User a :UserService.getInstance().selectTen(4)){
        System.out.println(a);
    }
}
}
