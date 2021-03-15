<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
String user = (String)session.getAttribute("user"); //로그인 확인용
%>

<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link rel='stylesheet' type='text/css' href= 'main.css'>
</head>
<body>
<div id='reviewtit'>  
<div id='textdetatit'>리뷰


 <jsp:include page="reviewlist.jsp" />

</div>

</div>

 <jsp:include page="reviewwrite.jsp" />


</div>

</div>




</body>
<script>


	var take=document.querySelector("#myreiewtext");
	take.addEventListener("click",function(){
		<% if (user==null) {%>
		alert("로그인을 먼저 해주세요.");
		<%}%>
		
	
		
	});


</script>
</html>