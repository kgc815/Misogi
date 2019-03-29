<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>영화 정보 등록<h3>
<form method="post" action="touroku.jsp">
<table>
<td>
<tr>제목</tr>
<tr><input type="text" name = "title" size="20"></tr><br>
</td>
<td>
<tr>가격</tr>
<tr><input type="text" name = "price" size="20"></tr><br>
</td>
<td>
<tr>감독</tr>
<tr><input type="text" name = "director" size="20"></tr><br>
</td>
<td>
<tr>배우</tr>
<tr><input type="text" name = "actor" size="20"></tr><br>
</td>
<td>
<tr>시놉시스</tr>
<tr><input type="text" name = "sys" size="50,20"></tr><br>
</td>
<td>
<tr>장르</tr>
<tr><input type="text" name = "genre" size="20"></tr><br>
</td>
<td>
<tr><input type ="submit" value="제출"></tr>
<tr><input type = "reset" value ="리셋"></tr>
</td>


</table>
</form>

</body>
</html>