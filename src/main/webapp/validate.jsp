<%@ page language="java"  errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>


<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="db.DBConnection"%>

<%
String userEnteredName = request.getParameter("username");
String userEnteredPassword = request.getParameter("password");

if ((userEnteredName!= null ||userEnteredName.isEmpty()==false)
		&& (userEnteredName!= null ||userEnteredName.isEmpty()==false)) {

	boolean isValidUser = DBConnection.isValidUserAndPassword(userEnteredName, userEnteredPassword);
	
	if (isValidUser) {
		session.setAttribute("username", userEnteredName);
		response.sendRedirect("welcome.jsp");

	} else {
		session.setAttribute("err", "!! Athentication failed user/password invalid");
		response.sendRedirect("index.jsp");
	}
} else {
	session.setAttribute("err", "!! Athentication failed user/password is  null");
	response.sendRedirect("index.jsp");
}
%>


<%@ include file="footer.jsp"%>
