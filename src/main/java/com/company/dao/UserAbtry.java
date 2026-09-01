package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;

public class UserAbtry extends UserAb{

	@Override
	
	public boolean addUser(User user) {
		String query = "INSERT INTO OFFICER (Username,Password,AuthKey) VALUES (?,?,?)";
   	 try (Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {

           preparedStatement.setString(1, user.getUsername());
           preparedStatement.setString(2, user.getPassword());
           preparedStatement.setString(3, user.getAuthKey());

           int rows = preparedStatement.executeUpdate();

           return rows>0;
       } catch (SQLException e) {
           e.printStackTrace();
           return false;
       }
   }

	@Override
	
	public boolean isValidUser(String Username, String Password) {
		String query = "SELECT * FROM OFFICER WHERE Username = ? AND Password = ?";
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, Username);
            preparedStatement.setString(2, Password);

            ResultSet resultSet = preparedStatement.executeQuery();

            return resultSet.next(); 
        } catch (SQLException e) {
            e.printStackTrace();
            return false; 
        }
	}
}