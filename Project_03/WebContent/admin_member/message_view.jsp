<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		.list_table >  table {
			margin:0 auto;
		}
		.list_table >  table > tr >td{
			margin:0 auto;
		}
		#content2{
			position:relative;
			left:211px;
			bottom:800px;
			width:800px;
			weight:600px;
			background-color:navy; ;
		}
	
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		
		
		
		<div id ="content">
				<h2>메세지 관리</h2>
				─────────────────────────────────────────────────────────────────
				<form name="frm" method="post">
				<input type="hidden" name="qseq">
				
				<div class="list_table">
				
					<table>
						
						<c:forEach var = "rs" items="${message_view}" begin="0" end="1" step="1" >
 							<tr>
								<th width="">제목</th>
								<td>${rs.title}</td>
							</tr>
							<tr>
								<th>등록일</th>
								<td>${rs.send_date} </td>
							</tr>
							<tr>
								<th>질문내용</th>
								<td>${rs.contents}</td>
							</tr>
							<tr>
								<th>상태</th>
								<td>${rs.state}</td>
							</tr>
						</c:forEach>


	
					</table>
				
				</div>	
				
				<input type="button" class="btn" value="목록" onClick="go_list()">
				</form>
		
		</div>
</body>
</html>