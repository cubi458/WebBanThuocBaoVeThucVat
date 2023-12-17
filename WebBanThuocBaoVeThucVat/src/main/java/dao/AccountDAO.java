package dao;

import bean.User;
import com.mysql.cj.protocol.ResultsetRow;
import db.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {

    public User login(String email, String pass){
        String sql = "select * from users where email = ? and password = ?";
        Connection conn = DBContext.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public User checkAccountExist(String email){
        String sql = "select * from users where email = ?";
        Connection conn = DBContext.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public void signUp(String email , String pass, String username, String surname, String lastname, String phone){
        String sql = "insert into users(username, password, phone, email, surname, lastname ,role) values (?,?,?,?,?,?,0)";
        Connection conn = DBContext.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, surname);
            ps.setString(6, lastname);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
