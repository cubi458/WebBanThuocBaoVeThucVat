package bean;

import dao.ProductsDao;

import java.text.DecimalFormat;

public class Products {
    private int id;
    private String product_name;
    private String picture;
    private int price;
    private int id_category;
    private int quantity;
    private int status;
    private String specifications;
    private String pro_desc;
    //SELECT id , product_name ,picture, price, id_category, quanitity, status, specifications,pro_desc FROM product
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getId_category() {
        return id_category;
    }

    public void setId_category(int id_category) {
        this.id_category = id_category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public String getPro_desc() {
        return pro_desc;
    }

    public void setPro_desc(String pro_desc) {
        this.pro_desc = pro_desc;
    }

    public Products(int id, String product_name, String picture, int price, int id_category, int quantity, int status, String specifications, String pro_desc) {
        this.id = id;
        this.product_name = product_name;
        this.picture = picture;
        this.price = price;
        this.id_category = id_category;
        this.quantity = quantity;
        this.status = status;
        this.specifications = specifications;
        this.pro_desc = pro_desc;
    }

    public Products() {
    }

    public Products(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Products{" +
                "id=" + id +
                ", product_name='" + product_name + '\'' +
                ", picture='" + picture + '\'' +
                ", price=" + price +
                ", id_category=" + id_category +
                ", quantity=" + quantity +
                ", status=" + status +
                ", specifications='" + specifications + '\'' +
                ", pro_desc='" + pro_desc + '\'' +
                '}';
    }
    public String cateOfProduct(){
        String rs= ProductsDao.CateOfProduct(id);
        return rs;
    }

    public String formatPrice() {
        DecimalFormat decimalFormat = new DecimalFormat("#,###");
        String formattedPrice = decimalFormat.format(price);
        return formattedPrice.replace(',', '.');
    }
    public static void main(String[] args) {

    }

}