package dao;

import bean.Product;
import bean.Products;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductsDao implements IProductsDao{
    // lấy ra ds sp đc active.
    @Override
    public List<Products> findAll1(String name) {
        List<Products> products=JDBIConnector.getJdbi().withHandle(handle ->
                handle.createQuery("SELECT id,product_name,picture,price,id_category FROM product WHERE status=1 AND product_name LIKE ?")
                        .bind(0,"%"+name+"%")
                        .mapToBean(Products.class).collect(Collectors.toList()));
        return products;
    }

    @Override
    public List<Products> findByCategory(int idCate, String name) {
        List<Products> products = JDBIConnector.getJdbi().withHandle(handle ->
                handle.createQuery("SELECT id, product_name, picture, price, id_category\n" +
                                "FROM product\n" +
                                "WHERE status = 1 AND id_category = ? AND product_name LIKE ?")
                        .bind(0, idCate)
                        .bind(1, "%" + name + "%")
                        .mapToBean(Products.class)
                        .list());
        return products;
    }
    // lấy ra số lượng của toàn bộ loại sản phẩm.
    public static int numOfProduct(String search){
        Integer integer = JDBIConnector.getJdbi().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*)  FROM product where product_name LIKE ?")
                        .bind(0,"%"+search+"%")
                        .mapTo(Integer.class)
                        .one());
        return integer != null ?integer :0;
    }
    // lấy ra số lượng toàn bộ loại sản phẩm theo doanh mục.
    public static int numOfProCate(int idCate,String search){
        Integer integer = JDBIConnector.getJdbi().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*)  FROM product where id_category=? AND product_name LIKE ?")
                        .bind(0,idCate)
                        .bind(1,"%"+search+"%")
                        .mapTo(Integer.class)
                        .one());
        return integer != null ?integer :0;
    }


    //=============================================dưới là phần của admin==========================================================
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
        IProductsDao ad= new ProductsDao();
        for(Products a: ad.findByCategory(2,"sâu")){
            System.out.println(a);
        }
//        System.out.println(ProductsDao.numOfProduct("sâu"));
//        System.out.println(ProductsDao.numOfProCate(1,""));
    }

}
