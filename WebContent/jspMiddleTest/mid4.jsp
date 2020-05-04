<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
  form div { margin-bottom: 10px; }
  label { display: inline-block; width: 50px; text-align: right; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  table { width: 300px; border-collapse: collapse; margin-top: 50px; }
  td, th { border: 1px solid #aaa; padding: 5px; }  
</style>
<title>Insert title here</title>
</head>
<%
String 에러메시지 = null;
String s1 = request.getParameter("성별");
String s2 = request.getParameter("이름");
if (s2 == null || s2.length() == 0) 
    에러메시지 = "이름을 입력하세요.";
else if (s1 == null || s1.length() == 0) 
    에러메시지 = "성별을 입력하세요.";
%>
<body>
<form method="post">
			<h1>학생 등록</h1>
			<div>
				<label>이름</label> <input type="text" class="text100" name="이름" value="<%=s2 %>" />
			</div>
			  <div>
			  	<input type="radio" name=성별 value="boy" checked>남자
			  	 <input type="radio" name=성별 value="woman">여자

			</div>
			<div>
        <button type="submit">확인</button>
      </div>
    </form>
    <% if (에러메시지 != null) { %>
  <div class="error">
    회원등록 실패: <%= 에러메시지 %>
  </div>
<% } %>

    <table>
     
      <tbody>
        <tr>
          <td>이름</td>
          <td><%= s2 %></td>
        </tr>
        <tr>
          <td>성별</td>
          <td><%= s1 %></td>
        </tr>
      </tbody>
    </table>
</body>
</html>