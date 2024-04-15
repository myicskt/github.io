<%@ page language="java"  errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<%
String userId = (String) session.getAttribute("username");
if (userId == null) {
	System.out.println(" Trying to skip login ....");
	request.setAttribute("isSkip", "log is required !!");
	response.sendRedirect("index.jsp");
} else {
	System.out.println("login sucess.");
}
%>
<h1>Sucessfully singup</h1>
<p>${msg }</p>

<a href="index.jsp">home</a>


<%@ include file="footer.jsp" %>

















<%@ include file="footer.jsp"%>