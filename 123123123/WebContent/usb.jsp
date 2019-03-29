<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="asd.mbb"></jsp:useBean>
이름<%=member.getName() %><br>
아이디<%=member.getUserid() %><br>
정보변경~
<%member.setName("김기찬"); 
member.setUserid("kgc815");
%>
이름<%=member.getName() %><br>
아이디<%=member.getUserid() %><br>
</body>
</html>