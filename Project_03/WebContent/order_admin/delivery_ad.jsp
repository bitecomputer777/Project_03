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
		#list_table{
		
		}
		
		#list_table >  table {
			padding-top:20px;
			margin:0 auto;
			

			
		}
		#list_table >  table > tr >td{
			margin:0 auto;
		}
		
		#insert_table{
			margin: 0 auto;
			padding-bottom: 20px;
		}
		
		#insert_table  td{
			padding-left:20px;
			height:50px;
			width: 500px;
			background-color:white;
		}
		#insert_table  th{
		
			width:82px;
			height:50px;
			background-color:white;
		}
		
	
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
	
		
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script type="text/javascript">
			
				
				
				$(document).ready(function(){
					
					
					
					
					
					$("#list_table").css("display","${display}");
					
				
					
					$("#to_day").click(function(){
					
						var jform = $("#frm");
						jform.attr("action","delivery_search.ord");
						jform.attr("method","post");
						jform.submit();
						
						<c:set var ="cnt" value="1"/>
						
						if($("#list_table").css("display") == "none"){
							alert("list_추가");
							$("#list_table").css("display","block") ;
							
						}
						
					});
					$("#all").click(function(){
						
						var jform = $("#frm");
						jform.attr("action","delivery_search.ord");
						jform.attr("method","post");
						jform.submit();
						
						
						<c:set var ="cnt" value="1"/>
						
						if($("#list_table").css("display") == "none"){
							
							$("#list_table").css("display","block");
							
							}
					});
				});
			
			</script>
			
	<c:set var = "pagesize" value ="10"/>
	<c:set var = "grpsize" value = "5"/>
	<c:set var = "pagenum" value = "1"/>
	<c:set var = "pagecount" value = "1"/>
	<c:set var = "skiprow" value = "1"/>
	<c:set var = "dbcount" value="${delivery_list.size()}"/>

		


		<c:choose>
			<c:when test="${dbcount % pagesize == 0 }">
				<c:set var = "pagecount" value = "${dbcount/pagesize+1}"/>
			</c:when>
			<c:otherwise>
				<c:set var = "pagecount" value="${dbcount/pagesize+1}"/>
			</c:otherwise>		
		</c:choose>
		<c:set var = "reqpage" value="${param.pagenum }"/>
		<c:choose>
			<c:when test="${reqpage == null }">
				<c:set var = "raqpage" value = "1"/>
			</c:when>
			<c:otherwise>
				<c:set var="skiprow" value ="${(reqpage-1)*pagesize+1}"/>
			</c:otherwise>
		
		</c:choose>
		<c:if test="${skiprow < 0}">
			<c:set var ="skiprow" value="1"/>
		</c:if>
			
		
		<div id ="content">
				<h2>임시 위피 리스트 바</h2>
				─────────────────────────────────────────────────────────────────
				<form action ="delivery_search.ord" method="post" id ="frm">
					<table id="insert_table">
						<jsp:useBean id="now" class="java.util.Date"/>
					
					
							<fmt:formatDate value="${now}" pattern="yyyy-MM-dd "  var ="today"/>
						
						<tr>
							
							<th>기간</th><td><input type="text" name="date_02" id ="date_02" value="${today}">
							
								
								
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
						
									<button type="button" id="to_day">오늘</button>&nbsp;
									<button  type="button" id="all">전체</button>&nbsp;
								</td>
							</tr>
					
					</table>
				</form>
				
				
				<div id="list_table">
				
					<table>
						<tr>
							<th>상품이름</th>
							<th>상품번호</th>	
							<th>상품 종류 </th>	
							<th>구매 날짜 </th>
							<th>구매방법</th>
							<th>가격</th>
							<th>주문상태</th>
							<th>입금상태</th>	
							<th>구매 회원 아이디 &nbsp;&nbsp;</th>	
										
						</tr>
						<c:if test = "${delivery_list == null }">
							<tr>
								<td colspan="5">등록된 글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${delivery_list != null }">
						
							<c:set var ="end" value= "${skiprow +9 }"/>
							
						
						
							<c:if test="${end > dbcount }">
								<c:set var = "end" value ="${dbcount}"/>
							</c:if>
							
							<c:forEach var = "rs" items="${delivery_list}" begin="${skiprow-1}" end="${end-1}" step="1">
							<tr>
								<td><a href="money_view.ord?itemno=${rs.itemno}">${rs.itemit}</a></td>
								<td>${rs.itemno} </td>
								<td>${rs.kind} </td>
								<td>${rs.sales_time} </td>
								<td>${rs.deposit} </td>
								<td>${rs.price} </td>
								<td>${rs.state} </td>
								<td>${rs.pay} </td>
								<td>${rs.order_id} </td>
								
							</tr>
							</c:forEach>	
						</c:if>
						<tr>
							<td colspan="5">
								<c:set var = "grpchk" value = "${(reqpage-1)%grpsize}"/>
								
								<c:set var = "startpage" value="${reqpage-grpchk }"/>
               
					            <c:if test="${(startpage - grpsize) > 0 }">
					               
					              <script type="text/javascript">
					                  
					                    ;
					              </script>
					                  
					               <a href ="ninja.mem?pagenum=${startpage-1}"> [이전] </a>
					            </c:if>
					            <c:forEach var="i" begin="${startpage }" end= "${(startpage+grpsize)-1}" step ="1">
					                  
					                  <c:choose>
					                     
					                     <c:when test="${i==reqpage }">
					                       
					                        [${i}]
					                     
					                     </c:when>
					                    
					                     <c:when test="${i> pagecount }">
					                       
					                        <c:set var = "i" value="${(startpage+grpsize )} -1"/>
					                        
					                     </c:when>
					                     
					                     <c:otherwise>
					                        
					                        <a href="ninja.mem?pagenum=${i}">[${i}]</a>
					                    
					                     </c:otherwise>
					                  
					                  </c:choose>
					              
					              </c:forEach>
								
							
							</td>
						</tr>
						
					</table>
				
				</div>	
		
		</div>
		${param.cnt}
</body>
</html>