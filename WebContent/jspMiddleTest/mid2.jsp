<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
div {
	margin-bottom: 10px;
}

input, select {
	padding: 5px;
}

button {
	padding: 0.4em 2em;
}
</style>
<title>Insert title here</title>
</head>
<%
String s1 = request.getParameter("num");
if (s1==null)
	s1="one";
%>
<body>

	<form>
				<input type="radio" name=num value="one"  <%="name".equals(pageContext.getAttribute("num"))?"checked":"" %>>one
				<input type="radio" name=num value="two" <%="name".equals(pageContext.getAttribute("num"))?"checked":"" %>>two
				<input type="radio" name=num value="three" <%="name".equals(pageContext.getAttribute("num"))?"checked":"" %>>three		
		<div>
			<input type="text" value="<%= s1 %>" />
		</div>

		<div>
			<button type="submit">Ok</button>
		</div>
	</form>

</body>
</html>