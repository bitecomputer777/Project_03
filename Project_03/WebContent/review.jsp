<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
  <%
String user = (String)session.getAttribute("user"); //로그인 확인용
%>



<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link rel='stylesheet' type='text/css' href= 'item.css'>
</head>
<body>



 
<div id='textdetatit'>리뷰</div>
<div id=lireview'>

<span id='reviewtext2'>리뷰</span>
<span id='reviewnum'>   </span>
<span id='reviewtext2'>건</span>
</div>


<div id='reviewtit'> 
 <jsp:include page="reviewlist.jsp" />



</div>

 

  <div style='margin-top:50px;'>   
<jsp:include page="reviewwrite.jsp" />
     </div>








</body>

</html>