<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>



<c:set var = "pagesize" value ="10"/>
<c:set var = "grpsize" value = "5"/>
<c:set var = "pagenum" value = "1"/>
<c:set var = "pagecount" value = "1"/>
<c:set var = "skiprow" value = "1"/>
<c:set var = "dbcount" value="${result_list.size()}"/>

		


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
			
				<h2>제제 대상자</h2>
				─────────────────────────────────────────────────────────────────
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
						<c:if test = "${result_list == null }">
							<tr>
								<td colspan="5">등록된 글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${result_list != null }">
						
							<c:set var ="end" value= "${skiprow +9 }"/>
							
						
						
							<c:if test="${end > dbcount }">
								<c:set var = "end" value ="${dbcount}"/>
							</c:if>
							
							<c:forEach var = "rs" items="${result_list}" begin="${skiprow-1}" end="${end-1}" step="1">
							<tr>
								<td><a href="money_view.ord?itemno${rs.itemno}">${rs.itemit}</a></td>
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
		

</html>