<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="conn"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:orcl"
	user="jkr"
	password="123456"
/>
<sql:query dataSource="${conn }" var="rs">
	select Max(mnum) as m from member
</sql:query>
<c:set var="num" value="1"/>
<c:forEach var="d" items="${rs.rows }">
	<c:set var="num" value="${d['m']+1 }"/>
</c:forEach>

<sql:update dataSource="${conn }">
	insert into member(mnum,id,pass,email,point,m_level)
	 values(${num },'${param.id }','${param.pw }','${param.email }', '0', 1 )
</sql:update>

<c:redirect url="/"/>

