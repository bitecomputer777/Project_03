<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="http://localhost:8089${pageContext.request.contextPath}" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> title </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	
	
	$(document).ready(function(){
		   $("#left_ul  > #a "). mouseover(function(){
			  $("#left_ul  > #a").css('backgroundColor', '#b7f7e4');

		
			  $("#a .li_hidden").show(); 
			   
			    
		   });  
		   
		   $("#left_ul > #a "). mouseout(function(){

			   $("#left_ul  > #a").css('backgroundColor', 'aqua');
			   $("#a .li_hidden").fadeOut(1000); 
		   });
		   
		   $("#left_ul  > #b "). mouseover(function(){
			   	
			   	$("#left_ul  > #b").css('backgroundColor', '#b7f7e4');
				  $("#b .li_hidden").show(); 
				   
				  
			   });  
		   
			   $("#left_ul  > #b "). mouseout(function(){

				   $("#left_ul  > #b").css('backgroundColor', 'aqua');
				   $("#b .li_hidden").hide();  
			   });
			   
			   $("#left_ul > #c "). mouseover(function(){
				   
				   $("#left_ul  > #c").css('backgroundColor', '#b7f7e4');
					  $("#c .li_hidden").show(); 
					   
					  
				   });  
			   
				   $("#left_ul  > #c  "). mouseout(function(){

					   $("#left_ul  > #c").css('backgroundColor', 'aqua');
					   $("#c .li_hidden").hide(); 
				   });
				   
				   $("#left_ul  > #d  "). mouseover(function(){
					   
					   $("#left_ul  > #d").css('backgroundColor', '#b7f7e4');
						  $("#d .li_hidden").show(); 
						   
						  
					   });  
				   
					   $("#left_ul  > #d  "). mouseout(function(){

						   $("#left_ul  > #d").css('backgroundColor', 'aqua');
						   $("#d .li_hidden").hide();  
						   
					   });
					   
					   
					   
					   
					   
					   
		});
	
 	
	</script>


<link rel='stylesheet' type='text/css' href='${path}/css/main.css'>



<c:if test="${part != null }">

	<link rel="stylesheet" type="text/css" href="${path}/css/${part}.css">
	
	
	
	
</c:if>
</head>
<body>

<div id='main'>


<div id="title_navi"> 
				
				<div id="log">
				
						<span class="log_box">관리자</span>
						<span class="log_box">adimin</span>
						<span class="log_box">home</span>
						<span class="log_box">logout</span>
			
				</div>
</div>
<div>
		<nav id="navi">
		<ul id="left_ul">
			<li id="a"><a href="" >사이트 관리</a>
				<ul class="li_hidden">
					<li><a>공지사항 관리</a></li>
					<li><a>관리자 관리</a></li>
					
				</ul>
			</li>
			<li id="b"><a href="" >주문관리</a>
				<ul class="li_hidden">
				
			
					<li><a href="money_admin.ord">
					입금확인</a></li>
			
							
					<li><a href="order_list.ord">전체주문 내역</a></li>
					<li><a href="delivery_ad.ord">배송관리</a></li>
					<li><a href="">환불 및 교환</a></li>
				
					
				</ul>
			</li>
			
			<li id="c"><a href="" >상품관리</a>
				<ul class="li_hidden">
					<li><a href="product_insert.do">상품등록</a></li>
					<li><a href="product_list.do">상품목록</a></li>
					<li><a href="product_show_input.do">샾에 등록</a></li>
					<li><a href="">요구상풒</a></li>
					<li><a href="">재고관리</a></li>
					
				</ul>
			
			</li>
			<li id="d"><a>회원관리</a>
				<ul class="li_hidden" >
					
					<li><a href="member_admin.mem" > 회원목록</a></li>
					<li><a href="list_message.mem">문의사항 메세지</a></li>
					<li ><a href="ninja.mem" >탈퇴 및 제제 </a></li>
					
					
					
				</ul>
			
			</li>
			
			<li><a href="">home</a></li>
		
		</ul>
	
	</nav>
	</div>



<c:set var="file" value="body.jsp"/>
<c:if test="${part == null }">
<script>
	alert("parameta part 가 없다");
</script>
</c:if>
<c:if test="${part != null }">

	
	
	
	<c:set var="file" value="${part}/${sub}.jsp"/>
	
	
</c:if>


<jsp:include page="${file}"/>


<div id='foot'> </div>

</div>
</body>
</html>