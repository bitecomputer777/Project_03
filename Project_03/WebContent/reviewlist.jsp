<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel='stylesheet' type='text/css' href= 'item.css'>

<c:set var ="pagesize" value="10"/>
<c:set var ="grpsize" value="5"/>
<c:set var ="pagenum" value="1"/>
<c:set var ="pagecount" value="1"/> 
<c:set var ="skiprow" value="1"/>
<c:set var ="dbcount" value="${list.size()}"/>

<!--  총 페이지 수 계산-->
<c:choose>
<c:when test="${dbcount % pagesize ==0}">
 <c:set var="pagecount" value="${ dbcount/pagesize}"/>
</c:when> 
 <c:otherwise>
 <c:set var="pagecount" value="${dbcount/pagesize+1}"/>
</c:otherwise> 
</c:choose>
 
<!--  요청 페이지 번호 구하기 -->
<c:set var ="reqpage" value="${param.pagenum}"/>
<c:choose>
 <c:when test="${ reqpage == null}">
  <c:set var = "reqpage" value="1"/>
  </c:when>
 <c:otherwise>  
<c:set var = "skiprow" value="${(reqpage-1)*pagesize+1}"/>
</c:otherwise> 
</c:choose> 


<div id=viup>
<span id='vinum' >번호</span>
<span id='viname'>작성자</span>  
<span id='vidate' >작성날</span>
<span id='vitext' >내용</span>
</div>



<div class='youreview'>

<c:if test = "${list == null }">
<span><td colspan ='$'> 등록 글이 없습니다.</td></span>
</c:if>
<c:if test="${list!= null}">
<!-- 현제 페이지에 해당하는 게시물만 출력 -->

<c:set var='end' value="${skiprow+9 }"/>
<c:if test="${end >  dbcount}">
<c:set var="end" value="${dbcount }"/>
</c:if>
<c:forEach var = "rs" items="${list }" begin ="${skiprow-1}" end="${end -1}" step="1">






<table id='werivew'>
<tr>
<td id='vinum2' >${rs.num }</td>  <%-- get, set이 있기때문에 ob_num 사용가능
 ${rs. 은 get, set이 되어있는 이름으로 해야함.}   --%> 
<td  id='viname2'>${rs.id }</td>
<td  id='vidate2'>${rs.date }</td>
<td id='vitext2'>${rs.text }</td>
</tr>
</table>

</c:forEach>

</c:if>
</div>



<div colspan='5'>
 <c:set var="grpchk" value="${(reqpage-1)% grpsize}"/>
 <c:set var="startpage" value="${(reqpage-grpchk) }"/>
 <c:if test ="${(startpage - grpsize) > 0}">
 <a href= 'review.it?num=${param.num}&pagenum=${(startpage-1)}'>[이전]</a> <!--이전 클릭하면 넘어감-->
 </c:if>
 <c:forEach var="i" begin="${startpage}" end="${(startpage+grpsize)-1}" step= "1">
<c:choose>
<c:when test= "${i==reqpage }">
[${i }]
</c:when>
<c:when test="${i > pagecount }">
<c:set var="i" value="${(startpage+grpsize) - 1}"/>
</c:when>
<c:otherwise>
<a href ='review.it?num=${param.num}&pagenum=${i}'>[${i}]</a>    <%--  --%>
</c:otherwise>
</c:choose>
</c:forEach>
</div>
