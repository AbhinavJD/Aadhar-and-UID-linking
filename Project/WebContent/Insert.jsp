<%@page import="dao.UserDao"%>
<jsp:useBean id="user" class="dto.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<%
	UserDao udao = new UserDao();
	int i = udao.addUser(user);
	if(i != 0){
		response.sendRedirect("Login.jsp");
	}else{
		response.sendRedirect("Error.jsp");
	}
%>