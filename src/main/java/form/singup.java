package form;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class singup
 */
@WebServlet("/singup")
public class singup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	final String url = "jdbc:mysql://localhost:3306/feb_2024";
	final String user = "root";
	final String key = "root";

	public singup() {
		super();
		// TODO Auto-generated constructor stub
	}

	private static Connection getDBConnection(String url, String user, String key) {
		System.out.println(url);
		System.out.println(user);
		System.out.println(key);
		Connection con = null;
		try {

			con = DriverManager.getConnection(url, user, key);
			System.out.println("Successfully connect to DB");
		} catch (SQLException e) {
			System.out.println("Connection error");
			e.printStackTrace();
		}

		return con;

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName = (String) request.getParameter("firstname");
		String lastName = (String) request.getParameter("lastname");
		String userName = (String) request.getParameter("username");
		String pws = (String) request.getParameter("password");
		String email = (String) request.getParameter("email");
		String gender = (String) request.getParameter("gender");

		Connection con = getDBConnection(url, user, key);

		/*
		 * String query = "select * from login_users"; String user = "root"; String key
		 * = "root"; String url = "jdbc:mysql://localhost:3306/feb_2024";
		 * 
		 * try { Connection con =DriverManager.getConnection(url, user, key); Statement
		 * stmt = con.createStatement(); ResultSet result= stmt.executeQuery(query);
		 * 
		 * while(result.next()) { System.out.println(result.getString("id")); }
		 * 
		 * } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */

		String sucessmsg = "Thank for createing account";
		request.setAttribute("msg", sucessmsg);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("singupsucess.jsp");
		requestDispatcher.forward(request, response);
	}

}
