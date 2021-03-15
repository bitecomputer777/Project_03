<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    <c:if test="${ user!=null}">
    <form method='get' action='obtain_write_save.pic'>
  



<div id='myreiew'>
<span id='myname'> 
<div id='name1'>  작성자</div>
<div id='name2'> ${user} </div>
</span>
<span id='myreiewtext'><textarea  rows='4' cols='67' placeholder = '리뷰를 남겨주세요!'  ></textarea> </span>
<button colsapn="2" id='reviewbt'>작성</button>
</div>


</form>
</c:if>
    
    
    
    <c:if test="${user==null }">
    <script>
    alert("로그인 후 이용해주세요");
    location.href="login.do";

    </script>
    </c:if>