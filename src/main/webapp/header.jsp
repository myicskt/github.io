


<%
String curenturl1 = request.getRequestURI();
String headerURL = "/RegisterLogin/header.jsp";
if (curenturl1.equals(headerURL)) {
	response.sendRedirect("index.jsp");
} else {

	System.out.println("current " + curenturl1);
	System.out.println("footerUrl " + headerURL);
%>




<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container-md">
		<!-- container -->

		<nav class="navbar navbar-expand-lg bg-m-lightgray"">

			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp">JAVA BANK</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 icon-link-hover">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp">Home</a></li>
						<%
						if (session.getAttribute("username") != null) {
						%>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="singup.jsp">Sign Up</a></li>

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="listuser.jsp">User List</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="courselistresult.jsp">Course List</a></li>


						<%
						}
						%>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="about.jsp">About</a></li>

						<li class="nav-item"><a class="nav-link" href="classwork.jsp">classwork</a></li>


						<li class="nav-item"><a class="nav-link" href="handled.jsp">error
								handled</a></li>


						<!--
						 <li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link disabled"
							aria-disabled="true">Disabled</a></li> -->
					</ul>
					<%
					if (session.getAttribute("username") == null) {
					%>
					<form class="d-flex" role="#" action="validate.jsp" method="post">
						<input class="form-control me-2" type="text" name="username"
							placeholder="User Name" aria-label="#"> <input
							class="form-control me-2" type="text" name="password"
							placeholder="Password" aria-label="Search">
						<!-- <button class="btn btn-outline-success" type="submit">login</button> -->
						<input class="btn btn-outline-success" type="submit" value="Login" />

					</form>
					<%
					} else {
					%>
					<form class="d-flex" role="search" action="logout.jsp"
						method="post">
						<button class="btn btn-outline-success" type="submit">logout</button>
					</form>
					<%
					}
					%>

				</div>
			</div>
		</nav>

		<%
		}
		%>