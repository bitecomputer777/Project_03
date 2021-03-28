<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		#serch_button{
			margin:0 auto;
		}
		#insert_table{
			margin: 0 auto;
		}
		#insert_table  th{
			width:80px;
			height:30px;
			background-color:yellow;
		}
		#insert_table  td{
			padding-left:20px;
			width: 500px;
			background-color:white;
		}
	
	</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			var nowday = new Date();
				//${"#date_02"};
			var yyyy = nowday.getFullYear();
			var mm = nowday.getMonth()+1;
			var dd = nowday.getDate(); 
			 var today = yyyy + "-" + mm + "-" + dd;
		
			$("#to_day").click(function(){
				
				
			
				$("#date_01").val(today);
				
			});
			
			$("#week").click(function(){
				
				var date = new Date();
					//${"#date_02"};
				
				date.setDate(date.getDate()-7);
				 yyyy = date.getFullYear();
				 mm = date.getMonth()+1;
				 dd = date.getDate(); 
				var weekpr = yyyy + "-" + mm + "-" + dd;
				
				$("#date_01").val(weekpr);
				
			});
			
			$("#month").click(function(){
				var date = new Date();
					//${"#date_02"};
				
				date.setMonth(date.getMonth() - 1);
				 yyyy = date.getFullYear();
				 mm = date.getMonth()+1;
				 dd = date.getDate(); 
				var monthpr = yyyy + "-" + mm + "-" + dd;
				
				
				
				
				$("#date_01").val(monthpr);
				
			});
			
			
			
			
			
			
				
				
			
				
			
			
			
		});
	
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		
			
		<div id="content">
				<h2>입금관리</h2>
				─────────────────────────────────────────────────────────────────
				<div>
					<form action="money_search.ord" method="post">
					<table id="insert_table">
					<jsp:useBean id="now" class="java.util.Date"/>
					
					
							<fmt:formatDate value="${now}" pattern="yyyy-MM-dd "  var ="today"/>
						
						<tr>
							
							<th>기간</th><td><input type="text" name="date_01" id ="date_01" value="">-<input type="text" name="date_02" id ="date_02" value="${today}">
							
								<button type="button" id="to_day">오늘</button>&nbsp;
								<button  type="button" id="week">일주일</button>&nbsp;
								<button  type="button" id="month">한달</button>
							</td>
								
						</tr>
						<tr>
							<th>통합검색</th><td><input type="text" name="serch_key"></td>
						</tr>
						<tr>
							<th>입금방법</th>
									<td>
										<select name ="input_money">
											<option value="0">고르세요</option>
											<option value="money">무통장입금</option>
											<option value="card">카드</option>
											<option value="mobile">모바일 결제</option>									
										</select>
									</td>
						</tr>
						<tr>
							<th>주문상태</th>
									<td>
										<select name ="order_state">
											<option value="0">고르세요</option>
											<option value="1">주문대기</option>
											<option value="2">배송</option>
											<option value="3">도착</option>									
										</select>
									</td>
						</tr>
						<tr>
							<th>미납자</th>
									<td>
										<select name = "money_state">
											<option value="0">고르세요</option>
											<option value="n">미납</option>
											<option value="y">납부</option>
																			
										</select>
									</td>
						</tr>
						
						
						
							
					
					</table>
					<table id="serch_button">
						<tr><td><button>검색</button></td></tr>
					</table>
					</form>
						
				</div>	
				
		</div>
</body>
</html>