package com.cestar.dao;

import com.cestar.model.User;

import java.sql.*;

public class UserDao {
    public Connection setupConnection() {
        Connection con = null;
        String user = "root";
        String password = "rootroot";
        String url = "jdbc:mysql://localhost:3306/users_db";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to the database successfully");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return con;
    }

    public int registerUser(User user) {
        int status = 0;
        Connection con = setupConnection();
        String sql = "Insert into users(username ,password, email, contact, city) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getCity());
            status = ps.executeUpdate();
            if (status > 0) {
                System.out.println("User registered successfully");
                return 1;
            } else {
                System.out.println("Query Failed");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return status;
    }

    public User loginUser(String email, String password) {
        User result = null;
        Connection con = setupConnection();
        String sql = "select * from users where email=? and password=?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                result = new User(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("contact"),
                        rs.getString("city")
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return result;
    }
}
