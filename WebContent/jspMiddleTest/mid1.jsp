<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table {
	border-collapse: collapse;
}

td {
	padding: 5px;
	border: solid 1px gray;
}
</style>
<title>Insert title here</title>
</head>
<%	String s = request.getParameter("number");
	if (s == null)
	s = "0";
	int r=Integer.parseInt(s);
	%>
<body>
  <form> 		
  <input type="text" name="number" value="<%=s%>" />
   <button type="submit">단</button>
  </form>
	<table>
		<%
		out.println("<TABLE BODER=1>");
		for (int l = 1; l <= 9; l++) { 
			out.println("<TR>");
				out.println("<TD>" + s + " x " + l + " = " + l * r + "</TD>");	
			out.println("</TR>");
		}
	%>
	</table>
</body>
</html>