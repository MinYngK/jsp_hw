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
		<input type="radio" name=num value="one" checked>one <input
			type="radio" name=num value="two"
			<%="value".equals(s1)?"checked":"" %>>two
		<input type="radio" name=num value="three"
			<%="value".equals(s1)?"checked":"" %>>three
		  <div>
          <label>operator:</label>
          <select name="num">
              <option value=s1<%="value".equals(s1)?"checked":"" %>>one</option>
              <option value=s1<%="value".equals(s1)?"checked":"" %>>two</option>
              <option value=s1<%="value".equals(s1)?"checked":"" %>>three</option>
          </select>
      </div>      


		<div>
			<button type="submit">Ok</button>
		</div>
	</form>
</body>
</html>