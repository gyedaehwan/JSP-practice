<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginOK</title>
</head>
<body>
	<h1>LOGIN COMPLETE</h1>
		

	<%
		out.print("memberID = " + session.getAttribute("memberID") +"<br>");
		System.out.println("Login Complete");
	%>
	
	<form action="Logout" method="post">
	
		<input type="submit" value="LOGOUT">
	
	</form>

</body>
</html>