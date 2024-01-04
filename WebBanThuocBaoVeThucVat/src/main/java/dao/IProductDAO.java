package dao;

import bean.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> findAll1();
    List<Product> findAll2();
    List<Product> findById(int id);
}
