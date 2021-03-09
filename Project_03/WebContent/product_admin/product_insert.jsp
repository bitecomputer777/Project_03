<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#content{
			position:relative;
			left:211px;
			bottom:990px;
			width:800px;
			height:600px;
			
		}
		#content >h2{
			position: relative;
			
			left: 300px;
		}
		#insert{
			position: relative;
			top: 50px;
			margin: 0 auto;
		}
		#button{
			position: relative;
			top: 80px;
			margin: 0 auto;
		}
		
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
</head>
<body>
	<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%@ include file="/navi_bar/left_navi.jsp" %> 
		
			<div id="content">
				<h2> 상품관리등록 페이지 </h2>
				─────────────────────────────────────────────────────────────────
			<div >
				<form name="frm" action="" method="post">
					<table id="insert">
					<tr>
						<td>번호</td> <td><input type="text" name="num" id="srial" ></td>
					</tr>
					<tr>
						<td>이름</td> <td><input type="text" name="num" id="name" ></td>
					</tr>
					<tr>
						<td>등록 날짜</td> <td><input type="text" name="num" id="indate" ></td>
					</tr>
					<tr>
						<td>종류</td> <td>
									<select name="val">
										<option value="0">선택하세요</option>
										<option value="1">면</option>
										<option value="3">육류</option>
										<option value="4">해산물</option>
										<option value="5">어패류</option>
										<option value="6">채소</option>
										<option value="7">과일</option>
										<option value="8">술</option>
									</select>
								</td>
								
					</tr>
					
					<tr>
						<td>가격</td> <td><input type="number" name="price" id="price"></td>
					</tr>
					</table>
					<table  id= "button">
						<tr>
							<td>
								<a><input type="button" value="등록"></a> <input type="reset" value="다시 쓰기">
							</td>
						</tr>
					</table>
				</form>
					
			</div>
		
		</div>
		
		
			
		

</body>
</html>