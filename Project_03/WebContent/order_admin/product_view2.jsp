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
			weight:600px;
			background-color: green;
		}
		#table_box{
			width:800px;
		}
		#sub{
			background-color: red;
			padding-top: 10px;
			padding-bottom:15px;
			text-align: center;
		}
		#cookie{
			text-align:right;
			background-color:#b7f7e4;
		}
		#order_impo{
			position:relative;
			left:150px;
			text-align: center;
		/* 	background-color:#e1fcf4;
			overflow:  hidden; */
		
		}
		#order_impo > tr > td,th{
			border:1px dotted black;
			padding-top:5px; 
			padding-bottom:5px ;
		}
	
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		
		<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%@ include file="/navi_bar/left_navi.jsp" %> 
		<div id="content">
				<h2></h2>
		<table id="table_box">
			<tr>
			 	<td colspan=3 id="sub">제목부분</td>
			 	
			 	
			</tr>
			<tr>
				<td id="cookie">
					관리자 /  2007-1022 / 2번 읽음 
				</td>
			</tr>
			<tr>
			
				<td id="order_impo"> 
					<table>
						<tr>
							<th>주문번호</th> <td> </td>
							
						</tr>
						<tr>
							<th>상품이름</th> <td> </td>
							
						</tr>
						<tr>
							<th>회원이름</th> <td> </td>
							
						</tr>
						<tr>
							<th>주문시간</th> <td> </td>
							
						</tr>
						<tr>
							<th>배송 상태</th> <td> </td>
							
						</tr>
						<tr>
							<th>입금관련</th> <td> </td>
							
						</tr>
					</table>
				</td>
			</tr>
			
    
   		  </table>
		
		</div>
</body>
</html>