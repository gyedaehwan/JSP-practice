<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%String left = (String)session.getAttribute("type"); 
		if (left==null) {%>
		좌측메뉴를 눌러주세요.
	<% }
	else if (left.equals("A")) {
	%>
		<b>A</b> 페이지에 들어왔습니다.
	<%	} else if (left.equals("B"))  {%>
		<b>B</b> 페이지에 들어왔습니다.
	<% } %>
	
</body>
</html>