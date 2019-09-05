<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function() {
	
	$('#btUpdate').on('click', updateBoard);
});

	function formCheck(){
		var title = document.getElementById('board_title');
		var contents = document.getElementById('board_contents');
		
		if(title.value == ''){
			alert('제목은 필수 사항입니다.');
			return false;
		}
		if(contents.value == ''){
			alert('내용은 필수 사항입니다.');
			return false;
		}
	}
</script>
</head>
<body>
		<h1>[board 수정]</h1>
		
			<form id = "updateForm" action="update" method = "post" onsubmit = "return formCheck();">
				
				<input type = "hidden" name = "board_num" value="${board.board_num }">
				
			
				<table>
					<tr>
						<th>제목</th>
						<td>
							<input type = "text" name = "board_title" id = "board_title" style = "width:400px;" value = "${board.board_title }">
						</td>
					</tr>
					
					<tr>
						<th>내용</th>
						<td>
							<textarea name = "board_contents" id= "board_contents" style="width:400px;height:200px;resize:none;">${board.board_contents }</textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
						<input type = "submit"value ="수정하기">
					</tr>
				</table>
			
			</form>
</body>
</html>