package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import form.User;

public class ConnectionDB {
	
	public static List<User> getConnection() {
		List<User>list=new ArrayList();
		String query = "select * from login_user";
		String user = "root";
		String key = "root";
		String url = "jdbc:mysql://localhost:3306/register_login";
		Connection con=null;
		Statement stmt;
		ResultSet result;
		try {
			con =DriverManager.getConnection(url, user, key);
			System.out.println("DB connected sucessfully");
			stmt=con.createStatement();
			result=stmt.executeQuery(query);
			
			while(result.next()) {
				
				String firstname=result.getString("firstname");
				String lastName=result.getString("lastname");
				String userName=result.getString("username");
				String passwerd=result.getString("user_pws");
				String email=result.getString("email");
				long phon=result.getLong("phone_no");
				list.add(new User(firstname,lastName,userName,passwerd,email,phon));
				
			}
			
			
		} catch (SQLException e) {
			System.out.println("DB connection is failed");
			e.printStackTrace();
		} 
		return list;
	}
	
	public static void main(String []arg) {
		
		for(User e:getConnection()) {
			System.out.println(e);
		}
	}

}
