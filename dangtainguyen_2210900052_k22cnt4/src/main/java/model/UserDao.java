package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import beans.User;

public class UserDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Đăng ký người dùng
    public int register(User u) {
        String sql = "INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)";
        return template.update(sql, u.getUsername(), u.getPassword(), u.getEmail(), "USER");
    }

    // Kiểm tra đăng nhập
    public User login(String username, String password) {
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        try {
            return template.queryForObject(sql, new Object[]{username, password}, 
                new BeanPropertyRowMapper<>(User.class));
        } catch (Exception e) {
            return null;
        }
    }
}
