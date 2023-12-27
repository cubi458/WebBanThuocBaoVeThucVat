package Service;

import bean.Product;
import dao.IProductDAO;
import dao.ProductDAO;
import org.w3c.dom.ls.LSOutput;

import java.util.List;

public class ProductService implements IProductService{
    private IProductDAO productDAO = new ProductDAO();
    @Override
    public List<Product> findAll1() {
        return productDAO.findAll1();
    }

    @Override
    public List<Product> findAll2() {
        return productDAO.findAll2();
    }

    @Override
    public Product findById(int id) {
        return productDAO.findById(id).stream().findFirst().get();
    }


}
