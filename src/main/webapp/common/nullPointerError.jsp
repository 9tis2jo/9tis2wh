<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffff" text="#000000">
	<!-- 타이틀 시작 -->
	<table width="100%" border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center" bgcolor="orange"><b>기본에러 화면 입니다.</b></td>
		</tr>
	</table>
	<br>
	<!-- 에러메세지 -->
	<table width="100%" border="1" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td align="center"><br>
			<br><br><br><br>
			Message: ${exception.message }
			<br><br><br><br>
			<br></td>
		</tr>
	</table>	
</body>
</html>