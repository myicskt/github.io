<%@ include file="header.jsp"%>

<div>
<h1> Class work</h1>

</div>

<%@ page import="java.util.Date" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
session = request.getSession();

Integer accessCount;

synchronized (session) {
	accessCount = (Integer) session.getAttribute("accessCount");
	if (accessCount == null) {
		accessCount = Integer.valueOf(1);

	} else {
		accessCount = accessCount + 1;

	}
	session.setAttribute("accessCount", accessCount);
	
	

}
%>
<%Integer  count =session.getAttribute(accessCount); %>
<p>Session count is <%=session.getAttribute(accessCount) %></p>








<%@ include file="footer.jsp" %>