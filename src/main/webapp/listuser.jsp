<%@page 
import="java.sql.*, java.util.*,form.User"%>
<%@ include file="header.jsp"%>


<%!
String user ="root";
String key="root";
String URL="jdbc:/mysql://localhost:3306/feb_2024";
String query = "select * from login_users";
%>

<%
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
	for(User e:list) {
		%>
		<p><%=e %></p>
		<%
	}
	
	%>

<%@ include file="footer.jsp" %>