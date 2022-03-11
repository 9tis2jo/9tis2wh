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
	String mID = request.getParameter("mID");
	String mNAME = request.getParameter("mNAME");
	String mBIR = request.getParameter("mBIR");
	String mPHONE = request.getParameter("mPHONE");
	String mEMAIL = request.getParameter("mEMAIL");
	String mPOST = request.getParameter("mPOST");
	String mADDR = request.getParameter("mADDR");
	
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
	String sql = "update member set mID = ?, mNAME = ? , mBIR = ? , "
			+ "mPHONE = ? , mEMAIL = ? , mPOST = ? , mADDR = ?";
	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, mID);
	pstmt.setString(2, mNAME);
	pstmt.setString(3, mBIR);
	pstmt.setString(4, mPHONE);
	pstmt.setString(5, mEMAIL);
	pstmt.setString(6, mPOST);
	pstmt.setString(7, mADDR);
	
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