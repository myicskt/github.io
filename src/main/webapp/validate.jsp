<%@ include file="header.jsp" %>

<%

String user = request.getParameter("username");
String tocken = request.getParameter("password");
String err="Athentication failed" ;

if(user.equals("admin")&& tocken.equals("admin")){
	session.setAttribute("user",user);
	response.sendRedirect("welcome.jsp");
}else{
	response.sendRedirect("index.jsp");
	session.setAttribute("err",err);
}




%>
</body>
</html>