<%@ include file="header.jsp"%>



<form action="validate.jsp" method="post">

	<table border="1">
		<h1>Welcome to the Mr application</h1>
		<%
		String err = (String) session.getAttribute("err");
		String skipp = (String) session.getAttribute("isSkip");

		if (skipp != null) {
			System.out.println("skipp error : " + skipp);
			out.println("<h4> " + skipp + "</h4>");
		}
		if (err != null) {
			System.out.println("error : " + err);
			out.println("<h4> " + err + "</h4>");
		}
		%>
		<tr>
			<td>Login:</td>
			<td><input type="text" name="username"></td>
			<td>password:</td>
			<td><input type="text" name="password"></td>
			<td><button type="submit">submit</button></td>
			<td><button type="reset">reset</button>
		</tr>
	</table>

</form>

<hr>


<%
session.setAttribute("err", null);
%>

<a href="singup.jsp">Create user account</a>
<a href="/jsp/app/try.jsp">try page for directory</a>

<%@ include file="footer.jsp"%>