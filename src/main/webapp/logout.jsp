<%@ page language="java" errorPage="error.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ include file="header.jsp"%>


<h1>hello</h1>

<%
session.invalidate();

response.sendRedirect("index.jsp");
%>

<%-- <jsp:forward page="index.jsp"></jsp:forward> --%>













<%@ include file="footer.jsp"%>