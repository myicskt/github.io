<%@ page language="java"  errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="header.jsp"%>

<% String attr= (String)session.getAttribute("username");

if(attr==null){
	System.out.println(" Trying to skip login ....");
	request.setAttribute("isSkip", "log is required !!");
	response.sendRedirect("index.jsp");
}else{
	System.out.println("login sucess. ");
}


%>

 
 <div class="container">
  <!-- Content here -->
<br>
<form action="singup" method="post">

<p><%
String msg=(String) session.getAttribute("userStatus");
if (msg != null) {
	out.println("<h4> " + msg + "</h4>");
} %></p>
	<div class="mb-3">
		<label name="firstname" class="form-label">First name : </label> <input
			class="form-label" type="text" name="firstname"> <br> <label
			name="lastname" class="form-label">Last name : </label> <input
			class="form-label" type="text" name="lastname"> <br> <label
			name="username" class="form-label">User-name : </label> <input
			class="form-label" type="text" name="username"> <br> <label
			name="password" class="form-label">password : </label> <input
			class="form-label" type="text" name="password"> <br> 
			<label name="email" class="form-label">email : </label> <input type="text" name="email"> <br>
			<label name="phone" class="form-label">phone : </label> <input type="text" name="phone"> <br> 
		<br>



		<button type="submit">submit</button>
		<button type="reset">reset</button>
	</div>
</form>

</div>

<%@ include file="footer.jsp" %>