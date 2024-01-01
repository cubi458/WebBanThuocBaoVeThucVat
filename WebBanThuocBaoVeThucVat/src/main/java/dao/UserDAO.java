package dao;

import db.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {

    public String userChangeInfo(String surname, String lastname, String username, String phone,String email){
        Connection conn = DBContext.getConnection();
        String sql = "update users set surname=? , lastname=? , username=? , phone=? where email=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, surname);
            ps.setString(2, lastname);
            ps.setString(3, username);
            ps.setString(4, phone);
            ps.setString(5, email);

            int i = ps.executeUpdate();

            if(i > 0) return "success";
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public String userChangePassword(String email ,String newPassword){
        Connection conn = DBContext.getConnection();
        String sql = "update users set password = ? where email = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setString(2, email);

            int i = ps.executeUpdate();
            if(i > 0) return "success";
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
