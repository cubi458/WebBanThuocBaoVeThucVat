package bean;

import java.util.Objects;

public class User {
    int id;
    String email;
    String name;
    String pass;
    int role;

    public User(int id, String email, String name, String pass, int role) {
        this.id = id;
        this.email = email;
        this.name = name;
        this.pass = pass;
        this.role =role;
    }

    public User(String email, String name, String pass) {
        this.email = email;
        this.name = name;
        this.pass = pass;
    }

    public User() {
    }

    public User(String email, String name) {
        this.email = email;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRole() {return role;}

    public void setRole(int role) {this.role = role;}

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", pass='" + pass + '\'' +
                ", role=" + role +
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


    @Override
    public int hashCode() {
        return Objects.hash(id, email, name, pass);
    }
}
