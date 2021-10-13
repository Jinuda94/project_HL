<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="${root}/js/jquery-3.1.0.min.js"></script>
<script src="${root}/js/booklist.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
	<div>
		<label>���� ��ȸ</label><br/>
			<select id="searchType">
			    <option value="Book_Title">������</option>
			    <option value="Book_Auth">����</option>
			</select>
			<input type="text" id="search">
			<input type="button" value="�˻�" onclick="booksearch()">
	</div>
	<div id= "booklist">
		
	</div>
</body>
</html>