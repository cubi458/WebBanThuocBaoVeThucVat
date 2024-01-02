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

    /**
     * public static List<User>selectTen(int index){
     *         List<User> users = JDBIConnector.me().withHandle(handle ->
     *                 handle.createQuery("SELECT * FROM users\n" +
     *                                 "ORDER BY id\n" +
     *                                 "LIMIT 5 OFFSET ?")
     *                         .bind(0,(index - 1) * 5)
     *                         .mapToBean(User.class)
     *                         .collect(Collectors.toList()));
     *         return users;
     *     }
     * @param args
     */

    public static void main(String[] args) {
//        System.out.println(selectAllPro());

        for(User a :UserDAO.selectTen(1)){
            System.out.println(a);
        }
    }
}
