<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
java.util.Enumeration<String> headers = request.getHeaderNames();
while(headers.hasMoreElements()){
	String headername =headers.nextElement();

	String hadervalue =request.getHeader(headername);
	
	%>
	<p><%=headername %></p>
	<p><%=hadervalue %></p>
}
 %>







</body>
</html>