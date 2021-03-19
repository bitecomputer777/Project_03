<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
    
<ul id='prd_list'>
<c:forEach var="row" items="<%=new int[]{1,2,3,4,5,6,7,8,9} %>">
		<li>${row }</li>

</c:forEach>
</ul>