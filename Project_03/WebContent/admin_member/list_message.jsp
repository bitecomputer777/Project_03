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
<c:set var = "dbcount" value="${message_list.size()}"/>

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
				<h2>메세지 관리</h2>
				─────────────────────────────────────────────────────────────────
				<div id="list_table">
				
					<table>
						<tr>
							<th>아이디 &nbsp;&nbsp;</th>
							<th>이름 &nbsp;&nbsp;</th>	
							<th>제목 &nbsp;&nbsp;</th>	
							<th>내용 &nbsp;&nbsp;</th>	
							<th>상태 &nbsp;&nbsp;</th>	
							<th>보낸날짜 &nbsp;&nbsp;</th>	
										
						</tr>
						<c:if test = "${message_list == null }">
							<tr>
								<td colspan="5">등록된 글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${message_list != null }">
						
							<c:set var ="end" value= "${skiprow +9 }"/>
							
0						
						
							<c:if test="${end > dbcount }">
								<c:set var = "end" value ="${dbcount}"/>
							</c:if>
							
							<c:forEach var = "rs" items="${message_list}" begin="${skiprow-1}" end="${end-1}" step="1">
							<tr>
								<td>${rs.id}</td>
								<td>${rs.name} </td>
								<td><a href="message_view.mem?id=${rs.id}" >${rs.title}</a> </td>
								<td>${rs.contents} </td>
								<td>${rs.state} </td>
								<td>${rs.send_date} </td>
								
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
					                  
					               <a href ="list_message.mem?pagenum=${startpage-1}"> [이전] </a>
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
					                        
					                        <a href="list_message.mem?pagenum=${i}">[${i}]</a>
					                    
					                     </c:otherwise>
					                  
					                  </c:choose>
					              
					              </c:forEach>
								
							
							</td>
						</tr>
								
						
					</table>
				
				</div>	
		
		</div>
		

</html>