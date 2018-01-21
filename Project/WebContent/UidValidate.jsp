<%@page import="dao.MailDAO"%>
<%@page import="dto.Uid"%>
<%@page import="dao.UidDao"%>
<jsp:useBean id="uid" class="dto.Uid" scope="session"></jsp:useBean>
<jsp:setProperty property="uidNumber" name="uid"/>

<%
	UidDao uiddao=new UidDao();
	boolean flag = uiddao.validateUid(uid);
	if(flag){
		//response.sendRedirect("Otp.jsp");
		Uid uuid = uiddao.selectUid(uid);
		MailDAO mdao = new MailDAO();
		int i = mdao.sendOTP(uuid.getEmailId());
		response.sendRedirect("Uid.jsp?otp="+i);
	}else{
		response.sendRedirect("Uid.jsp?otp="+"2");
	}
%>