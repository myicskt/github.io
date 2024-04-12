<%@ include file="header.jsp"%>


<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%--  
<%!public boolean isValidUser(String uid, String pwd) {
		String uId = uid.toString();
		String uPwd = pwd.toString();

		final String URL = "jdbc:mysql://localhost:3306/register_login";
		final String USER = "root";
		final String KEY = "root";
		Statement stmt;
		ResultSet result;

		String query = "select * from login_user;";
		java.sql.Connection con;
		try {
			con = DriverManager.getConnection(URL, USER, KEY);
			stmt = ((java.sql.Connection) con).createStatement();
			result = stmt.executeQuery(query);
			while (result.next()) {
				String tempUser = result.getString("username").toString();
				String tempPwd = result.getString("user_pws").toString();

				if (uId.equals(tempUser) && uPwd.equals(tempPwd)) {
					return true;
					
					
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}%>
 --%>


<%
String userEnteredName = request.getParameter("username");
String userEnteredPassword = request.getParameter("password");

if(userEnteredName==null){
	session.setAttribute("err", "!! Athentication failed : user name is null");
	response.sendRedirect("index.jsp");
}else if(userEnteredPassword==null){
	session.setAttribute("err", "!! Athentication failed user password is null");
	response.sendRedirect("index.jsp");
}else if(userEnteredName==null && userEnteredPassword==null ){
	session.setAttribute("err", "!! Athentication failed user name and password are  null");
	response.sendRedirect("index.jsp");
	
}


final String URL = "jdbc:mysql://localhost:3306/register_login";
final String USER = "root";
final String KEY = "root";
Statement stmt;
ResultSet result;

String query = "select * from login_user;";
java.sql.Connection con;
try {
	con = DriverManager.getConnection(URL, USER, KEY);
	stmt = ((java.sql.Connection) con).createStatement();
	result = stmt.executeQuery(query);
	while (result.next()) {
		String tempUser = result.getString("username").toString();
		String tempPwd = result.getString("user_pws").toString();

		if (userEnteredName.equals(tempUser) && userEnteredPassword.equals(tempPwd)) {
			session.setAttribute("username", userEnteredName);
			break;
		}
		
	}
	if(session.getAttribute("username")==null){
		session.setAttribute("err", "!! Athentication failed");
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("welcome.jsp");
	}

} catch (SQLException e) {
	e.printStackTrace();
}














/* 
if(userEnteredName==null ||userEnteredPassword==null ) {
	session.setAttribute("err", "You entered the null value please enter valid id and password");
	response.sendRedirect("index.jsp");
	
} 

else if (userEnteredName==null && userEnteredPassword==null ) {
	session.setAttribute("err", "You entered the null value please enter valid id and password");
	response.sendRedirect("index.jsp");
	
} else {

	boolean isValidUser = isValidUser(userEnteredName, userEnteredPassword);

	if (isValidUser==true) {
		session.setAttribute("username", userEnteredName);
		response.sendRedirect("welcome.jsp");
	} else {

		session.setAttribute("err", "!! Athentication failed");
		response.sendRedirect("index.jsp");
	}
} */
%>


<%@ include file="footer.jsp"%>
