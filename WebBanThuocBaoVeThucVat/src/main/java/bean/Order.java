package bean;

public class Order {
    int id;
    String first_name;
    String last_name;
    String city;
    String ward;
    String address;
    String phone;
    String email;
    String note;
    double total;

    public Order(int id, String first_name, String last_name, String city, String ward, String address, String phone, String email, String note, double total) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.city = city;
        this.ward = ward;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.total = total;
    }
    public Order( String first_name, String last_name, String city, String ward, String address, String phone, String email, String note, double total) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.city = city;
        this.ward = ward;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", city='" + city + '\'' +
                ", ward='" + ward + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", note='" + note + '\'' +
                ", total=" + total +
                '}';
    }
}
