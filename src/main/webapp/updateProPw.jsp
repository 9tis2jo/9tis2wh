<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
<%
	// POST 방식의 한글처리
	request.setCharacterEncoding("UTF-8");
	
	// 파라미터 정보 가져오기
	String mPW = request.getParameter("mPW");
	
	
	// JDBC 참조 변수 준비
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "teamproject", pw = "1234";
	
	// 1) JDBC 드라이버 로딩
	Class.forName("oracle.jdbc.OracleDriver");
	
	// 2) DB연결(DB url, DB id, DB pw)
	con = DriverManager.getConnection(url, user, pw);
	
	// 3) SQL문 준비
	String sql = "update member set mPW = ?";
	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, mPW);
	
	// 4) 실행
	int rowCount = pstmt.executeUpdate();
	
	// JDBC 자원 닫기
	pstmt.close();
	con.close();
%>
<script>
	alert("변경 완료");
	location.href = 'myinfo.jsp';
</script>
</body>
</html>