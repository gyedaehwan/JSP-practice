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
		�����޴��� �����ּ���.
	<% }
	else if (left.equals("A")) {
	%>
		<b>A</b> �������� ���Խ��ϴ�.
	<%	} else if (left.equals("B"))  {%>
		<b>B</b> �������� ���Խ��ϴ�.
	<% } %>
	
</body>
</html>