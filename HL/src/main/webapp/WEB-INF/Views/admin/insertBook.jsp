<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>도서 입고</title>
		
		
		
</head>
<body>
<div>
<h1>도서 입고</h1>
	<form name="f1" action='/admin/insertBook' method='post' onsubmit="return insert()">
			<div>
			<br/>
			<div id="label">책이름</div>
			<div><input type="text" name ="Book_Title" /></div>
			<div id="label">저자</div>
			<div><input type="text" name ="Book_Auth"/></div>
			<div id="label">출판사</div>
			<div><input type="text" name ="Book_Pub"/></div>
			<div id="label">페이지</div>
			<div><input type="text" name ="Book_Page"/></div>
			<div id="label">출판일(0000-00-00)</div>
			<div><input type="text" name ="Book_Birth"/></div>
			<div id="label">대분류</div>
			<div><input type="text" name ="Book_Big"/></div>
			<div id="label">소분류</div>
			<div><input type="text" name ="Book_Small"/></div>
			<div id="label">ISBN(-제외)</div>
			<div><input type="text" name ="Book_ISBN"/></div>
			</div>
			<br/>
			<button style='background-color: #FFC0CB; color: #ffffff; border: 0; border-radius: 20px; width: 100px; height: 30px;' 
					type='submit'>등록하기</button>	
		</form>
			<button style='background-color: #FFC0CB; color: #ffffff; border: 0; border-radius: 20px; width: 100px; height: 30px;' 
					onClick=location.href='/'>홈으로</button>
						
</div>
</body>

<script>
			function insert() {
				 if (f1.Book_Title.value == "") {
                     alert("책이름을 입력하세요.");
                     return false;
                 }
				 if (f1.Book_Auth.value == "") {
                     alert("저자를 입력하세요.");
                     return false;
                 }
				 if (f1.Book_Pub.value == "") {
                     alert("출판사을 입력하세요.");
                     return false;
                 }
				 if (f1.Book_Page.value == "") {
                     alert("페이지을 입력하세요.");
                     return false;
                 }
				 if (f1.Book_Birth.value == "") {
                     alert("출판일을 입력하세요.");
                     return false;
                 }
				 if (f1.Book_Big.value == "") {
                     alert("대분류을 입력하세요.");
                     return false;
                 }
				 if (f1.Book_Small.value == "") {
                     alert("소분류을 입력하세요.");
                     return false;
                 }
				 if (f1.Book_ISBN.value == "") {
                     alert("ISBN을 입력하세요.");
                     return false;
                 }
				if (!confirm("도서를 등록하시겠습니까?")) {
			            alert("등록을 취소 하셨습니다.");
			            return false;
			        } else {
			            return true;
			        }
			    }
		</script>

</html>