<%
	session.removeAttribute("user");
	session.invalidate();
	response.sendRedirect("Login.jsp");
%>