<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<style>
	#login{
		margin:5%;
		padding:5%;
	}
	.input_id .input_pw {
        text-align: center;
        margin: 0 auto;
		width: 250px;
	}
	.input_box{
		right: 10%;
		border: 1px groove #000;
		position: relative;
		width:80%;
	}
	
	.submit{
	position:absolute;
	float:right;
	width: 20%;
	top:17%;
	left:12%;
	

	}
	.submit_login{
	background-color:#03c75a;
	font-size:10px;
	height:50px;

	}

</style>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 로그인 기능  JSTL , EL -->
	
	
	<div id="login">
		<form action="login" method="post">
		<div class="input_box">
			<span class="input_id">
			<input type="text" name="memberID" size="7%" placeholder="아이디">
			</span>
		</div>
			<div class="submit" >
			<input type="submit" value="LOGIN" class="submit_login">
			</div>
		
		<div class="input_box">
			<span class="input_pw">
			<input type="password" name="memberPW" size="7%" placeholder="비밀번호">
			</span>
		</div>

		</form>
	
		<form action="signin.jsp" method="post">
			<span class="submit_signin">
			<input type="submit" value="SIGNIN">
			</span>
		</form>

	</div>
</body>
</html>