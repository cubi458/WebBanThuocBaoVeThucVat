package Service;

import bean.Products;
import dao.ProductsDao;

import java.util.List;

public class ProductsService {
    private static ProductsService instance;

    public static ProductsService getInstance(){
        if(instance ==null ) instance = new ProductsService();
        return instance;
    }

    public static List<Products> productList() {
        return ProductsDao.productList();
    }

    public static void main(String[] args) {
        for (Products a : ProductsService.getInstance().productList()){
            System.out.println(a);
        }
    }

}
