<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="eiga" class= "asd.eiga"/>
    <jsp:setProperty property="*" name="eiga"/>
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
<tr><jsp:getProperty name="eiga" property="title"/></tr><br>
</td>
<td>
<tr>가격</tr>
<tr><jsp:getProperty name="eiga" property="price"/></tr><br>
</td>
<td>
<tr>감독</tr>
<tr><jsp:getProperty name="eiga" property="director"/></tr><br>
</td>
<td>
<tr>배우</tr>
<tr><jsp:getProperty name="eiga" property="actor"/></tr><br>
</td>
<td>
<tr>시놉시스</tr>
<tr><jsp:getProperty name="eiga" property="sys"/></tr><br>
</td>
<td>
<tr>장르</tr>
<tr><jsp:getProperty name="eiga" property="genre"/></tr><br>
</td>



</table>
</form>


</body>
</html>