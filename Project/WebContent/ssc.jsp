<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>Enter Academics Details</h1></center>
<form name="sscform" action="SSCValidate.jsp" method="post" >
	<table align="center">
		<tr>
			<th colspan="2">Fill Details</th>
		</tr>
		<tr>
			<td>Board: </td>
			<td>
			<select name="board">
				 <option value="">SELECT</option>
 				 <option value="cbse">CBSE</option>
  				 <option value="msb">Maharastra State Board</option>
  				 <option value="icse">ICSE</option>
  				 <option value="mpb">Madhya Pradesh state board</option>
			</select>
			</td>
		</tr>
		<tr>
		<td>Roll Number</td><td><input type="text" name="rollNumber"></td>
		</tr>
		<tr>
		<td>Marksheet Serial No.</td><td><input type="text" name="marksheetNo"></td>
		</tr>
		
		<tr>
		<td><input type="submit" value="submit"></td><td><input type="reset" value="reset"></td>
		</tr>
	</table>

</form>
</body>
</html>