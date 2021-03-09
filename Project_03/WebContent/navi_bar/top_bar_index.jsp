<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<style>
		*{padding:0; margin:0;}
   a{text-decoration:none;}
   ul,li{list-style:none;text-align:center;}
   #title_navi{width:100%; height:40px; padding-top:20px;  background-color:skyblue;}
   
   #log{
   
   	float:right;
   	
   }
   .title{text-align:center; padding:22px;}
   .content{background-color:#ffc0cc; padding:17px; height:300px;}
	
	.log_box{
		position:  relative;
		padding: 10px 24px;
		background-color:aqua;
		border:2px solid buttonshadow ; 
	
	}
	</style>

<body>
	
		<div>
			<div id="title_navi"> 
				
				<div id="log">
				
						<span class="log_box">관리자</span>
						<span class="log_box">adimin</span>
						<span class="log_box">home</span>
						<span class="log_box">logout</span>
			
				</div>
			
			</div>
		</div>

</body>
</html>