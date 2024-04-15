



<div class="container">
	<!-- Content here -->
	<br>
	<p>
		<%
		String userId = (String) session.getAttribute("username");
		if (userId == null) {
			System.out.println(" Trying to skip login ....");
			request.setAttribute("isSkip", "log is required !!");
			response.sendRedirect("index.jsp");
		} 
		%>
		<%
		String msg = (String) session.getAttribute("userStatus");
		if (msg != null) {
			out.println("<h4> " + msg + "</h4>");
		}
		%>
	</p>

	<form action="courselistresult.jsp" method="get">


		<div class="mb-3">
			<label name search>Enter course name </label> <input
				class="form-label" type="search" name="search">
			<button type="search">search</button>

		</div>
	</form>








</div>
<hr>
