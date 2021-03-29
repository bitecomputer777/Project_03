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
	<c:set var = "dbcount" value="${test_list.size()}"/>

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
				<h2>회원정보관리 임시</h2>
				─────────────────────────────────────────────────────────────────
				<div id="list_table">
				
					<table>
						<tr>
							<th>srial_num &nbsp;&nbsp;</th>
							<th>product_name &nbsp;&nbsp;</th>	
							<th>date &nbsp;&nbsp;</th>	
							<th>num &nbsp;&nbsp;</th>	
							<th>limite_date &nbsp;&nbsp;</th>	
							<th>etc &nbsp;&nbsp;</th>	
							<th>check &nbsp;&nbsp;</th>	
										
						</tr>
						
						<c:if test = "${test_list == null }">
							<tr>
								<td colspan="5">등록된 글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${test_list != null }">
						
							<c:set var ="end" value= "${skiprow +9 }"/>
							
						
						
							<c:if test="${end > dbcount }">
								<c:set var = "end" value ="${dbcount}"/>
							</c:if>
							
							<c:forEach var = "rs" items="${test_list}" begin="${skiprow-1}" end="${end-1}" step="1">
							<tr>
								<td>${rs.id}</td>
								<td>${rs.name} </td>
								<td>${rs.birth} </td>
								<td>${rs.email} </td>
								<td>${rs.tell}</td>
								<td>${rs.addr} </td>
								<td>${rs.etc }</td>
							</tr>
							</c:forEach>	
						</c:if>
						
						<tr>
							<td colspan="5">
								<c:set var = "grpchk" value = "${(reqpage-1)%grpsize}"/>
								
								<c:set var = "startpage" value="${reqpage-grpchk }"/>
               
					            <c:if test="${(startpage - grpsize) > 0 }">
					               
					              <script type="text/javascript">
					                  
					                     alert("실행중");
					              </script>
					                  
					               <a href ="member_admin.mem?pagenum=${startpage-1}"> [이전] </a>
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
					                        
					                        <a href="member_admin?pagenum=${i}">[${i}]</a>
					                    
					                     </c:otherwise>
					                  
					                  </c:choose>
					              
					              </c:forEach>
								
							
							</td>
						</tr>
						
					</table>
				
				</div>	
		
		</div>
		

</html>