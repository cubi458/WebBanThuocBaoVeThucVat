package Service;

import bean.Products;
import dao.IProductDAO;
import dao.IProductsDao;
import dao.ProductDAO;
import dao.ProductsDao;

import java.util.List;

public class ProductsService {
    private static ProductsService instance;

    public static ProductsService getInstance(){
        if(instance ==null ) instance = new ProductsService();
        return instance;
    }
    private IProductsDao productDAO = new ProductsDao();
    public List<Products> findAll1(String name){
        return productDAO.findAll1(name);
    }
    public List<Products>findByCategory(int idCate,String name){
        return productDAO.findByCategory(idCate,name);
    }
    public int numOfProduct(String search){
        return ProductsDao.numOfProduct(search);
    }
    public int numOfProCate(int idCate,String search){
        return ProductsDao.numOfProCate(idCate,search);
    }

    //=======================================Dưới là của admin=============================================

    public static List<Products> productList() {
        return ProductsDao.productList();
    }

    public static void main(String[] args) {
        for (Products a : ProductsService.getInstance().findByCategory(2,"sâu")){
            System.out.println(a);
        }
    }

}
