package dao;

import bean.Product;
import bean.Products;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductsDao {
    public static List<Products>productList() {
        List<Products> products = JDBIConnector.getJdbi().withHandle(handle ->
                handle.createQuery("SELECT id , product_name ,picture, price, id_category, quantity, status, specifications,pro_desc FROM product")
                        .mapToBean(Products.class).collect(Collectors.toList()));
        return products;
    }
    // Phương thức dưới lấy ra tên Category của 1 sp bất kỳ theo id sản phẩm.
    public static String CateOfProduct(int id){
        String cateName = JDBIConnector.getJdbi().withHandle(handle ->
                handle.createQuery("SELECT c.category_name FROM product p " +
                                "INNER JOIN category_product c ON p.id_category = c.id " +
                                "WHERE p.id = ?")
                        .bind(0, id)
                        .mapTo(String.class)
                        .one()); // Sử dụng oneOrNull để tránh ngoại lệ khi không tìm thấy dữ liệu

        return cateName != null ? cateName : "";
    }

    public static void main(String[] args) {
//        System.out.println(ProductsDao.CateOfProduct(2));
        for(Products a: ProductsDao.productList()){
            System.out.println(a);
        }
    }
}
