/**
 * 
 */function Hi(){
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
