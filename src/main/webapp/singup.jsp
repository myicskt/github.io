<%@ include file="header.jsp"%>
<%-- 
<% String attr= (String)session.getAttribute("username");
if(attr==null){
	System.out.println(" Trying to skip login ....");
	request.setAttribute("isSkip", "log is required !!");
	request.getRequestDispatcher("login.jsp").forward(request, response);
}else{
	System.out.println("login sucess. ");
}


%>

 --%>
<form action="singup" method="post">
	<div class="mb-3">
		<label name="firstname" class="form-label">First name : </label> <input
			class="form-label" type="text" name="firstname"> <br> <label
			name="lastname" class="form-label">Last name : </label> <input
			class="form-label" type="text" name="lastname"> <br> <label
			name="username" class="form-label">User-name : </label> <input
			class="form-label" type="text" name="username"> <br> <label
			name="password" class="form-label">password : </label> <input
			class="form-label" type="text" name="password"> <br> <label
			name="email" class="form-label">email : </label> <input type="text"
			name="email"> <br> <label name="gender"
			class="form-label">Gender</label> <input type="radio" name="gender"
			value="male" class="form-label"> Male
		</button>
		<input type="radio" name="gender" value="female" class="form-label">
		Female
		</button>
		<br>



		<button type="submit">submit</button>
		<button type="reset">reset</button>
	</div>
</form>
</div>
</body>
</html>