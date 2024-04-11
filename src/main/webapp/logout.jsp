<%@ include file="header.jsp" %>


<h1>hello</h1>

<% session.invalidate(); %>

<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>