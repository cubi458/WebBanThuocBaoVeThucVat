package db;

import bean.Product;
import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class JDBIConnector {
    public static Jdbi jdbi;
    public static Jdbi getJdbi(){
        if(jdbi == null){
            connect();
        }
        return jdbi;
    }
    public static void connect(){
        MysqlDataSource dataSource = new MysqlDataSource();

        dataSource.setURL("jdbc:mysql://"+DBProperties.host+":"+DBProperties.port+"/"+DBProperties.dbName);
        dataSource.setUser(DBProperties.username);
        dataSource.setPassword(DBProperties.password);
        try {
            dataSource.setAutoReconnect(true);
            dataSource.setUseCompression(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        jdbi=Jdbi.create(dataSource);
    }

    public static void main(String[] args) {
        Jdbi jdbi = JDBIConnector.getJdbi();
        List<Product> products = jdbi.withHandle(handle -> {
            String sql = "SELECT * FROM thuocthucvat.products";
           return handle.createQuery(sql).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        System.out.println(products);
    }
}
