<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>

 <script>
  $(document).ready(function() {
	$('#btLike').on('click', like); 
	$('#btDelete').on('click', deleteBoard);
	$('#btUpdate').on('click', updateBoard); 
});  
  
  //추천하기
  function like (){
	  $.ajax({
		url : 'like',
		data : {board_num : ${board.board_num}},
		dataType : 'text',
		success : function(n){
			$('#likeDiv').html(n);
		},
		error : function(e) {
			alert("추천 실패");
		}
	  });
  	}
  
  //삭제하기
  function deleteBoard(){
	  
	  if(confirm('삭제하시겠습니꽈?')){
		  location.href = 'delete?board_num=${board.board_num}';
		
	  }
  }
  
  //수정
  function updateBoard(){

	  location.href = 'update?board_num=${board.board_num}';
  }
</script> 

</head>
<body>
	<h1>[ ${loginId}님의 글]</h1>
	
	  <table>
	  	<tr>
			 <th>제목</th>
			 
			 <td>${board.board_title }</td>
		</tr>
		<tr>
			 <th>내용</th>
			 <td>${board.board_contents}</td>
		</tr>
		<tr>
			<th colspan = "2">
				추천수&nbsp;
				<span id = "likeDiv" style = "font-size:30px;">${board.board_like }</span>
				&nbsp;&nbsp;
				<input id = "btLike" type = "button" value = "따봉">
			</th>
		</tr>
	  </table>

	<c:if test = "${sessionScope.loginId == board.person_id}">
		<tr>
			<th colspan = "2" style="height:50px;">
			<input id = "btUpdate" type = "button" value = "수정">
			<input id = "btDelete" type = "button" value = "삭제">
		</tr>	
	</c:if>
</body>
</html>