<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
	.welcome{
		font-size:13px;
	}
</style>

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<div class="welcome">
		<%=session.getAttribute("ID")%>님 환영합니다!
		<form action="logout" method="post">
			<input type="submit" value="LOGOUT">
		</form>
		</div>
</body>
</html>