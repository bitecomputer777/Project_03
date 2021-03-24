<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 보기 </title>
<link rel='stylesheet' type='text/css' href= 'item.css'>


</head>
<body>
<div  id='up'>

	<span id='itemimg'>
		<div id='tag'>

			<span class='loc'>
				<a href="" onclick="" class=home>홈</a>


				<span class='categorywrap'>
			
					<span class='nexticon'> ></span>
				    <a class='dropdown' href=""> ${item.kind} </a>
				</span>
				
		
			</span>

			<name id='itemnum' title='상품번호'> 


			<span class='ifitemnum'>
				<span class='itemno'> 상품번호 : </span>
				<span class='itemno'> ${item.itemno} </span>
			</span>


		</div>

		<div id='bigimg'> 
			<img id='bigimg' src = "img/${item.bigimg}"  > 
		</div>
	</span>




	<span id='text'>
	
		<div class='price'>
			<h1 class='itemtit'> ${item.itemtit} </h1>
			<span class='pricereal'>${item.pricereal}</span>
			<span class='unit'> 원 </span>
		</div>



		<div id="option" class="option">
			<h2 class='titoption'> 옵션선택</h2>


<select id='opt'>  

<c:forEach var="opt_name" items="${item.opt1}">
<c:forEach var="opt_pri"  items="${item.opt2}"> 
<option>${opt_name}   (추가 비용:${opt_pri}  ) </option>
</c:forEach>
</c:forEach>
</select>	


<div id='void'> </div>
			</div>
		
		<div id='buy'>
		<div id='ctrl'>
			<span class="numctrl">
			<button class="btdecrease" onclick=""  type="button">-</button>
			<span name="order" id='order' class='num'  title='수량'>1</span>
			<button class="btincrease" onclick=""  type="button">+</button>
			</span>
			
			
			
			<script>
					
               </script>
			
			
			
			
			<span class='totalprice'>
				<span id="totaltxt"> 총 상품금액 </span>
				<span  id="totalnum">
				<strong class="num">   </strong>
				원 </span>
			</span>
			</div>
			<div >
				<button class="btncart" onclick="" type="button"> 장바구니 </button>
				<button class="btbuy" onclick="" type="button"> 구매하기 </button>
			</div>
	 	</div>
	 </span>
</div>
		<div id='down'>
		
		
		 <jsp:include page="itemmore.jsp" />
		
		
		
		</div>

	


</body>
</html>