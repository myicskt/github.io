<%@ include file="header.jsp" %>


<h1>hello</h1>

<% //session.invalidate();
session.setAttribute("username", null);
response.sendRedirect("index.jsp");
%>

<%-- <jsp:forward page="index.jsp"></jsp:forward> --%>













<%@ include file="footer.jsp" %>