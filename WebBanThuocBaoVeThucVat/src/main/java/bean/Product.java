package bean;
<<<<<<< HEAD
import java.text.DecimalFormat;

public class Product {
    private int id;
    private String product_name;
    private String picture;
    private int price;
    private int id_category;

    public Product() {
    }

    public Product(int price) {
        this.price = price;
    }

    public Product(int id, String product_name, String picture, int price, int id_category) {
        this.id = id;
        this.product_name = product_name;
        this.picture = picture;
        this.price = price;
        this.id_category = id_category;
=======

import java.io.Serializable;

public class Product implements Serializable {
    private int id;
    private String name;
    private double price;
    private String des;
    private String thumb;

    public Product(int id, String name, double price, String des, String thumb) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.des = des;
        this.thumb = thumb;
    }
    public Product(){

>>>>>>> origin/phuc
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

<<<<<<< HEAD
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
=======
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
>>>>>>> origin/phuc
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
<<<<<<< HEAD
                ", product_name='" + product_name + '\'' +
                ", picture='" + picture + '\'' +
                ", price=" + price +
                ", id_category=" + id_category +
                '}';
    }
    public String formatPrice() {
        DecimalFormat decimalFormat = new DecimalFormat("#,###");
        String formattedPrice = decimalFormat.format(price);
        return formattedPrice.replace(',', '.');
    }

    public static void main(String[] args) {
        Product a=new Product(2000000);
        System.out.println(a.formatPrice());
    }
=======
                ", name='" + name + '\'' +
                ", price=" + price +
                ", des='" + des + '\'' +
                ", thumb='" + thumb + '\'' +
                '}';
    }
>>>>>>> origin/phuc
}
