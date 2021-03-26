<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	var login_fail = '${login_fail}';
	if(login_fail!=""){
		alert("아이디또는 비밀번호를 잘못입력했습니다.");
	}
</script>


<div id='login_form'>
	<form name='f' method='post' action='login.do'>
	<input type='hidden' name='cmd' value='login'>
		<div> 아이디 <input type='text' name='id' id='id'></div>
		<div> 암호 <input type='password' name='pw' id='pw'></div>
		<button type='button' id='login_bt'>로그인</button>
		<button type='button' id='join'>회원가입</button>
	</form>
	 <script src="lib/member.js"></script>
</div>