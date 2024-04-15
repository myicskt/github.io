

<%


String curenturl= request.getRequestURI();
String footerUrl="/RegisterLogin/footer.jsp";
if(curenturl.equals(footerUrl)){
	response.sendRedirect("index.jsp");
}else{

System.out.println("current " +curenturl);
System.out.println("footerUrl "+footerUrl);

	
%>

<hr>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<div class="navbar ">

	</footer>

	<p>@Copyright 2024-25</p>
	<footer>
</div>


<!-- container end -->
</div>

<!-- body end -->
</body>


<!-- html end -->
</html>

<%
	
}




%>



