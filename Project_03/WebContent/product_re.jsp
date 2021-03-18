<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel= "stylesheet"  type="text/css" href="product_re.css">
</head>
<body>
<div id='main'> 교환 및 반품</div>
<div id='big'>
<div>단순 변심</div>
<div> 		
<input type="checkbox" name="mind" value='1'> 상품이 마음에 들지 않음
</div>
<div>배송문제</div>
<div> 		
<input type="checkbox" name="deliver_problem" value='1'> 배송된 장소에 상품이 없음
</div>
<div> 		
<input type="checkbox" name="deliver_problem" value='2'> 선택한 주소가 아닌 다른 주소로 배송됨
</div>
<div> 		
<input type="checkbox" name="deliver_problem" value='3'> 주문한 상품중 일부 상품이 되송되지 않음
</div>
<div>상품문제</div>
<div> 		
<input type="checkbox" name="product_problem" value='1'> 상품의 구성품이 들어있지 않음
</div>
<div> 		
<input type="checkbox" name="product_problem" value='2'> 상품이 설명과 다름
</div>
<div> 		
<input type="checkbox" name="product_problem" value='3'> 다른 상품이 배송됨
</div>
<div> 		
<input type="checkbox" name="product_problem" value='4'> 상품이 손상됨
</div>
<div><input type="text"	placeholder="상세 사유 입력" id='sss'></div>
</div>
<div>취소</div>
<div id='big2'>
<div>
<input type="checkbox" name="cancel" value='1'> 상품이 마음에 들지 않음
</div>
<div>
<input type="checkbox" name="cancel" value='2'> 다른 상품 추가 후 재주문 예정
</div>
<div>
<input type="checkbox" name="cancel" value='3'> 판매자로부터 품절 안내 받음
</div>
<div>
<input type="checkbox" name="cancel" value='4'> 배송 지연
</div>
<div><input type="text"	placeholder="상세 사유 입력" id='sss2'></div>
</div>
<div>
<a href ="" id='oo'>신청하기 </a>
</div>
</body>
</html>