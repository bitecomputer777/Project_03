<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<c:if test="${part==null }">    
<ul id='prd_list'>
<c:forEach var="row" items="<%=new int[]{1,2,3,4,5,6,7,8,9} %>">
		<li><a href='item.it?num${row }'>${row }</a></li>

</c:forEach>
</ul>
</c:if>

<c:if test="${part!=null}">
	<jsp:include page="${part }"/>
</c:if>