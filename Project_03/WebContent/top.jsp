<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
    
    <ul class='usermenu'>
    	
    	<li class='user_menu login'>
    		<div>
    		${sessionScope.user}
    		<c:if test="${user == null }" >
    		<a href="login.do">로그인</a>
    		</c:if>
    		<c:if test="${user != null }" >
    		<a href="login.do">로그아웃</a>
    		</c:if>
    		</div>
    	</li>
    	<li class='user_menu mypage'>
    	
    	<c:if test="${user != null }" >
    		<c:set var =" grd" value="${user  }"></c:set>
    		
    		<c:choose>
    			<c:when test="${user == 1}">
    				<a href=''>MYPAGE</a>
    			</c:when>
    			<c:when test="${user  }">
    			</c:when>
    		</c:choose>
    		</c:if>
    		
    	</li>
    	<li class='user_menu lst'>
    		<a href=''>고객센터</a>
    	</li>
    	
    </ul>
