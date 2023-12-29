package dao;

import bean.Product;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    public static List<Product>getListPro(){
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM products")
                        .mapToBean(Product.class).collect(Collectors.toList()));
        return products;
    }

    public static void main(String[] args) {
        for(Product a : getListPro()){
            System.out.println(a);
        }

    }
}
