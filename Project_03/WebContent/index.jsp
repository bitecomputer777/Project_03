<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="http://localhost:8080${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<style>
		
	
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		<c:set var="file" value="body.jsp"/>
	
			<c:if test="${part!=null }">
	
				<c:set var="file" value="${part}/${sub}.jsp"/>
		
	
		</c:if>
		
		<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%-- <%@ include file="/navi_bar/left_navi.jsp" %>  --%>

		<%-- <%

        out.flush();

        //include메소드를 실행하기위한 준비 파라미터는 포함할 jsp파일주소

        RequestDispatcher dispatcher = request.getRequestDispatcher("navi_bar/left_navi.jsp");

        dispatcher.include(request, response);

  	  %> --%>
		<%@ include file="/navi_bar/left_navi.jsp" %> 


	
		
		
	
	
			
				
			
		<div id="content">
				<h2> </h2>
				<div>
					<table>
					
							
					
					</table>
				
				</div>	
		
		</div>
</body>
</html>