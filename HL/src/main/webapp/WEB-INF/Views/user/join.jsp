<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${root}/js/jquery-3.1.0.min.js"></script>
<script src="${root}/js/signUp.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
	<form method="post" action="join" name="joinform" onsubmit="return createFrom(this);">
		<input type="text" name="User_ID" id="joinUserID" placeholder="아이디를 입력해주세요." value="testid"><br/>
		<p id="checkMessage0" style="color:red;font-weight:bold"></p>
		<button type="button" onclick="useridcheck()" >중복확인</button><br/>
		<input type="hidden" id="idflag" value="0">
		<input type="password" name="User_PW" id="pass" placeholder="비밀번호를 입력해주세요." value="testpw123"><br/>
		<p id="checkMessage1" style="color:red;font-weight:bold"></p>
		<input type="password" name="User_PWchk" id="passchk" placeholder="비밀번호확인." value="testpw123"><br/>
		<p id="checkMessage2" style="color:red;font-weight:bold"></p>
		<input type="text" name="User_Name" placeholder="이름을 입력해주세요." value="testname"><br/>
		<input type="number" name="User_Birth" placeholder="생년월일을 입력해주세요. ex)932411" value="930815"><br/>
		<input type="email" name="User_Email" id="ema" placeholder="이메일을 입력해주세요." value="ttkdl12345@naver.com"><br/>
		<input type="submit" value="전송"><br/>
	</form>
</body>
</html>