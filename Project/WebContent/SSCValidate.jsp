
<%@page import="dao.cbsesscdao"%>
<jsp:useBean id="ssc" class="dto.TenthAcademic"></jsp:useBean>
<jsp:setProperty property="*" name="ssc"/>

<%
	String board=ssc.getBoard();
	//System.out.println(board);
// 	System.out.println(ssc.getMarksheetNo());
// 	System.out.println(ssc.getRollNumber());
	if(board.equals("cbse"))
	{
		cbsesscdao cbsedao= new cbsesscdao();
		boolean flag = cbsedao.validateSSCdetails(ssc);
		//System.out.println(flag);
		if(flag){
			response.sendRedirect("hsc.jsp");
		}else{
			response.sendRedirect("ssc.jsp");
		}
	}	
	else{
		response.sendRedirect("ssc.jsp");
	}
%>