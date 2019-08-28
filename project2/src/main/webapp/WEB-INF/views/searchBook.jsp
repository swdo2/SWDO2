<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr align="center">
			<td>
			표지
			</td>
			<td>
			제목
			</td>
			<td>
			가격
			</td>
		</tr>
	<c:forEach var="list" items="${blist}">

		<tr>
			<td>
			<!-- 이미지 -->
			<a href="BookForm?isbn=${list.isbn}"><img src="${list.image}"></a>
			</td>
			<td>
			<!-- 제목 -->
			<a href="BookForm?isbn=${list.isbn}">${list.title}</a>
			</td>
			<td>
			<!-- 가격 -->
			${list.price}
			</td>
		</tr>
			
	</c:forEach>
	</table>
</body>
</html>