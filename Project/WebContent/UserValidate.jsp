<%@page import="dao.UserDao"%>
<jsp:useBean id="user" class="dto.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<%
	UserDao udao = new UserDao();
	boolean flag = udao.validateUser(user);
	if(flag){
		response.sendRedirect("Uid.jsp?otp="+"0");
	}else{
		response.sendRedirect("Login.jsp");
	}
%>