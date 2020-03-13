<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
		#container {
			margin:0 auto;
			max-width: 768px;
			min-width: 460px;
		}
		
		.input_box {
			display: block;
			position: relative;
			width: 100%;
			height: 51px;
			border: solid 1px #dadada;
			border-top-color: rgb(218, 218, 218);
   			border-top-style: solid;
   			border-top-width: 1px;
 			border-right-color: rgb(218, 218, 218);
  			border-right-style: solid;
  		 	border-right-width: 1px;
 	   		border-bottom-color: rgb(218, 218, 218);
 			border-bottom-style: solid;
 		    border-bottom-width: 1px;
   			border-left-color: rgb(218, 218, 218);
   			border-left-style: solid;
  		    border-left-width: 1px;
  		    border-image-source: initial;
  		    border-image-slice: initial;
 		    border-image-width: initial;
  		    border-image-outset: initial;
  		    border-image-repeat: initial;
			padding: 10px 14px 10px 14px;
			background: #fff;
			box-sizing: border-box;
			vertical-align: top;
		}
</style>

<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	
	<h1>회원가입</h1>
	
	<form action="signin" method="post">
	
	<!-- Container -->
	<div id="container" >
		<div class="join_ID">
			<h3 class="enterID">ID
			</h3> 
			<span class="input_box">
				<input type="text" name="ID">
			</span>
		</div>
		<br>
		<div class="join_PW">
			<h3>
			PW
			</h3>
			<span class="input_box">
		 		<input type="password" name="PW">
		 	</span>
		</div>
		<br>
		<div class="join_name">
			<h3>
			이름
			</h3>
			<span class="input_box">
				<input type="text" name="name">
			</span>
		</div>
		<br>
		<div class="join_gender">
			<h3>
			성별
			</h3>
			남성<input type="radio"  name="gender" value="man" checked="checked"> 
		 	여성<input type="radio"  name="gender" value="woman">
		 		
		</div>
		<input type="submit" value="SIGNIN">
	</div>
	</form>
</body>
</html>