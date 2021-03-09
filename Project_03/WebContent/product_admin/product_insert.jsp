<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#content{
			position:relative;
			left:211px;
			bottom:990px;
			width:800px;
			height:600px;
			background-color: green;
		}
		#img_pre{
			position:relative;
			width:300px;
			height:400px;
			background-color: red;
		}
		#left_insert{
			position: relative;
			left:400px;
			bottom:480px;
			width:450px;
			height:500px;
			background-color:white;
		
		}
		#left_insert > #title{
			position:relative;
			top:40px;
			border:3px  dotted black;
			padding:30px 34px;
			
			
			
		}
		#left_insert > #tag{
			position:relative;
			top:100px;
		
			padding:0 24px;
			
			border:3px  dotted black;
		}
		#left_insert > #sub_area{
			position:relative;
			top:130px;
			
		
		}
		#left_insert > #button_tab{
			position:relative;
			top:150px;
			width:350px;
			height:250px;
			border:3px dotted black;
			
		
		}
		#button_tab tr td{
			margin:0 auto;
		}
		.img.wrap{
			position:relative;
			
			
			
		}
		.img_warp img{
		
			border: 2px dotted black;
			position:relative;
			left:10px;
			top:10px;
			width:350px;
			height:500px;
			
		}
		#img_input{
			position: relative;
			bottom:400px;
		}
		
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		var sel_file;
		$(document).ready(function(){
			$("#input_img").on("change",handleImgFileSelect);
		});
		function handleImgFileSelect(e){
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			filesArr.forEach(function(f){
				if(!f.type.match("image.*")){
					alert("확장자는 이미지 확장자만 가능 합니다");
					return;
				}
				sel_file = f;
				var reader= new FileReader();
				reader.onload = function(e){
					$("#img").attr("src",e.target.result);
				}
				reader.readAsDataURL(f);
			});
			
		}
	</script>
</head>
<body>
	<%@ include file="/navi_bar/top_bar_index.jsp" %>
		<%@ include file="/navi_bar/left_navi.jsp" %> 
		
			<div id="content">
				<h2> </h2>
				<div>
					<div class="img_warp">
					<img id="img" />
					</div>
					
						
						<div id="left_insert">
							<span id="title">TITLE<input type="text"></span>
							<br>
							<span id="tag">
									종류1<input type="checkbox">
									종류1<input type="checkbox">
									종류1<input type="checkbox">
									종류1<input type="checkbox">
									종류1<input type="checkbox">
							</span>
							<br>
							
								<textarea name="content" cols="40" rows="8" id="sub_area">
								
								</textarea>
							
							<br>
							
							
								<table id="button_tab">
								
								
								<tr><td><button id="sale">구매</button> <button id="bag">장바구니</button></td></tr>
								
								</table>
							
					</div>
			</div>
			<div id="img_input">
			
		
			<input type="file" id="input_img"/>
			</div>
		</div>
		
		
			
		

</body>
</html>