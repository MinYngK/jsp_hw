<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
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
<body>

</body>
<table>
	<%
		out.println("<TABLE BODER=1>");
		for (int l = 1; l <= 9; l++) { 
			out.println("<TR>");
			for (int i = 2; i <= 9; i++) 
				out.println("<TD>" + i + " x " + l + " = " + l * i + "</TD>");	
			out.println("</TR>");
		}
	%>
</table>

</html>