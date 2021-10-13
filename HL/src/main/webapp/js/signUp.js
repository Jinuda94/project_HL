/**
 * 
 */
$(function(){
	$("#joinUserID").on("propertychange change keyup paste input", function() {
		 const idReg = /^[A-za-z]+[A-za-z0-9]{5,14}$/g;
		 $("#idflag").val("0");
		
		 if (!idReg.test($("#joinUserID").val())) {
		    $("#checkMessage0").html("아이디는 영문자로 시작하는 6~15자 영문자 또는 숫자이어야 합니다.");
		 } else {
		    $("#checkMessage0").html("");
		 }
	});
	
	$("#pass").on("propertychange change keyup paste input", function() {
		let password = $('#pass').val();

		if (password.length < 8) {
			$("#checkMessage1").html("비밀번호는 8글자 이상이여야 합니다.");
		}
		else {
			$("#checkMessage1").html("");
		}
	});

	$("#passchk, #pass").on("propertychange change keyup paste input", function() {
		let password = $('#pass').val(); /* 패스워드와 패스워드 확인 부분 가져오기 */
		let passwordcheck = $('#passchk').val();
		if (password == passwordcheck) {
			$("#checkMessage2").html("");
		}
		else {
			$("#checkMessage2").html("비밀번호가 일치하지 않습니다.");
		}
	});
}) 


function useridcheck() {
	const idReg = /^[A-za-z]+[A-za-z0-9]{5,14}$/g;
	//const idcon = $("#joinUserID").val();
	//console.log(idcon);
	
	if (!idReg.test($("#joinUserID").val())) {
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '아이디 요구조건을 \n만족시킨 후 \n중복검사해주세요.',
			});
		});

	} else {
		$.ajax({
			url: "useridcheck",
			type: "post",
			data: { User_ID: $("#joinUserID").val() },
			success: function(result) {
				if (result == 1) {
					$().ready(function() {
						Swal.fire({
							icon: 'warning',
							title: '중복 아이디입니다.',
						});
					});
				} else {
					$().ready(function() {
						Swal.fire({
							icon: 'success',
							title: '사용가능한 아이디 입니다.',
						});
					});
					
					$("#idflag").val("1");
				
				}
			}
		})
	}
}
	
function createFrom(obj){
	const email_chk = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	
	if($("#idflag").val() == "0"){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '아이디 중복검사를 한 후 \n가입가능합니다.',
			});
		});
		obj.User_ID.focus();
		return false;
	}
	
	if(obj.User_PW.value ==""){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '비밀번호를 반드시 입력하세요.',
			});
		});
		obj.User_PW.focus();
		return false;
	}
	
	if(obj.User_PW.value.length < 8){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '비밀번호는 8글자 이상으로 만들어주세요.',
			});
		});
		obj.User_PW.focus();
		return false;
	}
	
	if(obj.User_PWchk.value ==""){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '비밀번호 확인란에 입력해주세요.',
			});
		});
		obj.User_PWchk.focus();
		return false;
	}
	
	if(obj.User_PW.value != obj.User_PWchk.value){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '입력하신 비밀번호가 같지 않습니다.',
			});
		});
		obj.User_PWchk.focus();
		return false;
	}
	
	if(obj.User_Name.value ==""){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '이름을 반드시 입력하세요.',
			});
		});
		obj.User_Name.focus();
		return false;
	}
	
	if(obj.User_Birth.value.length != 6){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '생년월일을 다시 입력하세요.',
			});
		});
		obj.User_Birth.focus();
		return false;
	}
	

	if($("#ema").val() == '' || !email_chk.test($("#ema").val())){
		$().ready(function() {
			Swal.fire({
				icon: 'warning',
				title: '올바른 이메일을 입력하세요.',
			});
		});
		obj.User_Email.focus();
		return false;
	}
	

}





	     