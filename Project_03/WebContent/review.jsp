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
<div id='textdetatit'>리뷰</div>


<div id=lireview>
<span id='reviewtext2'>리뷰</span>

<span id='reviewnum'>3</span>
<span id='reviewtext2'>건</span>
</div>

<div id='review'>

<div id='weview'>

<div class='youreview'>
<span class='youname'></span>
<span] id='youreiewtext'></span>
</div>
</div>

<div id='myreiew'>
<span id='myname'> 
<div id='name1'>  작성자</div>
<div id='name2'> </div>
</span>

 <span id='myreiewtext'><textarea  rows='4' cols='67' placeholder = '리뷰를 남겨주세요!'  ></textarea> </span>

<button id='reviewbt'>작성</button>
</div>
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