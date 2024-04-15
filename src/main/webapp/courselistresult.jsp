<%@ page language="java"  errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*, java.util.*,form.Course,db.DBConnection"%>

<%@ page import="db.DBConnection"%>

<%@ include file="header.jsp"%>
<%@ include file="course_search.jsp"%>

<%
String searchkey = request.getParameter("search");
String query ;
if(searchkey==null){
	query = "select * from reg_couese";
}else{
	query = "select * from reg_couese where course_name='"+searchkey+"' ORDER BY course_name;";
}

List<Course> courseList = new ArrayList();
Connection con;
Statement stmt;
ResultSet result;
try {
	con = DBConnection.getDBConnection();
	System.out.println("DB connected sucessfully");
	stmt = con.createStatement();
	result = stmt.executeQuery(query);

	while (result.next()) {
		int courseId = result.getInt("course_id");
		String courseName = result.getString("course_name");
		String courseLevel = result.getString("course_lavel");
		String courseDes = result.getString("course_desc");
		courseList.add(new Course(courseId, courseName, courseLevel, courseDes));

	}

} catch (SQLException e) {
	System.out.println("DB connection is failed");
	e.printStackTrace();
}
%>

<table class="table table-striped">
	<p>course list</p>
	<thead>
		<tr>
			<th scope="col">id</th>
			<th scope="col">Course Name</th>
			<th scope="col">Lavel</th>
			<th scope="col">Discrip</th>
		</tr>
	</thead>
	<tbody>

		<%
		for (Course e : courseList) {
		%>

		<tr>
			<th scope="row"><%=e.getId()%></th>
			<td><%=e.getCourseName()%></td>
			<td><%=e.getCourseLevel()%></td>
			<td><%=e.getCourseDesc()%></td>

		</tr>
		<%
		
		}
		%>
	</tbody>
</table>



<%@ include file="footer.jsp"%>