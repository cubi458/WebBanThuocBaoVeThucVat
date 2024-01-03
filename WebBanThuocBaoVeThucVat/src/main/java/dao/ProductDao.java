package dao;

import bean.Product;
import bean.User;
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
    public static int selectAllPro(){
        Integer num = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM products")
                        .mapTo(Integer.class).one());
        return num;
    }
    public static List<Product>selectTen(int index){
        List<Product> ds5SP= JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM products ORDER BY id LIMIT 5 OFFSET ?")
                        .bind(0,(index-1)*5)
                        .mapToBean(Product.class).collect(Collectors.toList()));
        return ds5SP;
    }
//-----------------Xóa sản phẩm-----------------------
    public static void deleteProduct(int idProduct){
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("DELETE FROM products WHERE id = ?")
                        .bind(0,idProduct)
                        .execute());
    }

    public static void main(String[] args) {
        ProductDao.deleteProduct(24);
    }

}
