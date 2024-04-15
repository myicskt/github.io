<%@ page language="java"  errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ include file="header.jsp" %>
<%@page import="java.time.*" 
import="java.time.format.DateTimeFormatter"%>
 <%
String userId= (String)session.getAttribute("username");
if(userId==null){
System.out.println(" Trying to skip login ....");
request.setAttribute("isSkip", "log is required !!");
response.sendRedirect("index.jsp");
}else{
System.out.println("login sucess.");
} 
%>

 <%! 
 String datetime= DateTimeFormatter.ofPattern("MM-dd-yy HH:mm:ss").format(LocalDateTime.now());
 %>
 
<p> Today :  <%=datetime%><p>
<p> Welcome, <%=session.getAttribute("username")%><p>





<br>

<a href="singup.jsp">sing up</a>
















<%@ include file="footer.jsp" %>