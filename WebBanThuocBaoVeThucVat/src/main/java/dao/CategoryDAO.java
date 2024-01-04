package dao;

import bean.Category;
import bean.Product;
import db.DBContext;
import db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class CategoryDAO {

    public List<Category> getList(){
        Jdbi jdbi = JDBIConnector.getJdbi();
        List<Category> cateList = jdbi.withHandle(handle -> {
            String sql = "SELECT id, category_name FROM category_product"; // Modify the SQL query
            return handle.createQuery(sql).mapToBean(Category.class).list();
        });
        return cateList;
    }


    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<Category> list = dao.getList();
        for(Category i : list){
            System.out.println(i.toString());
        }
    }
}
