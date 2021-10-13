<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<ul>
			<li>관리자</li>
			<li><a href="admin/insertBook">도서입고</a></li>
			<li><a href="admin/searchBook">도서조회</a></li>
			<li><a href="admin/wantList">희망도서 조회</a></li>
			<li><a href="admin/reserveList">예약 조회</a></li>			
			<li><a href="admin/userList">회원조회</a></li>
			<li><a href="admin/brStat">대출/반납 현황</a></li>
			<li><a href="admin/borrowBook">대출</a></li>
			<li><a href="admin/returnBook">반납</a></li>
		</ul>
		
		<br/>
		<ul>
			<li>유저</li>
			<li><a href="user/borrowList">대출 목록</a></li>
			<li><a href="user/reserveBook">대출 예약</a></li>
			<li><a href="user/delayBook">반납 연기</a></li>
			<li><a href="user/searchBook">도서 조회</a></li>
			<li><a href="user/want">희망 도서 신청</a></li>
			<li><a href="common/login">로그인</a></li>
			<li><a href="common/join">회원가입</a></li>
		</ul>
	</div>
</body>
</html>