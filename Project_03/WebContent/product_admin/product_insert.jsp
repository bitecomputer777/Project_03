<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<p>상품 등록페이지</p>
<form method='post' action='product_insertsave.do' enctype='multipart/form-data'>
<table>
	<tr>
		<td>상품 이름</td>
		<td><input type='text' name='itemtit'></td>
	</tr>
	<tr>
		<td>상품 가격</td>
		<td><input type='text' name='pricereal'></td>
	</tr>
	<tr>
		<td>상품 수량</td>
		<td><input type='text' name='among'></td>
	</tr>
	<tr>
		<td>상품 옵션</td>
		<td>
			<input type='checkbox' id='option_select'>상품옵션 등록
			<div id='opt_enter'>
				
			</div>
		</td>
	</tr>
	<tr>
		<td>상품 분류</td>
		<td><select name='kind'>
			<option value='중식'> 중식 </option>
			<option value='일식'> 일식 </option>
			<option value='한식'> 한식 </option>
			<option value='분식'> 분식 </option>
			<option value='치킨/피자'> 치킨/피자 </option>
		</select></td>
	</tr>
	<tr>
		<td>상품 이미지</td>
		<td><input type='file' name='bigimg'></td>
	</tr>
	<tr><td><button>등록</button></td></tr>
</table>
</form>
<script>
var opt_list="";
var opt_num=1;
var opt_chk = document.querySelector("#option_select");
opt_chk.addEventListener("click",function(){
	var div_op = document.querySelector("#opt_enter");
	
	if(opt_chk.checked==true){
		opt_list="옵션"+opt_num+"<input type='text' name='opt'> 추가금액<input type='text' name='opt_money'> ";
		
		div_op.innerHTML=opt_list+ "<button type='button' onclick='opt_add()'>추가</button>";
	}else{
		div_op.innerHTML="";
	}
});
function opt_add(){
	var div_op = document.querySelector("#opt_enter");
	opt_num++;
	opt_list +="<br>옵션"+opt_num+"<input type='text' name='opt'> 추가금액<input type='text' name='opt_money'>";	
	div_op.innerHTML=opt_list+ "<button type='button' onclick='opt_add()'>추가</button>";
}
</script>