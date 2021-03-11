<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기 하단</title>
<link rel='stylesheet' type='text/css' href= 'main.css'>
<script>

function more2(){

	
	
}
</script>
</head>
<body>



<div id='dnmanu'>
<a href='index.jsp?part=itemmore'><button id='itemmore'>상품정보</button></a>
 <a href='index.jsp?part=review'> <button id='itemmore'>
<span id='reviewtext'> 리뷰 </span>
<span id='reviewtitnum' onclick='more3()'> 3 </span>
</button></a>
 <a href='index.jsp?part=change'><button id='itemmore'>반품, 교환정보 </span></a>
</button>


<div id='screen'>

 <jsp:include page="itemtext.jsp" />


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