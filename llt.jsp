<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="javascript">
function Hi(){
	var textBox = document.getElementById("mynamae");
	if(textBox!= null){alert(textBox.value+"님 ㅎㅇㅎㅇㅎ" )}
}	
function bye(){
	var arrRadio = document.getElementsByName("subject");
	for(var i=0;arrRadio.length;i++){
		if(arrRadio[i].checked){
			alert(arrRadio[i].value+"과목을 좋아하시는군요");
			break;
		}
	}
}	
function bye2(){
	var arrRadio = document.getElementsByTagName("input");
	for(var i=0;arrRadio.length;i++){
		if(arrRadio[i].type=="radio" && arrRadio[i].checked){
			alert(arrRadio[i].value+"과목을 좋아하시는군요");
			break;
		}
	}
}	



</script>
</head>
<body>
<input type ="text" id="mynamae">
<input type ="button" value="띄우기" onclick="Hi();">
<h2>제일 좋아하는 과목은??</h2>
<input type ="radio" name= "subject" value="HTML">HTML<br>
<input type ="radio" name= "subject" value="java">java<br>
<input type ="radio" name= "subject" value="hehe">hehe<br>
<input type ="button" value="답안제출" onclick="bye()">
<input type ="button" value="답안제출태그네임" onclick="bye2()">
</body>
</html>