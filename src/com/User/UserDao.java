package com.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import com.bookRetrieve.*;
public class UserDao {

    private Connection connection;
    Date currentDatetime = new Date(System.currentTimeMillis());  
    java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());  
    java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime()); 
    public UserDao() {
        connection = DbUtil.getConnection();
    }

    public void Register(User user) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into login_users(uname,name,email,password,address,mobile,college,date_of_joining) values (?,?, ?, ?, ? ,?,?,?)");
            // Parameters start with 1
            
            preparedStatement.setString(1, user.getUname());
            preparedStatement.setString(2, user.getName());
            
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, user.getMobile());
            preparedStatement.setString(6, user.getAddress());
            preparedStatement.setString(7, user.getCollege());
            preparedStatement.setDate(8, sqlDate);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    /*create table starts here
    public void createUserTable(String tableName){
    	try{
    		   	Statement st=connection.createStatement();
    	 
    		   	String createT="create table"+ tableName+"(name varchar2(10), course varchar2(10))";
    	
    	
    	}catch(Exception e){System.out.println(e);}
    }
    */
    public void deleteUser(String uname) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from login_users where uname=?");
            // Parameters start with 1
            preparedStatement.setString(1, uname);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into login_users values(?,?,?,?,?,?,?,?)");
            // Parameters start with 1
            
            preparedStatement.setString(1, user.getName());
            //preparedStatement.setDate(3, new java.sql.Date(user.getDob().getTime()));
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getMobile());
            preparedStatement.setString(5, user.getAddress());
            preparedStatement.setString(6, user.getCollege());
            preparedStatement.setString(7, user.getUname());
            
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from login_users");
            while (rs.next()) {
                User user = new User();
                user.setUname(rs.getString("uname"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setMobile(rs.getString("mobile"));
                user.setAddress(rs.getString("address"));
                user.setCollege(rs.getString("college"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public User getUserById(String uname) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from login_users where uname=?");
            preparedStatement.setString(1, uname);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	user.setUname(rs.getString("uname"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setMobile(rs.getString("mobile"));
                user.setAddress(rs.getString("address"));
                user.setCollege(rs.getString("college"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

}