package dao;

import bean.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> findAll();
    List<Product> findById(int id);
}
