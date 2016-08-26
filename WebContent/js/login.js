window.onload = function(){
	btnLogin.onclick = function(){
		uid = document.getElementById("id");
		upw = document.getElementById("pw");
		uemail = document.getElementById("email");
		uphone = document.getElementById("phone");

		if(uid.value == ""){
			alert("아이디를 입력하세요");
			uid.focus();
			return false;
		}else if(upw.value ==""){
			alert("비밀번호를 입력하세요");
			upw.focus();
			return false;
		}else if(uemail.value ==""){
			alert("이메일을 입력하세요");
			uemail.focus();
			return false;
		}else if(uphone.value ==""){
			alert("연락처를 입력하세요");
			uphone.focus();
			return false;
		}else{
			var answer = confirm("TRACKER에 회원가입하시겠습니까?");
			if(answer == true){
				loginForm.submit();
			}else{
				return false;
			}
		}
		// loginForm.submit();
	}
}
