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

import db.DBConnection;

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
		
		String firstName = (String) request.getParameter("firstname");
		String lastName = (String) request.getParameter("lastname");
		String userName = (String) request.getParameter("username");
		String pws = (String) request.getParameter("password");
		String email = (String) request.getParameter("email");
		String phoneNumber = request.getParameter("phone");

		if (userName == null && pws == null) {

			response.sendRedirect("singup.jsp");
		} else {
			boolean isValidUser = DBConnection.isValidUser(userName);

			if (isValidUser) {
				request.setAttribute("userStatus", "user is already exist : "+userName);
				response.sendRedirect("singup.jsp");
				
			} else {
				Statement stmt;
				Connection con;

				String query = "insert into login_user (firstname, lastname, username, user_pws, email, phone_no ) values"
						+ "('" + firstName + "','" + lastName + "', '" + userName + "', '" + pws + "', '" + email
						+ "', '" + phoneNumber + "');";

				// int key=-1;
				try {
					con = DBConnection.getDBConnection();
					stmt = ((java.sql.Connection) con).createStatement();
					stmt.executeUpdate(query);
					/*
					 * stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS); ResultSet result
					 * =stmt.getGeneratedKeys(); if(result!=null&&result.next()) {
					 * key=result.getInt(1); }
					 */
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("singupsucess.jsp");
					requestDispatcher.forward(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}

		/*
		 * String sucessmsg = "Thank for createing account"; request.setAttribute("msg",
		 * sucessmsg);
		 */

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("singupsucess.jsp");
		requestDispatcher.forward(request, response);
	}

}
