<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel='stylesheet' type='text/css' href= 'item.css'>


<form action='write.it' method='get' >
<input type='hidden' name='num' value='${param.num}'> 
<input type='hidden' name='user' value='dldpf'>


<div id='myreiew'>
<span id='myname'> 


<div id='name1'>  작성자</div>
<div id='name2'> ${user} </div>
</span>
<span id='myreiewtext' name='text'><textarea  rows='4' cols='67' placeholder = '리뷰를 남겨주세요!' name='text'  ></textarea> </span>
  
  
  
  
  
  
  

  
 <button colsapn="2" id='reviewbt'>작성</button>
  
  
     
</div>
</form>
