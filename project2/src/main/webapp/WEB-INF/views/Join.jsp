<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#person_id").on('keyup', function() {

	 		// id = "id_reg" / name = "userId"
	 		var person_id = $('#person_id').val();
	 		$.ajax({ 
	 			url : 'idCheck',
	 			type : 'get',
	 			data : {'person_id' : person_id},
	 			dataType : 'text',
	 			success : function(data){
	 				// 1일때 사용가능
	 				// 0 사용 불가
	 				console.log("0 = 이미 등록된 아이디 / 1 = 사용 가능한 ID : "+data);
	 				console.log(data)
					if(data == 1){
						
					$(".id_check1").text("사용가능한 아이디입니다.");
					$(".id_check1").css('color','blue');
					
	
						
					} else{
						$(".id_Check1").text("이미 등록 된 아이디입니다.");
						$(".id_check1").css('color','red');
					}
				}, error : function(){
						console.log("실패");
						alert('다시 시도 해 주세요')
				}
	 			
	 		})
		})
		
	});
	
	function formCheck(){
		var id = document.getElementById('person_id');
		var password = document.getElementById('person_password');
		var name = document.getElementById('person_name');
		var email = document.getElementById('person_email');
		var pwck = document.getElementById('person_passwordcheck');

		 
		if(id.value.length < 5 || id.value.length > 20){
			alert("ID는 5~20 글자 내외로 입력하세요.");
			console.log(password);	
			return false;
		}
		
		
	 	if(password.value.length < 5 || password.value.length > 20){
			alert("PASSWORD는 5~20 글자 내외로 입력하세요.");
			return false;
	 	}
	 	
	 	  if(password.value != pwck.value){
			alert('비밀번호가 틀렸습니다. 다시 입력해시발');
			return false;
		}  
	 	
	 	if(name.value == ''){
			alert("이름은 필수 입력 사항입니다.");
			return false;
		}
		
	 	if(email.value == ''){
			alert("e-mail은 필수 입력 사항입니다.");
			return false;
			
		}
	 	 
	 	
	 	return true;
	}
</script>
</head>
<body>
	<h1>[本-E 회원가입]</h1>
	
	<form id = "joinform" action="Join" method = "post" onsubmit="return formCheck();">
		 <table>
			<tr>
				<td>ID</td> 
				<td>
					<input type = "text" name = "person_id" id= "person_id">
					<div class = "id_check1"></div>
				</td>
			</tr>  
			<tr>
				<td>비밀번호</td>
				<td>
					<input type = "password" name="person_password" id="person_password">
				</td>
			</tr>
			  <tr>
			  <td>비밀번호 확인</td>
                    <td>
                        <input type="password" name="person_passwordcheck" id = "person_passwordcheck">
                    </td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input type = "text" name = "person_name" id = "person_name">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
                    <td>
                        <input type="text" name="person_email" id = "person_email">@
                        <select name="email">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                    
                        </select>
                    </td>
			</tr>
			<tr>
			 <td>휴대전화</td>
                    <td>
                        <input type="text" name="person_phone" id = "person_phone" placeholder="  -를 빼고 입력해 주세요." ><br>
                    </td>
			</tr>

			<tr>
				<td colspan = "2" class = "center">
				<input type = "submit" value = "가입" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>