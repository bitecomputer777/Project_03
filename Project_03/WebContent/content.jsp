<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




   <body>
<c:if test="${part==null }">    
<ul id='prd_list'>
<c:forEach var="row" items="<%=new admin_product.product_DAO().list_select()%>">

<li>
	

<a href='item.it?num=${row.itemno}'>
<img class='minimg'  style='width:329px; height:250px;' src='img/${row.bigimg}'>
 ${row.itemtit} 
 ${row.pricereal} 

</a>

</li>

</c:forEach>
</ul>
</c:if>

<c:if test="${part!=null}">


	<jsp:include page="${part }"/>
</c:if>

