<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> 계대환의 페이지 연습</h1>

	<table width="100%">
	<tr>
		<td colspan="2">	머리	</td>
	</tr>
	<tr>
		<td width="30%" valign="top">
			좌측 메뉴
			<ul>
				<li>	 <a href="left1">1번째 폴더</a> 	</li>
				<li>	 <a href="left2">2번째 폴더</a> 	</li>
			</ul>
		</td>
		
		<td>
		<jsp:include page="main.jsp" />
		</td>
	</tr>
	
	<tr>
		<td>	발 	</td>
	</tr>
	
</table>
</body>
</html>