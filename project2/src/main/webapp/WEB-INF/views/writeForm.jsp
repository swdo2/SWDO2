<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script src="resources/js/jquery-3.3.1.min.js"></script>

<script>
	
   <c:set var="path" value="${pageContext.request.contextPath}" />
   console.log("${pageContext.request.contextPath}")
   
 function formCheck(){
	var title = document.getElementById('board_title');
	var contents = document.getElementById('board_contents');
	
	if(title.value == ''){
		alert('제목은 필수 입력 사항입니다.');
		return false;
	}
	
	
	/* if(contents.value == ''){
		alert('내용은 필수 입력 사항입니다.')
		return false;
	}
	 */
		return true;
	
 }
 
 function added() {
		var tbl = document.getElementById("add");
		var row = tbl.insertRow(tbl.rows.length);
		
		var cellText1 = row.insertCell(0);
		var cellText2 = row.insertCell(1);
		
		cellText2.innerHTML = "<input type = 'file' name = 'upload'>"	
	}

</script>
<script src = "resources/ckeditor/ckeditor.js"></script>

<script>
   console.log('${path}');
</script>

 <script>
    window.onload = function(){
       ck = CKEDITOR.replace("board_contents",{
    	   filebrowserUploadUrl: "${path}/imageUpload"
    	   
       });
    };
    </script>
    
    
</head>
<body>
	<h1>[board 글쓰기]</h1>
	
		<form id = "writeForm" action = "writeForm" method = "post" onsubmit = "return formCheck();">
			<table>
				<tr>
					<th>제목</th>
					<td>
						<input placeholder = "제목을 입력하시오." type = "text" name = "board_title" id = "board_title" style = "width:400px;">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea placeholder = "글 내용을 입력하시오."cols="2" name = "board_contents" id = "board_contents" style ="width:400px;height:200px;resize:none;"></textarea>
						
					</td>
				</tr>	
				<tr>
					<td colspan ="2">
						<input type = "submit" value = "저장" />
					</td>
				</tr>
			</table>
		</form>
</body>
</html>