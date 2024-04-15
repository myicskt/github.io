package db;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import form.User;

public class DBConnection {

	static final String URL = "jdbc:mysql://localhost:3306/register_login";
	static final String USER = "root";
	static final String KEY = "root";
	static Connection con ;
	
	public static Connection getConnection(String URL, String USER, String KEY) {
		try {
			con = DriverManager.getConnection(URL, USER, KEY);
		} catch (SQLException e) {
			System.out.println("DB connection ... ");
			e.printStackTrace();
		}
		
		return con;
	}
	
	
	public static boolean isValidUser(String uid) {
		String query = "select username from login_user where username IS NOT NULL;";
		Statement stmt;
		ResultSet result;
		String userEID =uid.toString();
		try {
			con = DriverManager.getConnection(URL, USER, KEY);
			stmt = ((java.sql.Connection) con).createStatement();
			result = stmt.executeQuery(query);
			
			while (result.next()) {
				String tempUser = result.getString("username").toString();
				if (uid.equals(tempUser)) {
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean isValidUserAndPassword(String uid, String pwd) {
		String query = "select username, user_pws from login_user where username IS NOT NULL;";
		Statement stmt;
		ResultSet result;
		String userEID =uid.toString();
		String userEPwd=pwd.toString();
		try {
			con = DriverManager.getConnection(URL, USER, KEY);
			stmt = ((java.sql.Connection) con).createStatement();
			result = stmt.executeQuery(query);
			
			while (result.next()) {
				String tempUser = result.getString("username").toString();
				String tempPwd = result.getString("user_pws").toString();
				if (uid.equals(tempUser) && pwd.equals(tempPwd)) {
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	public static Connection getDBConnection() {
		Connection con = null;
		try {

			con = DriverManager.getConnection(URL, USER, KEY);
			System.out.println("Successfully connect to DB");
		} catch (SQLException e) {
			System.out.println("Connection error");
			e.printStackTrace();
		}

		return con;
	
	}
	
	
	
	
	
	
	
	
	
	
	public static void main(String []arg) {
		boolean isValidUser =isValidUser("user");
		System.out.println(isValidUser);
		
		boolean isValidUser2 =isValidUser("aa");
		System.out.println(isValidUser2);
		
		
		
		
		

	}
	
	

}
