<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
var result = '${result}';
	if(result === "sucess"){
		alert('도서 등록이 완료 되었습니다.');
		location.replace('/admin/insertBook');
	}
	else{
		alert('도서 등록이 실패하였습니다.\n 다시 등록을 부탁드립니다. ');
		location.replace('/admin/insertBook');
	}
</script>
<body>
</body>
</html>