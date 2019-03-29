<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<jsp:usebean id="member" class= "asd.mbb"/>
<jsp:setProperty property="*" name="member"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action ="addmm.jsp">
<table>
<tr>
	<td>이름</td>
   	<td><jsp:getProperty name="member" property="name"/></td>
</tr>
<tr>
	<td>아이디</td>
   	<td><jsp:getProperty name="member" property="userid"/></td>
</tr>

<tr>
	<td>별명</td>
   	<td><jsp:getProperty name="member" property="nickname"/></td>
</tr>

<tr>
	<td>비밀번호</td>
   	<td><jsp:getProperty name="member" property="pwd"/></td>
</tr>
<tr>
	<td>이메일</td>
   	<td><jsp:getProperty name="member" property="email"/></td>
</tr>
<tr>
	<td>전화번호</td>
   	<td><jsp:getProperty name="member" property="phone"/></td>
</tr>

</table>
</form>



</body>
</html>