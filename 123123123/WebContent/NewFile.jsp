<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입하실???</title>
<script type="text/javascript">
function check(ic,mono,keikou){//테스트는 참거짓으로 검색결과 반환
	if(ic.test(mono.value)){
		return true;
	}
	alert(keikou);
	mono.value="";
	mono.focus();//커서를 타겟팅해준당
}
function checkdata(){
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	var email = document.getElementById("email");
	var name = document.getElementById("name");
	var checkpw = document.getElementById("checkpw");
	var jumin1 = document.getElementById("jumin1");
    var jumin2 = document.getElementById("jumin2");
	
    var arrJ1 = new Array();
    var arrJ2 = new Array();
    
    var ic = /^[a-zA-Z0-9]{4,12}$/
	var mc = /^[a-zA-Z0-9]*@[a-zA-Z0-9]*.[a-zA-Z]{2,3}$/g;
	
	if(!check(ic,id,"아이디를 다시 입력해주세요")){
		return false;
	}
	if(!check(ic,pw,"비번을  다시 입력해주세요")){
		return false;
	}
	if(!check(mc,email,"이메일 다시 입력해주세요")){
		return false;
	}
	if(checkpw.value!=pw.value){
		alert("비번이랑 비번확인이 달라요");		
		return false;	
	}
	if(name==""){
		alert("이름란이 공백입니다.");
		return false;
	}
	for (var i=0; i<jumin1.value.length; i++) {
        arrJ1[i] = jumin1.value.charAt(i);
    }
	for (var i=0; i<jumin2.value.length; i++) {
        arrJ2[i] = jumin2.value.charAt(i);
    }
	var tempSum=0;
	for (var i=0; i<jumin1.value.length; i++) {
        tempSum += arrJ1[i] * (2+i);
    } 
    for (var i=0; i<jumin2.value.length-1; i++) {
        if(i>=2) {
            tempSum += arrJ2[i] * i;
        }
        else {
            tempSum += arrJ2[i] * (8+i);
        }
    }
    if((11-(tempSum%11))%10!=arrJ2[6]) {
        alert("올바른 주민번호가 아닙니다");
        jumin1.value = "";
        jumin2.value = "";
        jumin1.focus();
        return false;
    }else{
    	if(arrJ2[0]==1 || arrJ2[0]==2) {
            var y = parseInt(jumin1.value.substring(0,2));
            var m = parseInt(jumin1.value.substring(2,4));
            var d = parseInt(jumin1.value.substring(4,6));
            join.years.value = 1900 + y;
            join.month.value = m;
            join.day.value = d;
        }
        else if(arrJ2[0]==3 || arrJ2[0]==4) {
            var y = parseInt(jumin1.value.substring(0,2));
            var m = parseInt(jumin1.value.substring(2,4));
            var d = parseInt(jumin1.value.substring(4,6));
            join.years.value == 2000 + y;
            join.month.value = m;
            join.day.value = d;
        }
    }    
    if(join.shumi[0].checked==false &&
            join.shumi[1].checked==false &&
            join.shumi[2].checked==false &&
            join.shumi[3].checked==false &&
            join.shumi[4].checked==false) {
            alert("취미 선택하세요~");
            return false;
        }
    if(join.self.value=="") {
        alert("자기소개를 적어주세요");
        join.self.focus();
        return false;
    }
	
		
alert("★★★★★★★★★★★★★★★★★★★회원가입 완료★★★★★★★★★★★★★★★★★★★★★★★★");
}



</script>
<link href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css" rel="stylesheet">

<style>
.np{font-family: 'Nanum Pen Script', cursive;}
</style>
</head>
<body>

<form name="join" onsubmit="return checkdata();" action="" method="post" enctype="text/plain">
   <table width="620" height="400" border="0" align="center" cellspacing="1">
       <tr height="10" align="center">
           <td colspan="2" style="background:purple;" ><font color=white size="5em"><p class="np">회원가입정보</p></font></td>
       </tr>
       <tr>
           <td><b>아이디:</b></td>
           <td><input type="text" style="width:170px"id="id" name="id"  /> 4~12자의 영문 대소문자와 숫자로만 입력</td>
       </tr>
       <tr>
           <td><b>비번:</b></td>
           <td><input type="password"  style="width:170px"id="pw" maxlength="12"/> 4~12자의 영문 대소문자와 숫자로만 입력</td>
       </tr>
       <tr>
           <td><b>비번확인:</b></td>
           <td><input type="password" style="width:170px" id="checkpw" maxlength="12"/></td>
       </tr>
       <tr>
           <td><b>메일주소:</b></td>
           <td><input type="text" style="width:170px" id="email" /> ex)kgc715@naver.com</td>
       </tr>
       <tr>
           <td><b>이름:</b></td>
           <td><input type="text" style="width:170px" name="name" maxlength="12" /></td>
       </tr>
       <tr  height="10" align="center">
           <td colspan="2" style="background:purple;"><font color=white size="5em"><p class="np">개인정보</p></font></td>
       </tr>
       <tr>
           <td><b>주민번호:</td>
           <td><input type="text" name="jumin1" id="jumin1" size="10" maxlength="6">-
               <input type="text" name="jumin2" id="jumin2" size="10" maxlength="7">하이픈(-)없이 입력해주세요	
           </td>
       </tr>
       <tr>
           <td><b>생일:</b></td>
           <td>
               <input type="text" style="width:80px" id="years" readonly/>년
               <input type="text" style="width:80px" id="month" readonly/>월
               <input type="text" style="width:80px" id="day" readonly/>일
           </td>
       </tr>
       <tr>
           <td><b>관심분야:</b></td>
           <td><input type="checkbox" name="shumi" value="컴퓨터">컴퓨터</input>
               <input type="checkbox" name="shumi" value="인터넷">인터넷</input>
               <input type="checkbox" name="shumi" value="여행">여행</input>
               <input type="checkbox" name="shumi" value="영화감상">영화감상</input>
               <input type="checkbox" name="shumi" value="음악감상">음악감상</input>
           </td>
       </tr>
       <tr>
           <td>
               <b>자기소개:</b>
           </td>
           <td><textarea name="self" cols="70" rows="7"></textarea></td>
       </tr>
   </table>
   <center>
       <br/>
       <input type="submit" value="회원가입"  "/>
       <input type="reset" value="다시입력"  />
   </center>
</form>
</body>
</html>