<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<c:forEach var="i" begin="0" end="${fn:length(item.opt1)-1}" step="1">

<option>${item.opt1[i]}   (추가 비용:${item.opt2[i]}  ) </option>

</c:forEach>
</select>	
<%
String[] a={"1000","2000","1000"};
request.setAttribute("list",a);
request.setAttribute("money", 15000);
%>



<div id='void'> </div>
			</div>
		
		<div id='buy'>
		<div id='ctrl'>
			<span class="numctrl">
			<button class="btdecrease" onclick="minus()" >-</button>
			
			<span name="order" id='order' class='num'  title='수량'></span>
			
			<button class="btincrease" onclick="plus()">+</button>
					</span>
		
	<input type='text' name='tot_money' id='tot_money' style='border:none;'>	
			
	<script>
	
	var order_num=1;
	var order=null;
	var tot_money=null;
	var opt_money='${a}';
	var item_money ='${money}';
	var tot=0;
	
	window.onload=function(){
	tot_money=document.querrySelector("#tot_money");
	tot_money.value=item_money;
	tot=parseInt(item_money);
	order=document.querySelector("order");
	order.innerHTML=order_num;
	}
	function opt_select(sel){
		if(isNaN(parseInt(sel.options[sel.selectedIndex].value)))
			tot_money.value=tot;
		else
			tot_money.value=tot +parseInt(sel.options[sel.selectedIndex].value);
	}
	function minus(){
		oder_num--;
		if(order_num<1)
			order_num=1;
		else
			tot = tot - item_money;
		order.innerHTML=order_num;
		
		tot_money.value=tot
		}
	
	function plus(){
		order_num++;
		tot = tot+parseInt(item_money);
		order.innerHTML=order_num;
		
		tot_money.value=tot
		
	}
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