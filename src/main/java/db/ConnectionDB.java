package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ConnectionDB {
	
	public static void main(String[]args) {
		ConnectionDB obj= new ConnectionDB();
		obj.getId();
		
	}
	
	public void getId() {
		String query = "select * from login_users";
		String user = "root";
		String key = "root";
		String url = "jdbc:mysql://localhost:3306/feb_2024";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection(url, user, key);
			Statement stmt = con.createStatement();
			ResultSet result= stmt.executeQuery(query);
			
			while(result.next()) {
				System.out.println(result.getString("id"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
