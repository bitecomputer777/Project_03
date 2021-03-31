<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 </title>
<%@include file = "" %>

<script >
$(function(){
	$("#btnList").click(function(){
	 location.href="${path}";	
	});
	
	$("#btnDelete").click(function(){
		if(confirm("장바구니를 비우시겠습니까?")){
			location.href = "${path}";
		}
	});
});
</script>

</head>
<body>
<%@ include file="" %>
<h2>장바구니</h2>

<c:choose>
    <c:when test="${map.count == 0 }">
    장바구니가 비었습니다.
    </c:when>
    <c:otherwise>
<form id = "form1" name="form1" method="post">
  <action="">
	<table>
		<tr>
			<th>상품명</th>
			<th>단가</th>
			<th>수량</th>
			<th>금액</th>
		</tr>
  <c:forEach var="row" item="${map.list}>
  	<tr>
  		<td>${row.priduct_name}</td>
  		
  		<td><fmtfomatNumber value = "${row.price }"	pattern="#,###,###" /></td>
  		
  		<td><input type="nunber" name ="amount" value="<fmt:formatNumber value="${row.amount}" parttern="#,###,###" />">
  		
  		<input type ="hidden> name="cart_id" value = "${row.cart_id }">
  		</td>
  		<td> <fmt:formatNumber value=req.stss
  	</tr>
	</table>

</form>

</body>
</html>
