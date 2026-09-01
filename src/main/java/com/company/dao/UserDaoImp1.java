package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;

public class UserDaoImp1 implements UserDao1 {

    public boolean isValidUser(String Username,String Password) {
        String query = "SELECT * FROM public WHERE Username = ? AND Password = ?";
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

    public boolean addUser(User1 user) {
        String query = "INSERT INTO public (Name,Age,Email,Phone,Address,Username,Password) VALUES (?,?,?,?,?,?,?)";
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, user.getName());
            preparedStatement.setInt(2, user.getAge());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setLong(4, user.getPhone());
            preparedStatement.setString(5, user.getAddress());
            preparedStatement.setString(6, user.getUsername());
            preparedStatement.setString(7, user.getPassword());

            int rows = preparedStatement.executeUpdate();

            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean addfir(FirD fir) {
    	String query = "INSERT INTO FIRdata (name,email,incidentDate,incidentTime,occurrenceArea,Offence,incident) VALUES (?,?,?,?,?,?,?)";
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
        	preparedStatement.setString(1, fir.getname());
            preparedStatement.setString(2, fir.getemail());
            preparedStatement.setString(3, fir.getincidentDate());
            preparedStatement.setString(4, fir.getincidentTime());
            preparedStatement.setString(5, fir.getoccurrenceArea());
            preparedStatement.setString(6, fir.getOffence());
            preparedStatement.setString(7, fir.getincident());
            
            int rows = preparedStatement.executeUpdate();
		return rows>0;
    	
    } catch (SQLException e) {
		e.printStackTrace();
	}
		return false;
    }
    public boolean addcriminal(CrimeRec crimerec) {
    	String query = "INSERT INTO criminal_records (full_name,date_of_birth,crime_committed,arrest_date,charges,court_appearances,convictions,sentence) VALUES (?,?,?,?,?,?,?,?)";
    	try (Connection connection = DBUtil.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)) {
               preparedStatement.setString(1, crimerec.getfull_name());
               preparedStatement.setString(2, crimerec.getdate_of_birth());
               preparedStatement.setString(3, crimerec.getcrime_committed());
               preparedStatement.setString(4, crimerec.getarrest_date());
               preparedStatement.setString(5, crimerec.getcharges());
               preparedStatement.setInt(6, crimerec.getcourt_appearances());
               preparedStatement.setInt(7, crimerec.getconvictions());
               preparedStatement.setString(8, crimerec.getsentence());
               
               int rows = preparedStatement.executeUpdate();
   		return rows>0;
       	
       } catch (SQLException e) {
   		e.printStackTrace();
   	}
   		return false;
       }
public boolean missingRec(missingRec record) {
	String query = "INSERT INTO missing_records (name,date_of_birth,gender,height,weight,last_seen_date,last_seen_location,circumstances) VALUES (?,?,?,?,?,?,?,?)";
	try (Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {
           preparedStatement.setString(1, record.getname());
           preparedStatement.setString(2, record.getdate_of_birth());
           preparedStatement.setString(3, record.getgender());
           preparedStatement.setInt(4, record.getheight());
           preparedStatement.setInt(5, record.getweight());
           preparedStatement.setString(6, record.getlast_seen_date());
           preparedStatement.setString(7, record.getlast_seen_location());
           preparedStatement.setString(8, record.getcircumstances());
           
           int rows = preparedStatement.executeUpdate();
		return rows>0;
   	
   } catch (SQLException e) {
		e.printStackTrace();
	}
		return false;
   }
}
