package dao;

import bean.Product;
import db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO implements IProductDAO {
    @Override
    public List<Product> findAll1() {
        Jdbi jdbi = JDBIConnector.getJdbi();
        List<Product> products = jdbi.withHandle(handle -> {
            String sql = "SELECT * FROM thuocthucvat.products";
            return handle.createQuery(sql).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return products;
    }

    @Override
    public List<Product> findAll2() {
        Jdbi jdbi = JDBIConnector.getJdbi();
        List<Product> products2 = jdbi.withHandle(handle -> {
            String sql = "SELECT * FROM thuocthucvat.products2";
            return handle.createQuery(sql).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return products2;
    }

    @Override
    public List<Product> findById(int id) {
        Jdbi jdbi = JDBIConnector.getJdbi();
        List<Product> products = jdbi.withHandle(handle -> {
            String sql = "SELECT * FROM thuocthucvat.products where id=?";
            return handle.createQuery(sql).bind(0, id).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return products;
    }
}
