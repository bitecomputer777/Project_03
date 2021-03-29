<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
window.onload=function(){
	var p_id = opener.document.querySelector("#id");
	var c_id = document.querySelector("#idchk");
	c_id.value=p_id.value;
	var idok='${id}';
	if( idok!="") c_id.value=idok;
	
};
function iduse(){
	var result='${result}';
	var idok='${id}';
	if(idok!="" && result==""){
		var p_id = opener.document.querySelector("#id");
		var c_id = document.querySelector("#idchk");
		p_id.value=c_id.value;
		window.close();
	}else{
		alert("아이디 확인을 먼저해주세요");
	}
}


</script>

<form method='post' action='idcheck.do'>
<input type='hidden' name='cmd' value='chk'>
아이디<input type='text' name='idchk' id='idchk'>
<button>아이디확인</button>


<c:if test="${result !=null }">
	<p>아이디 중복입니다.</p>
</c:if>
<c:if test="${result ==null }">
	<p>아이디 사용가능합니다.</p>
</c:if>
</form>
<button onclick='iduse()'>사용하기</button>

