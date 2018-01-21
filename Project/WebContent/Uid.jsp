<%@page import="dto.Uid"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.UidDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="w3.css">
<jsp:useBean id="user" class="dto.User" scope="session"></jsp:useBean>
<jsp:useBean id="uid" class="dto.Uid" scope="session"></jsp:useBean>
<%
	if(user != null && user.getUserName()!=null){
%>   
 
    <%@ include file="nostorage.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	
</style>
<script type="text/javascript">
	function uidvalidation()
	{		
			flag=true;

			var uidnumber=document.uidform.uidnumber.value;
			var uidnumberregex=/^[0-9]{12}$/;
			if(!uidnumberregex.test(uidnumber))
			{
				alert("Enter Valid UID Number");
				flag=false;
			}
			return flag;
		
	}
	function validateOTP(a) {
			var val = document.otpvalidation.getElementById("otp1").value;
			alert("value:"+a);
		   if(a==val){
					document.getElementById("divtable").style.display="block";
			   }
		   else{
			   document.getElementById("after").style.display = "none";
			   }
		 }
	//var otpsent=0;
</script>
</head>
<body>
<h1 align="center" class="w3-bar w3-black w3-display-top">EKYC</h1>
<form name="uidform" action="UidValidate.jsp" onsubmit="return uidvalidation()" class="w3-container w3-display-center">
	
	
	<table align="center">
	
	<tr>
	<td>Enter UID No. :</td>
	<td><input type="text" name="uidNumber"></td>
	<td><input type="submit" value="Submit"></td>
	
	</tr>
	
	</table>
	</form>
	<% String a;
	a = request.getParameter("otp"); 
		if(a != null){		
	%>
	<form name="otpvalidation" action="Academics.jsp">
		<table align="center">
			<tr>
				<td>Enter OTP :</td>
				<td><input id="otp1" type="text" name="otp"></td>
				<td><input type="button" value="Submit" onclick="validateOTP(<%=a%>)"></td>
			</tr>
		</table>
		<%}else{
			
		} %>
		
		<%
				UidDao udao = new UidDao();
				Uid u = udao.selectUid(uid);
				if(1==1){
			%>
		
		<!--  <div id="hidden_div" style="display: none;">-->
		<h3 align="center">Aadhar details</h3>
		 <div id="divtable" style="display: none;">
		<table id="after" >
			<thead>
				<tr>
					<td>Uid_No</td>
					<td>Name</td>
					<td>DOB</td>
					<td>Gender</td>
					<td>Phone</td>
					<td>Email_Id</td>
					<td>Address</td>
				</tr>
			</thead>
			
			<tr>
				<td><%=u.getUidNumber() %></td>
				<td><%=u.getName() %></td>
				<td><%=u.getDob() %></td>
				<td><%=u.getGender() %></td>
				<td><%=u.getPhone() %></td>
				<td><%=u.getEmailId() %></td>
				<td><%=u.getAddress()%></td>
			</tr>
			<tr>
				<td colspan="7" align="center"><input type="submit" value="Next"/></td>
			</tr>
		</table>
		  </div>
		<%} %>
	<!--  </div>-->	
	</form>
	
	
</body>
</html>

<%}
	else{
		response.sendRedirect("Logout.jsp");
	}
%>