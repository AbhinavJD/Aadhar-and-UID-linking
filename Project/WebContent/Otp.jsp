
<%!
	String otp = "1";
%>
<%
	//request.setAttribute("otpsent",otp);

	response.sendRedirect("Uid.jsp?otp="+otp);
%>