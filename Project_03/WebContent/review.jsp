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



 
<div id='textdetatit'>리뷰</div>
<div id=lireview'>

<span id='reviewtext2'>리뷰</span>
<span id='reviewnum'>3</span>
<span id='reviewtext2'>건</span>
</div>


<div id='reviewtit'> 
 <jsp:include page="reviewlist.jsp" />



</div>

 <jsp:include page="reviewwrite.jsp" />


</div>

</div>




</body>

</html>