package bean;
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
    }

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

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
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
}
