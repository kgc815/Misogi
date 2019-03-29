<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script language="javascript">
		document.write("gd");
		var hensu=10;
		var hairetu = new Array();
		//hairetu1.push(1);
//		hairetu2[0]=1;
		
		var lastname ="rlcks";
		try{
			document.write("내이름은"+lastname);
		}catch(ex){
			document.write(ex.message);
		}
		
		
		
		function kansumei(){//매개변수 리턴타입명시x
			document.write("나는함수야");
		}
		
		
		function su(n1,n2){
			document.write(n1+n2);
			return n1+n2;
		}
		var re = su(1,2);
		document.write(re);
	
		//var user = prompt("당신의 이름은");
	//	alert(user);
		var timer = setTimeout(tt,5000);
		
		
		var nen = confirm("18년도 잘했니");
		if(nen){
			alert("잘햇으");
		}else {
			alert("왜그랬어");
			}
		
		
		
		
		
		
	</script>

</head>
<body>

</body>
</html>