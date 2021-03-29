<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%response.setCharacterEncoding("euc-kr"); %>

<sql:setDataSource var="conn"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:orcl"
	user="jin95"
	password="123456"
/>

<sql:query var="rs" dataSource="${conn }">
	select id, pass from member where id=? and pass=?
	<sql:param>${param.id }</sql:param>
	<sql:param>${param.pw }</sql:param>
</sql:query>


<c:forEach var="data" items="${rs.rows}">
	<c:set var="user" value="${param.id }" scope="session"/>
	<c:redirect url="/" />
</c:forEach>
<c:if test="${sessionScope.user==null}">
	<script>
	
		alert("아이디 또는 비밀번호가 잘못되었습니다.");
		history.back();
	</script>

	
</c:if>

