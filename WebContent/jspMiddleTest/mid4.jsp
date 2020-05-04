<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<form method="post">
			<h1>학생 등록</h1>
			<div>
				<label>이름</label> <input type="text" class="text100" name="이름"
					 />
			</div>
			  <div>
			  	<input type="radio" name=성별 value="boy" checked>남자
			  	 <input type="radio" name=성별 value="woman">여자

			</div>
			<div>
        <button type="submit">확인</button>
      </div>
    </form>

    <table>
      <thead>
        <tr>
          <th>Parameter Name</th>
          <th>Parameter Value</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>text1</td>
          <td><%= request.getParameter("이름") %></td>
        </tr>
        <tr>
          <td>text2</td>
          <td><%= request.getParameter("text2") %></td>
        </tr>
        <tr>
          <td>time</td>
          <td><%= request.getParameter("time") %></td>
        </tr>
      </tbody>
    </table>
</body>
</html>