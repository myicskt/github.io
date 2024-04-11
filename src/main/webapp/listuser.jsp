<%@page 
import="java.sql.*, java.util.*"%>
<%@ include file="header.jsp"%>


<%!
String user ="root";
String key="root";
String URL="jdbc:/mysql://localhost:3306/feb_2024";
String query = "select * from login_users";
%>

<%
	try {
		System.out.println("Hello");
		//Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(URL, user, key);
		Statement stmt = con.createStatement();
		ResultSet result = stmt.executeQuery(query);

		while (result.next()) {
			String id = result.getString("id");
	%>
	<p>id is : <%=id%></p><br>
	<%
	}

	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}

	%>

<%@ include file="footer.jsp"%>