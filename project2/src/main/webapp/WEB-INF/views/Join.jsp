<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<script>

//가입 폼 5~20자 이내로 쓰는 기능
function formCheck(){
	var id = document.getElementById('person_id');
	var password = document.getElementById('person_password');
	var name = document.getElementById('person_name');
	
	console.log(id);
	console.log(password);
	
	
	if(id.value.length < 5 || id.value.length > 20){
		alert("ID는 5~20 글자 내외로 입력하세요.");
		
		return false;
	}
	
 	/* if(password.value.length < 5 || password.value.length > 20){
		alert("PASSWORD는 5~20 글자 내외로 입력하세요.");
		return false;
	} 
	
	if(name.value == ''){
		alert("이름은 필수 입력 사항입니다.");
		return false;
	}
	return true; */
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
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type = "password" name="person_password" id="person_passowrd">
				</td>
			</tr>
			 <!-- <tr>
			  <td id="password">비밀번호 확인</td>
                    <td>
                        <input type="password" name="password">
                    </td>
			</tr> -->
			<tr>
				<td>이름</td>
				<td>
					<input type = "text" name = "person_name" id = "person_name">
				</td>
			</tr>
			<tr>
				<td id="email">이메일</td>
                    <td>
                        <input type="text" name="person_email" maxlength="30">@
                        <select name="email">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                    
                        </select>
                    </td>
			</tr>
			<tr>
			 <td id="phone">휴대전화</td>
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