var usernameReg = /^[a-zA-Z0-9]{4,10}$/;
var passwordReg =  /^[a-zA-Z0-9]{4,10}$/;

function validateForm(){
	var flag = true;
	
	var username = document.getElementById("form-username").value;
	if(!usernameReg.test(username)){
		document.getElementById("tishi1").innerHTML="<font color='red'>用户名由英文字母和数字组成的4-10位字符</font>";
		flag = false;
	}
	
	var pw1 = document.getElementById("form-password1").value;
	if(!passwordReg.test(pw1)){
		document.getElementById("tishi2").innerHTML="<font color='red'>密码由英文字母和数字组成的4-10位字符</font>";
		flag = false;
	}
	
	var pw2 = document.getElementById("form-password2").value;
	if(pw1 == pw2){
		document.getElementById("tishi").innerHTML="<font color='green'>两次密码一致</font>";
		
	}else{
		document.getElementById("tishi").innerHTML="<font color='red'>两次密码不一致，提交失败</font>";
		flag = false;
	}
	
	return flag;
}

function checkUsername(node){
	var username = node.value;
	if(!usernameReg.test(username)){
		document.getElementById("tishi1").innerHTML="<font color='red'>用户名由英文字母和数字组成的4-10位字符</font>";
	}else{
		document.getElementById("tishi1").innerHTML="<font color='green'>用户名输入正确</font>";
	}
}

function checkPassword(node){
	var password = node.value;
	if(!passwordReg.test(password)){
		document.getElementById("tishi2").innerHTML="<font color='red'>密码由英文字母和数字组成的4-10位字符</font>";
	}else{
		document.getElementById("tishi2").innerHTML="<font color='green'>密码格式正确</font>";
	}	
}

function checkRePassword(node){
	var pw2 = node.value;
	var pw1 = document.getElementById("form-password1").value;
	if(pw1==pw2){
		document.getElementById("tishi").innerHTML="<font color='green'>两次密码一致</font>";
	}else{
		document.getElementById("tishi").innerHTML="<font color='red'>两次密码不一致</font>";
	}
}







