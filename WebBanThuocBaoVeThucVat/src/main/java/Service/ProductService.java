package Service;

import bean.Product;
import dao.IProductDAO;
import dao.ProductDAO;
import org.w3c.dom.ls.LSOutput;

import java.util.List;

public class ProductService implements IProductService{
    private IProductDAO productDAO = new ProductDAO();
    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public Product findById(int id) {
        return productDAO.findById(id).stream().findFirst().get();
    }


}
