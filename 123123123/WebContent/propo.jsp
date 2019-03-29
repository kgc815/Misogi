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
빈객체생성후 뭐시기<br>
이름<jsp:getProperty property="name" name="member"/><br>
아이디<jsp:getProperty property="userid" name="member"/>


정보변환~<br>
<jsp:setProperty property="name" value="김기차안" name="member"/>
<jsp:setProperty property="userid" value="kgc815" name="member"/>
이름<jsp:getProperty property="name" name="member"/><br>
아이디<jsp:getProperty property="userid" name="member"/>


</body>
</html>