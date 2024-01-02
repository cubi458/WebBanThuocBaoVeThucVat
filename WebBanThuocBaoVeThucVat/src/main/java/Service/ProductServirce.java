package Service;

import bean.Product;
import bean.User;
import dao.ProductDao;
import dao.UserDAO;
import db.JDBIConnector;


import java.util.List;
import java.util.stream.Collectors;

public class ProductServirce {
    private static ProductServirce instance;

    public static ProductServirce getInstance(){
        if(instance ==null ) instance=new ProductServirce();
        return instance;
    }
    public List<Product> getListPro(){
        return ProductDao.getListPro();
    }
    public int selectAllPro(){
        return ProductDao.selectAllPro();
    }
    public List<Product>selectTen(int index){
        return ProductDao.selectTen(index);
    }

    public static void main(String[] args) {
//        for(Product a:ProductServirce.getInstance().getListPro()){
//            System.out.println(a);
//        }
//        UserService.getInstance().insertUser("VuT@gmail.com", "123sd", "Abcdesds", 0);
        for(Product a: ProductServirce.getInstance().selectTen(1)){
            System.out.println(a);
        }
    }
}
