<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script src="resources/js/jquery-3.3.1.min.js"></script> -->
</head>
<body>
	<h1>[Blog 글쓰기]</h1>
	
		<form id = "writeForm" action = "writeForm" method = "post">
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