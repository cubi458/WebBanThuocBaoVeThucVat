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

    // lấy ra số lượng khách hàng
    public int numOfRole(int role){
        return UserDAO.numOfRole(role);
    }

    public List<User> listOfRole(int role,int index){
        return UserDAO.listOfRole(role, index);
    }
    public void updateUser(String pass,String username,String surname,String lastname,String phone,int id){
        UserDAO.updateUser(pass, username, surname, lastname, phone, id);
    }
    public List<User> listOfRoleWithSearch(int role, int index, String search){
        return UserDAO.listOfRoleWithSearch(role, index, search);
    }
    public static void main(String[] args) {
        for(User a: UserService.getInstance().listOfRoleWithSearch(0,1,"Tai")){
            System.out.println(a);
        }
}
}
