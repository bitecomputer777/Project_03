<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		#content{
			position:relative;
			left:211px;
			bottom:990px;
			width:800px;
			weight:600px;
			background-color: green;
		}
	
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<body>
		
		<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%@ include file="/navi_bar/left_navi.jsp" %> 
		<div id="content">
				<h2> </h2>
	<table style="width:800px;">
     <tr>
      

       <!--  다음에 추가할 부분 -->

      
       <td width="80%" valign="top">&nbsp;<br>
       
         <table style="width:90%; align:center;">
           <tr>
             <td colspan="2">
              <font color="blue" size="3">공 지 사 항</font><font size="2"> - 글읽기</font></td>
           </tr>
         </table>
       <p>
       <table style=" border:0; width:90%; align:center; cellspacing:0;border-width:1px;border-color:#0066cc;border-style:outset;">
         <tr bgcolor="e3e9ff">
           <td class="title">
             <font size="2" face="돋움">
            		     제목부분
             </font>
           </td>
         </tr>
         <tr>
           <td class="content">
             <p align="right">
             <font size="2" face="돋움">
         	     관리자 /
         	  </font>
         	 <font size="2" face="돋움">2007-1022 / 2번 읽음
         	 </font>
         	 </p>
         	</td>
         </tr>
         <tr>
         	 <td>
            	<p>
           	  내용이 들어가는 부분
           	  </p>
             <!--contents의 내용을 <BR>태그로 처리-->
          	 </td>
         </tr>
       </table>
       </td>
       </tr>
      </table>
		
		</div>
</body>
</html>