<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�������Ͻ�???</title>
<script type="text/javascript">
function check(ic,mono,keikou){//�׽�Ʈ�� ���������� �˻���� ��ȯ
	if(ic.test(mono.value)){
		return true;
	}
	alert(keikou);
	mono.value="";
	mono.focus();//Ŀ���� Ÿ�������ش�
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
	
	if(!check(ic,id,"���̵� �ٽ� �Է����ּ���")){
		return false;
	}
	if(!check(ic,pw,"�����  �ٽ� �Է����ּ���")){
		return false;
	}
	if(!check(mc,email,"�̸��� �ٽ� �Է����ּ���")){
		return false;
	}
	if(checkpw.value!=pw.value){
		alert("����̶� ���Ȯ���� �޶��");		
		return false;	
	}
	if(name==""){
		alert("�̸����� �����Դϴ�.");
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
        alert("�ùٸ� �ֹι�ȣ�� �ƴմϴ�");
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
            alert("��� �����ϼ���~");
            return false;
        }
    if(join.self.value=="") {
        alert("�ڱ�Ұ��� �����ּ���");
        join.self.focus();
        return false;
    }
	
		
alert("�ڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡ�ȸ������ �Ϸ�ڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡ�");
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
           <td colspan="2" style="background:purple;" ><font color=white size="5em"><p class="np">ȸ����������</p></font></td>
       </tr>
       <tr>
           <td><b>���̵�:</b></td>
           <td><input type="text" style="width:170px"id="id" name="id"  /> 4~12���� ���� ��ҹ��ڿ� ���ڷθ� �Է�</td>
       </tr>
       <tr>
           <td><b>���:</b></td>
           <td><input type="password"  style="width:170px"id="pw" maxlength="12"/> 4~12���� ���� ��ҹ��ڿ� ���ڷθ� �Է�</td>
       </tr>
       <tr>
           <td><b>���Ȯ��:</b></td>
           <td><input type="password" style="width:170px" id="checkpw" maxlength="12"/></td>
       </tr>
       <tr>
           <td><b>�����ּ�:</b></td>
           <td><input type="text" style="width:170px" id="email" /> ex)kgc715@naver.com</td>
       </tr>
       <tr>
           <td><b>�̸�:</b></td>
           <td><input type="text" style="width:170px" name="name" maxlength="12" /></td>
       </tr>
       <tr  height="10" align="center">
           <td colspan="2" style="background:purple;"><font color=white size="5em"><p class="np">��������</p></font></td>
       </tr>
       <tr>
           <td><b>�ֹι�ȣ:</td>
           <td><input type="text" name="jumin1" id="jumin1" size="10" maxlength="6">-
               <input type="text" name="jumin2" id="jumin2" size="10" maxlength="7">������(-)���� �Է����ּ���	
           </td>
       </tr>
       <tr>
           <td><b>����:</b></td>
           <td>
               <input type="text" style="width:80px" id="years" readonly/>��
               <input type="text" style="width:80px" id="month" readonly/>��
               <input type="text" style="width:80px" id="day" readonly/>��
           </td>
       </tr>
       <tr>
           <td><b>���ɺо�:</b></td>
           <td><input type="checkbox" name="shumi" value="��ǻ��">��ǻ��</input>
               <input type="checkbox" name="shumi" value="���ͳ�">���ͳ�</input>
               <input type="checkbox" name="shumi" value="����">����</input>
               <input type="checkbox" name="shumi" value="��ȭ����">��ȭ����</input>
               <input type="checkbox" name="shumi" value="���ǰ���">���ǰ���</input>
           </td>
       </tr>
       <tr>
           <td>
               <b>�ڱ�Ұ�:</b>
           </td>
           <td><textarea name="self" cols="70" rows="7"></textarea></td>
       </tr>
   </table>
   <center>
       <br/>
       <input type="submit" value="ȸ������"  "/>
       <input type="reset" value="�ٽ��Է�"  />
   </center>
</form>
</body>
</html>