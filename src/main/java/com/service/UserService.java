package com.service;

import com.entity.User;
import com.entity.User1;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    public static List<User1> listUsers() {
        List<User1> user1s  = new ArrayList<>();
        String sql = "select * from user";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
           while(rs.next()) {
               User1 user1 = new User1();
               user1.setId(rs.getInt("id"));
               user1.setName(rs.getString("name"));
               user1.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
               user1.setUpdateTime(rs.getObject("update_time", LocalDateTime.class));
               user1s.add(user1);

           }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user1s;
    }
    public static void updateUser(int id, String name) {
        String sql = "update user u set u.name=? where u.id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1, name);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static User1 getUser(int id) {
        User1 user1 = null;
        String sql = "select * from user u where u.id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
             ps.setInt(1,  id);
             try(ResultSet rs = ps.executeQuery()) {
                 while(rs.next()) {
                     user1 = new User1();
                     user1.setId(rs.getInt("id"));
                     user1.setName(rs.getString("name"));
                     user1.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                     user1.setUpdateTime(rs.getObject("update_time", LocalDateTime.class));
                 }
             }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user1;
    }
}
