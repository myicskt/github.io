<%@ page language="java" errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>


<%
// int a =3/0;  try error page handlaing
String err = (String) session.getAttribute("err");
String skipp = (String) session.getAttribute("isSkip");

if (skipp != null) {
	System.out.println("skipp error : " + skipp);
	out.println("<h4> " + skipp + "</h4>");
	
}
if (err != null) {
	System.out.println("error : " + err);
	
	%>	
	
	<div class="alert alert-danger" role="alert">
	 <h4> 
	 <%=err %>
	 </h4>
	</div>
<%
}
%>


<img src="jsp\images\home_1.jpg" class="img-fluid" alt="...">


<%
session.setAttribute("err", null);
%>

<a href="singup.jsp">Create user account</a>
<a href="/jsp/app/try.jsp">try page for directory</a>

<%@ include file="footer.jsp"%>