<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		#content{
			position:relative;
			left:211px;
			bottom:990px;
			width:800px;
			height:400px;
			background-color: green;
		}
		 #poto{
		 	position:relative;
			width:300px;
			height:200px;
			background-color: red;
			border: 2px dotted black;
		
		}
		#explanation{
			position:relative;
			left:315px;
			bottom:200px;
			
			border-right: 1px solid black;
			border-left: 1px solid black;
		}
		#explanation tr{
			height:40px;
			margin-top:5px;
			margin-bottom: 5px;
		}
		
			
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		
		<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%@ include file="/navi_bar/left_navi.jsp" %> 
		<div id="content">
				<h2>제목</h2>
				<div id="poto">
					<span >사진</span>
				
				</div>	
				<table id="explanation">
					<tr>
						<th>구매자</th><td><input type="text"></td>
					</tr>
					<tr>
						<th>상태</th><td><input type="text"></td>
					</tr>
					<tr>
						<th>내용</th><td><input type="text"></td>
					</tr>
					<tr>
						<th>기타문의</th><td><input type="text"></td>
					</tr>
					
				</table>
		
			
		</div>
		
</body>
</html>