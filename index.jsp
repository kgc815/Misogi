<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트</title>
</head>
<body>
<form action="test1.jsp">
<table>
<tr>
<input type ="text" /><input type ="button" value ="미리보기" id="" onclick="button_click();"><br>
색상:<select id='color' >
<option value="red">빨강</option>
<option value="blue">파랑</option>
<option value="yellow">노랑</option>
<option value="green">초록</option>
<option value="puple">보라</option>
</select><br>
크기:<select id ='font'>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
</select><br>
  <input type='checkbox' name='fontO'  />취소선
  <input type='checkbox' name='fontO'  />크게
  <input type='checkbox' name='fontO' value='' />작게
  <input type='checkbox' name='fontO' value='' />두껍게
  <input type='checkbox' name='fontO' value='' />기울임
  <br>
	<input type='checkbox' name='fontO' value='' />위첨자
	<input type='checkbox' name='fontO' value='' />아래첨자
	<input type='checkbox' name='fontO' value='' />소문자로
	<input type='checkbox' name='fontO' value='' />대문자로<br><br><br><br>
		<span id="result"></span>
		
		
		<script language="text/javascript">
		function button_click(){
			document.write(ㅎㅇ)
		}
		
</script>
</tr>
</table>
</form>
</body>
</html>