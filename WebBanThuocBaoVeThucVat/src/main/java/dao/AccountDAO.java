package dao;

import Service.SendingEmail;
import bean.User;
import com.mysql.cj.protocol.ResultsetRow;
import db.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {

    public User login(String email, String pass){
        String sql = "select * from users where email = ? and password = ? and active = 1";
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
                        rs.getInt(8),
                        rs.getString(9));
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
                        rs.getInt(8),
                        rs.getString(9));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public String signUp(String email,String pass,String username,String surname,String lastname,String phone,String hash){

        String sql = "insert into users(username, password, phone, email, surname, lastname, hash, role, active) values (?,?,?,?,?,?,?,0,0)";
        Connection conn = DBContext.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, surname);
            ps.setString(6, lastname);
            ps.setString(7, hash);
            int i = ps.executeUpdate();
            if(i != 0){
//                SendingEmail se = new SendingEmail(email, hash);
//                se.sendMail();
                return "success";
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public String activeAccount(String email, String hash){
        Connection con = DBContext.getConnection();

        try {
            PreparedStatement ps = con.prepareStatement("select email, hash, active from users where email = ? and hash = ? and active = 0");
            ps.setString(1, email);
            ps.setString(2, hash);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                PreparedStatement ps1 = con.prepareStatement("update users set active = 1 where email = ? and hash = ?");
                ps1.setString(1, email);
                ps1.setString(2, hash);
                int i = ps1.executeUpdate();
                if(i == 1){
                    return "success";
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
