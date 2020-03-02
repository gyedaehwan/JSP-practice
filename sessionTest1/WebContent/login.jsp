<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
</head>
<body>

	<%
		if( session.getAttribute("memberID") != null ){
			System.out.println(session);
			System.out.println("Already exist session");
			
			response.sendRedirect("loginOk.jsp");
		}
			
	%>


	<form action="LoginCon" method="post">
	
	ID <input type="text" name="mID"> <br>
	PW <input type="password" name="mPW"> <br>
	<input type="submit" value="LOGIN">
	
	</form>

</body>
</html>