package Service;

import bean.Order;

import java.sql.*;
import java.sql.SQLException;
public class OrderService {
    static final String DB_URL = "jdbc:mysql://localhost/test";
    static final String USER = "root";
    static final String PASS = "";

    public static void add(Order order) throws SQLException {
        String sql = "INSERT orders(id, first_name, last_name, city, ward, address, phone, email, note, total) VALUES (?, ?, ?, ?,?, ?, ?, ?, ?,?) ";
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (Exception ex){
        }
        try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            PreparedStatement stmt = conn.prepareStatement(sql);
        ){
        stmt.setInt(1, order.getId());
        stmt.setString(2, order.getFirst_name());
        stmt.setString(3, order.getLast_name());
        stmt.setString(4, order.getCity());
        stmt.setString(5, order.getWard());
        stmt.setString(6, order.getAddress());
        stmt.setString(7, order.getPhone());
        stmt.setString(8, order.getEmail());
        stmt.setString(9, order.getNote());
        stmt.setDouble(10, order.getTotal());

        stmt.executeUpdate();
    }catch (SQLException e){
            e.printStackTrace();;
        }
    }
}
