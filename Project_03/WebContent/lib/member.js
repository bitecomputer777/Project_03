/**
 * 
 */
window.onload=function(){
	var login_bt = document.querySelector("#login_bt");
	if(login_bt!=null)
		login_bt.addEventListener("click",login_check);
	
	var join_bt = document.querySelector("#join");
	if(join_bt!=null){
		join_bt.addEventListener("click",function(){
			location.href="join.do";
		});
	}
	var j_bt = document.querySelector("#join_bt");
	if(j_bt!=null)
		j_bt.addEventListener("click",join_check);
	
	var idchk = document.querySelector("#id_cmp");
	if(idchk!=null)
		idchk.addEventListener("click",id_check);
	
}
function join_check(){
	var jf = document.j;
	if(jf.id.value==""){
		alert("아이디입력하세요");
		jf.id.focus();
		return;
	}else if(jf.pw.value==""){
		alert("비밀번호 입력하세요");
		jf.id.focus();
		return;
	}else if(jf.pwre.value==""){
		alert("비밀번호를 한번더 입력하세요");
		jf.pwre.focus();
		return;
	}else if(jf.pw.value != jf.pwre.value){
		alert("비밀번호를 다시 확인하세요");
		jf.pw.focus();
		return;
	}else if(jf.email.value==""){
		alert("이메일을 입력하세요");
		jf.email.focus();
		return;
	}else{
		jf.submit();
	}
}
function id_check(){
	var jf = document.j;
	var idchk = window.open("member/idcheck.jsp", "",
	"left="+screen.width/2+",top="+screen.height/2+", width=250, height=150");

}
function login_check(){
	var fm = document.f;
	if(fm.id.value==""){
		alert("아이디를 입력하세요");
		fm.id.focus();
		return;
	}else if(fm.pw.value==""){
		alert("암호 입력하세요");
		fm.pw.focus();
		return;
	}else{
		fm.submit();
	}
}

