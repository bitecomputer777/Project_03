<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    <c:if test="${ user!=null}">
    <form method='get' action='obtain_write_save.pic'>
  

  
   
    작성자
  ${user}






 <td colsapn="2"><button>요청등록</button></td>
  
   
</form>
</c:if>
    
    
    
    <c:if test="${user==null }">
    <script>
    alert("로그인 후 이용해주세요");
    location.href="login.do";

    </script>
    </c:if>