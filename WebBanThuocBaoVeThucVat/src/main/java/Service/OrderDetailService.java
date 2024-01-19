package Service;

import bean.Order;
import bean.OrderDetail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDetailService {
    static final String DB_URL = "jdbc:mysql://localhost/test";
    static final String USER = "root";
    static final String PASS = "";

    public static void add(OrderDetail orderDetail) throws SQLException {
        String sql = "INSERT order_detail(id, product_id, order_id, quantity, price) VALUES (?, ?, ?, ?,?) ";
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (Exception ex){
        }
        try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            PreparedStatement stmt = conn.prepareStatement(sql);
        ){
            stmt.setInt(1, orderDetail.getId());
            stmt.setInt(2, orderDetail.getProduct_id());
            stmt.setInt(3, orderDetail.getOrder_id());
            stmt.setInt(4, orderDetail.getQuantity());
            stmt.setDouble(5, orderDetail.getPrice());
            stmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();;
        }
    }
}
