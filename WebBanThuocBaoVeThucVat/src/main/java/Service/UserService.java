package Service;

//import com.sun.tools.doclint.Entity;
import bean.User;
import dao.UserDAO;

import java.util.List;


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
//        UserDAO.updateUser(email, pass, name,role);
        UserDAO.updateUser(email, pass, name, role, id);
    }
public static void main(String[] args) {
//    UserService.getInstance().insertUser("anhkiet@gmail.com","adc12","Tan Kiet",1);
    UserService.getInstance().updateUser("tankiet@Gmail.com","123dfde","Tan Kiet",1,22);
}

}
