<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="http://localhost:8080${pageContext.request.contextPath }" /> 

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기 하단</title>
<link rel='stylesheet' type='text/css' href= 'item.css'>
<script>

function more2(){

	
	
}
</script>
</head>
<body>



<div id='dnmanu'>
<a href='more.it'><button id='itemmore'>상품정보</button></a>
 <a href='review.it'> <button id='itemmore'>
<span id='reviewtext'> 리뷰 </span>
<span id='reviewtitnum' onclick='more3()'> 3 </span>
</button></a>
 <a href='change.it'><button id='itemmore'>반품, 교환정보 </span>
</button></a>


<div id='screen'>

<c:set var="file" value="itemtext.jsp"/>
<c:if test="${sub!=null }">
 <c:set var="file" value="${sub }"/>
</c:if>
 <jsp:include page="${file }"/>


</div>

<div id='moreitem'>


<span class='liitem'>
<a href='item.jsp' >
<div class=liimg>
<img class='img' src = "img/1.jpg">
</div>
<div class='liitemtext'>
<div class='litit'>
아주 맛있는 닭발(상품이름)
</div>
<div class='litext'>
아주 맛있어요!(상품 내용)

</div>
<div class='pricefil'> 
<div class='liprice'>
3000 원
</div>
</div>
</div>
</a>
</span>








</div>

	
</body>
</html>