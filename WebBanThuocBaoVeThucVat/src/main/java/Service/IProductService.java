package Service;

import bean.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll1();
    List<Product> findAll2();
    Product findById(int id);
}
