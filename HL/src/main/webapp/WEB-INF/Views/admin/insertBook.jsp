<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �԰�</title>
		
		
		
</head>
<body>
<div>
<h1>���� �԰�</h1>
	<form name="f1" action='/admin/insertBook' method='post' onsubmit="return insert()">
			<div>
			<br/>
			<div id="label">å�̸�</div>
			<div><input type="text" name ="Book_Title" /></div>
			<div id="label">����</div>
			<div><input type="text" name ="Book_Auth"/></div>
			<div id="label">���ǻ�</div>
			<div><input type="text" name ="Book_Pub"/></div>
			<div id="label">������</div>
			<div><input type="text" name ="Book_Page"/></div>
			<div id="label">������(0000-00-00)</div>
			<div><input type="text" name ="Book_Birth"/></div>
			<div id="label">��з�</div>
			<div><input type="text" name ="Book_Big"/></div>
			<div id="label">�Һз�</div>
			<div><input type="text" name ="Book_Small"/></div>
			<div id="label">ISBN(-����)</div>
			<div><input type="text" name ="Book_ISBN"/></div>
			</div>
			<br/>
			<button style='background-color: #FFC0CB; color: #ffffff; border: 0; border-radius: 20px; width: 100px; height: 30px;' 
					type='submit'>����ϱ�</button>	
		</form>
			<button style='background-color: #FFC0CB; color: #ffffff; border: 0; border-radius: 20px; width: 100px; height: 30px;' 
					onClick=location.href='/'>Ȩ����</button>
						
</div>
</body>

<script>
			function insert() {
				 if (f1.Book_Title.value == "") {
                     alert("å�̸��� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_Auth.value == "") {
                     alert("���ڸ� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_Pub.value == "") {
                     alert("���ǻ��� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_Page.value == "") {
                     alert("�������� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_Birth.value == "") {
                     alert("�������� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_Big.value == "") {
                     alert("��з��� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_Small.value == "") {
                     alert("�Һз��� �Է��ϼ���.");
                     return false;
                 }
				 if (f1.Book_ISBN.value == "") {
                     alert("ISBN�� �Է��ϼ���.");
                     return false;
                 }
				if (!confirm("������ ����Ͻðڽ��ϱ�?")) {
			            alert("����� ��� �ϼ̽��ϴ�.");
			            return false;
			        } else {
			            return true;
			        }
			    }
		</script>

</html>