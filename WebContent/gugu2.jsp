<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<style>
table {
	border: 1px solid #444444;
	border-collapse: collapse;
}
td {
	border-right: solid 1px gray;
	padding: 5px;
}
</style>
<title>Insert title here</title>
</head>
<body>
</body>
<table>
	<%
	for (int l = 1; l <= 9; l++) { 
		out.println("<TR>");
		for (int i = 2; i <= 9; i++) 
			out.println("<TD>" + i + " x " + l + " = " + l * i + "</TD>");	
		out.println("</TR>");
}
	%>
</table>

</html>