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
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		
			<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%@ include file="/navi_bar/left_navi.jsp" %> 
		<div id="content">
				<h2>입금관리</h2>
				─────────────────────────────────────────────────────────────────
				<div>
					<form action="">
					<table id="insert_table">
						
						<tr>
							<th>기간</th><td><input type="text" name="date_01">-<input type="text" name="date_02">
								<input type="button" value="오늘" name="today">&nbsp;&nbsp;<input type="button" value="일주일" name="week">&nbsp;&nbsp;
								<input type="button" value="한달" name="month"> </td>
								
						</tr>
						<tr>
							<th>통합검색</th><td><input type="text" name="serch"></td>
						</tr>
						<tr>
							<th>입금방법</th>
									<td>
										<select>
											<option value="0">고르세요</option>
											<option value="1">무통장입금</option>
											<option value="2">카드</option>
											<option value="3">모바일 결제</option>									
										</select>
									</td>
						</tr>
						<tr>
							<th>주문상태</th>
									<td>
										<select>
											<option value="0">고르세요</option>
											<option value="1">무통장입금</option>
											<option value="2">카드</option>
											<option value="3">모바일 결제</option>									
										</select>
									</td>
						</tr>
						<tr>
							<th>목로갯수</th>
									<td>
										<select>
											<option value="0">고르세요</option>
											<option value="1">무통장입금</option>
											<option value="2">카드</option>
											<option value="3">모바일 결제</option>									
										</select>
									</td>
						</tr>
						<tr>
							<th></th><td><input type="checkbox" > 신청</td>
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