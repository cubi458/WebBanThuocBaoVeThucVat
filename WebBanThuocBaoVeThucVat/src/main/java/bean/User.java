package bean;

public class User {

    private int id, role;
    private String username, password, phone, email, surname, lastname, hash;

    public User(int id,  String username, String password, String phone, String email, String surname, String lastname ,int role, String hash) {
        this.id = id;
        this.role = role;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.surname = surname;
        this.lastname = lastname;
        this.hash = hash;
    }

    public User(){

    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", role=" + role +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", surname='" + surname + '\'' +
                ", lastname='" + lastname + '\'' +
                '}';
    }

    //    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        User user = (User) o;
//        return id == user.id && Objects.equals(email, user.email) && Objects.equals(name, user.name) && Objects.equals(pass, user.pass);
//    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        User otherUser = (User) obj;
        return id == otherUser.id;
    }



//    @Override
//    public int hashCode() {
//        return Objects.hash(id, email, name, pass);
//    }

//    public static void main(String[] args) {
//        User a=new User(1, "tamle@gmail.com", "Tam", "12345", 1);
//        System.out.println(a.checkRole(0));
//    }
}

