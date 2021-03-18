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
<span id='vidate'>작성날</span>
<span id='vitext'>내용</span>
<div>



<div id='review'>

<div id='weview'>

<div class='youreview'>
<span class='youname'></span>
<span] id='youreiewtext'></span>
</div>

    

<tr >


</tr>
<c:if test = "${list == null }">
<tr>
<td colspan ='$'> 등록 글이 없습니다.</td>
</tr>
</c:if>
<c:if test="${list!= null}">






<!-- 현제 페이지에 해당하는 게시물만 출력 -->

<c:set var='end' value="${skiprow+9 }"/>
<c:if test="${end >  dbcount}">
<c:set var="end" value="${dbcount }"/>
</c:if>
<c:forEach var = "rs" items="${list }" begin ="${skiprow-1}" end="${end -1}" step="1">





<tr>
<td>${rs.ob_num }</td>  <%-- get, set이 있기때문에 ob_num 사용가능--%> 
<td>${rs.ob_writer }</td>
<td>${rs.ob_date }</td>

</tr>
</c:forEach>
</c:if>
<tr>
<td colspan='5'>
 <c:set var="grpchk" value="${(reqpage-1)% grpsize}"/>
 <c:set var="startpage" value="${(reqpage-grpchk) }"/>
 <c:if test ="${(startpage - grpsize) > 0}">
 <a href= 'obtain.pic?pagenum= ${(startpage-1)}'>[이전]</a> <!--이전 클릭하면 넘어감-->
 </c:if>
 <c:forEach var="i" begin="${ startpage}"  end="${(startpage+grpsize)-1}" step= "1">
<c:choose>
<c:when test= "${i==reqpage }">
[${i }]
</c:when>
<c:when test="${i > pagecount }">
<c:set var="i" value="${(startpage+grpsize) - 1}"/>
</c:when>
<c:otherwise>
<a href ='obtain.pic?pagenum=${i}'>[${i}]</a>
</c:otherwise>
</c:choose>
</c:forEach>


</td>
</tr>
</table>
</div>
