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
		alert('���� ����� �Ϸ� �Ǿ����ϴ�.');
		location.replace('/admin/insertBook');
	}
	else{
		alert('���� ����� �����Ͽ����ϴ�.\n �ٽ� ����� ��Ź�帳�ϴ�. ');
		location.replace('/admin/insertBook');
	}
</script>
<body>
</body>
</html>