<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/stylesheet.css"/> 
	<style>
	#left_ul{
			position:relative;
			list-style-type:none;
				
			background-color: aqua;	
			width:150px;
			list-style-type:none;
			margin: 0;
			padding:0 24px;	
		
		}
		li a{
			display: block;
			padding: 8px;
			text-decoration:none;
			font-weight: bold;
			
		
		}
		
	.li_hidden{
		list-style-type:none;
		display:none;
		background-color:#b7f7e4;
		text-size:14pt;
		
	}
	
	#navi{
	 width: 210px;
    height: 1000px;
    background-color: skyblue;
	}
		
	</style>

</head>
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
	
	$(document).ready(function(){
		var Str="Project_03/WebContent";
		
		
		
		$("#ninja").click(function(){
			location.href=str+"/admin_member/ninja.jsp";
		});
		
	});
	</script>
<body>
	
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
					<li><a href="order_admin/money_admin.jsp">입금확인</a></li>
					<li><a href="order_list">전체주문 내역</a></li>
					<li><a href="">배송관리</a></li>
					<li><a href="">환불 및 교환</a></li>
					
				</ul>
			</li>
			
			<li id="c"><a href="" >상품관리</a>
				<ul class="li_hidden">
					<li><a href="product_admin/product_insert.jsp">상품등록</a></li>
					<li><a href="product_admin/product_list.jsp">상품목록</a></li>
					<li><a href="product_admin/product_show_input.jsp">샾에 등록</a></li>
					<li><a href="product_admin/">요구상풒</a></li>
					<li><a href="product_admin/">재고관리</a></li>
					
				</ul>
			
			</li>
			<li id="d"><a href="" >회원관리</a>
				<ul class="li_hidden">
					<li><a href="admin_member/member_admin.jsp">회원목록</a></li>
					<li><a href="admin_member/list_message.jsp">문의사항 메세지</a></li>
					<li><a href="#" id="ninja">탈퇴 및 제제</a></li>
					
				</ul>
			
			</li>
			<li><a href="">home</a></li>
		
		</ul>
	
	</nav>
	</div>

</body>
</html>