<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='main.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type='text/javascript' src='main.js'></script>
</head>
<body>

<div id='main'>
	<div id='top'>
		<jsp:include page="top.jsp"/>
	</div>
	<div id='logo'>
		
		<span><img src=''></span>
	</div>
	<div id='menu'>
		<jsp:include page="menu.jsp"/>
	</div>
<c:if test="${part==null }">
	<div id='main_slide'>
		<jsp:include page="main_slide.jsp"/>
	</div>
</c:if>
	<div id='content'>
		<jsp:include page="content.jsp"/>
	</div>
	
	<div id='foot'>
		<jsp:include page="foot.jsp"/>
	</div>
</div>

</body>
</html>