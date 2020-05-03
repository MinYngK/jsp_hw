<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
div.container {
	width: 400px;
	margin: 20px auto;
}

form div {
	margin-bottom: 10px;
}

label {
	display: inline-block;
	width: 50px;
	text-align: right;
}

input {
	width: 200px;
	padding: 4px;
}

button {
	padding: 0.4em 2em;
	margin-top: 10px;
}
</style>
</head>
<body>
	<%
String s1 = request.getParameter("number1");
int number1 = (s1 == null) ? 0 : Integer.parseInt(s1);
int sum= 0;

String cmd = request.getParameter("cmd");
int result = 0;
if ("++".equals(cmd)) result = result + 1 ;
%>
	<div class="container">
		<form method="get">
			<h1>select 02</h1>

			<div>
				<label>number1:</label> <input type="text" name="number1"
					value=result />
			</div>
			<div>
				<button type="submit" onclick='<jsp:param value="" name=""/>'>++</button>
			</div>
		</form>
	</div>

</body>
</html>