<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script>
/* $(document).ready(function() {
	$('#btLike').on('click', like);
	$('#btDelete').on('click', deleteBoard);
	$('#btUpdate').on('click', updateBoard);
}); */
</script>

</head>
<body>
	<h1>[ ${loginId}님의 글]</h1>
	
	  <table>
	  	<tr>
			 <th>제목</th>
			 <td>${Board.title }</td>
		</tr>
		<tr>
			 <th>내용</th>
			 <td>${Board.contents}</td>
		</tr>
	  </table>



</body>
</html>