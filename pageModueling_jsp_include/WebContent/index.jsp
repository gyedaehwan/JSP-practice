<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> ���ȯ�� ������ ����</h1>

	<table width="100%">
	<tr>
		<td colspan="2">	�Ӹ�	</td>
	</tr>
	<tr>
		<td width="30%" valign="top">
			���� �޴�
			<ul>
				<li>	 <a href="left1">1��° ����</a> 	</li>
				<li>	 <a href="left2">2��° ����</a> 	</li>
			</ul>
		</td>
		
		<td>
		<jsp:include page="main.jsp" />
		</td>
	</tr>
	
	<tr>
		<td>	�� 	</td>
	</tr>
	
</table>
</body>
</html>