<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String s = request.getParameter("number");
if (s == null)
	s = "0";
int n = Integer.parseInt(s) + 1;
%>
<body>

	<form>
		<input type="text" name="number" value="<%=n%>" />
		<button type="submit">++</button>
	</form>

</body>
</html>