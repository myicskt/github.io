<%@ include file="header.jsp" %>

<% String attr= (String)session.getAttribute("username");
if(attr==null){
	System.out.println(" Trying to skip login ....");
	request.setAttribute("isSkip", "log is required !!");
	request.getRequestDispatcher("login.jsp").forward(request, response);
}else{
	System.out.println("login sucess. ");
}
%>

<h1> Welcome, user, Your login is   <% session.getAttribute("user"); %></h1>


<a href="logout.jsp">logout</a>


</div>
</body>
</html>