package Service;//package Service;


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
        if(userByEmail != null && userByEmail.getEmail().equals(email) && userByEmail.getPassword().equals(pass))
            return  userByEmail;
        return null;
    }
    public List<User> getDSUsers(){
        return UserDAO.dsUsers();
    }
    public void deleteUser(int id){
        UserDAO.deleteUser(id);
    }
    public void insertUser(String email,String pass,String username,int role,String surname,String lastname,String phone,String hash){
        UserDAO.insertUser(email, pass,username,role,surname,lastname,phone,hash);
    }
    public User selectUser(int a){
        return UserDAO.selectUser(a);
    }
    public void updateUser(String email,String pass,String username,int role,String surname,String lastname,String phone,int id,String hash){
        UserDAO.updateUser(email,pass,username,role,surname,lastname,phone,id,hash);
    }
    // lấy ra số lượng khách hàng
    public int numOfRole(int role){
        return UserDAO.numOfRole(role);
    }

    public List<User> listOfRole(int role,int index){
        return UserDAO.listOfRole(role, index);
    }
public static void main(String[] args) {
        //updateUser(String email,String pass,String username,int role,String surname,String lastname,String phone,int id,String hash)
//    UserService.getInstance().updateUser("chantan@gmail.com","56dfg","chan tan",0,"Chau","Tan","04757585",137,"");
    System.out.println(UserService.getInstance().numOfRole(0));
}
}
