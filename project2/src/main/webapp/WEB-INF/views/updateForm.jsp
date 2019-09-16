<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" href="./assets/images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="./viewbook/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/bookblock.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/component.css" />
	<link rel="stylesheet" type="text/css" href="./readFolder/style3.css" />
	<link href="./searchBook/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<title>Write</title>
 	<script src="resources/js/jquery-3.3.1.min.js"></script>
 	
<style> 	
 /* 전체 쉐도우 */

header #header-bar>.row,
#main .menu-wrapper,
#main #main-content>div.frame {
  box-shadow: 3px 0px 10px rgba(0, 0, 0, 0.2);
}

/* 로고밑 NAV bar */

header #header-bar>.row {
  border-top: 4px solid  #F17F42;
  border-right: none;
  border-bottom: none;
}

/* 헤더 배너 */

header .row>div:nth-child(1)>a {
  display: block;
  width: 145px;
  height: 50px;
  background: url(https://upload.tgd.kr/20190521/93f0900191cf2808d62cfdea5d2d9908.png) no-repeat;
  background-size: auto 50px;
}

header .row>div:nth-child(1)>a>img {
  display: none;
	
	filter: grayscale(100%);
  opacity: 0.8;
}

/* 검색폼 보더 */

header #right-search-form>input[type='text'] {
  border: 3px solid #FFEEE4;
}

/* 트게더 전체메뉴 / 유용한링크 / 트위치 스케쥴 */

#main .menu-wrapper>.header {
  background:  #F17F42;
}

.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  color: white;
}

.fa-square:before {
  color: #FFEEE4;
}

header #header-bar>.row,
#main .menu-wrapper,
#main #main-content>div.frame {
  border-right: none;
  border-bottom: none;
}

#main .menu-wrapper {
  border: none;
}

/* 헤더 검색 버튼 */

header #right-search-form>#right-search-btn {
  color: #FFEEE4;
}

/* 헤더 [광고]배경색 */

header #header-bar #header-top-notice strong.notice-badge {
  background: #CE6D39;
}

/* fa색상 */

header #header-bar .fa {
  color: #FFEEE4;
}

/* 스트리머 게시판 상단 정보 글씨색상 */

#board-info #board-info-bottom a {
  color: #CE6D39;
}

/* 좌측메뉴 숏컷링크 글씨 색상 */

#main .menu-wrapper>a>em {
  color: #FFEEE4;
}

/* 좌측메뉴 메뉴사이의 공간 색상 */

#main .menu-wrapper .spacer {
  background: #FFEEE4;
  height: 0.15em;
}

/* 게시글 관련부분 */

#article-list>.article-list-row>.item>.list-title>.list-writer>span {
  width: 120px !important;
}

#article-list #article-list-category {
  border-top: 2px solid #CE6D39;
  background: white;
}

#article-list #article-list-category>a {
  background: white;
}

#article-list>.article-list-row>.item>.list-header>span {
  background-color: #CE6D39;
}

#article-list>.article-list-row>.item>.list-title>small.comment-count {
  color: #CE6D39;
}

#article-list>.article-list-row>.item>.list-title>.list-writer.logged>span {
  color: #CE6D39;
}

.pagination>.active>a,
.pagination>.active>a:focus,
.pagination>.active>a:hover,
.pagination>.active>span,
.pagination>.active>span:focus,
.pagination>.active>span:hover {
  background-color: #CE6D39;
  border-color: #CE6D39;
}

.pagination>li>a:focus,
.pagination>li>a:hover,
.pagination>li>span:focus,
.pagination>li>span:hover {
  color: #CE6D39;
}

.pagination>li>a,
.pagination>li>span {
  color: #CE6D39;
}

#article-content-wrapper>.header {
  border-top: 2px solid #CE6D39;
}

#article-reply-area #reply-real-area .reply>.reply-header>.reply-writer.logged,
#article-reply-area #reply-best-area .reply>.reply-header>.reply-writer.logged {
  color: #CE6D39;
}

#article-info>h2 {
  font-weight: bold;
}

#article-info>h2>span.category {
  color: #CE6D39 !important;
}

#article-reply-area>.header h5 {
  color: #CE6D39;
}

#main .menu-wrapper>a {
  padding: 0.5em 1.4em 0.5em 0.7em !important;
}

a {
  color: #CE6D39;
}

span.a-badge i.fa.fa-info-circle {
  color:  #F17F42;
}

/* footer */

#article-list>.article-list-row {
  border-right: none;
}

#article-list #article-list-menu {
  box-sizing: border-box;
  width: unset;
  margin: 20px;
}

#article-list #boardSearchForm {
  padding-bottom: 20px;
  height: unset;
}

.btn-primary {
  background: #FF9C00 !important;
}
</style> 	
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src = "resources/ckeditor/ckeditor.js"></script>
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

<script>
    window.onload = function(){
       ck = CKEDITOR.replace("board_contents",{
    	   filebrowserUploadUrl: "${path}/imageUpload"
    	   
       });
    };
</script>
    
    
</head>
<body style="background: #f3f2f0;">
	<div>
		<header class="codrops-header">
				<div class="codrops-top clearfix">
					<div class="titlenaranhi" style="margin-right: -100px;position: absolute;">
						<h1><a href="homeButton" class="mainTitle" style="color: aliceblue;font-size:30px;padding-left:20px; text-decoration: none;">本ーE</a></h1>
						<span><a class="codrops-icon codrops-icon-prev" href="homeButton" style="font-size:10px;padding-left:20px;text-decoration: none;">Home</a></span>
					</div>
					<div>
						<span class="right"><a class="codrops-icon codrops-icon-prev" href="logOut" style="text-decoration: none;"><span style="font-size:17px;">Log Out</span></a></span>
						<span class="right"><a class="codrops-icon codrops-icon-prev" href="cartForm" style="text-decoration: none;"><span style="font-size:17px;">My cart</span></a></span>
						<span class="right"><a class="codrops-icon codrops-icon-prev" href="boardForm" style="text-decoration: none;"><span style="font-size:17px;">Board</span></a></span>
					</div>
				</div>
				<div class="logo"></div>
				<h1>BOARD<span>for <font style="font-size:30px;color:#FC7D01;font-weight:bold;">${loginId}</font><font style="font-size:30px;color:#fdff00;">様</font></span></h1>
					<div class="w3layouts-left" style="width: 40%;background: #ffb827;padding:0.5em;margin-left: 30%;">
	               		<!--search-box-->
	                  <div class="w3-search-box" style="width: 100%;margin-top: 0em;position: relative;z-index: 1;display: inline-block;border: 2px solid #fff;">
	                     <form action="searchBook" >   <!-- <<<<<<<<<<<<<<<<여기 가 검색 부분 액션 이름 단 입니다. -->
	                        <b><input type="text" name="bookTitle" placeholder="Search..." required="required" maxlength="25"
	                        	style="outline: none;background: #fff;width: 93%;margin: 0;z-index: 10;font-size: 0.9em;color: #7A7B78;padding: 0.5em 0.5em;border: none;-webkit-appearance: none;display: inline-block;text-align: center;font-size: 15px;"></b>
	                        <input type="submit" value="" 
	                        style="    background: url(resources/assets/images/search.png)no-repeat;width: 20px;height: 20px;display: inline-block;vertical-align: text-top;border: none;outline: none;">
	                     </form>
	                  </div><!--//end-search-box-->
	                  <div class="clearfix"> </div>
	            	</div>      
		</header>
	</div>
<!-- -------------------------------------------------------------- 수정 폼 start---------------------------------------------------------------------------------------------------- -->
	<h3 style="margin-top: 2%;font-size: 25px;margin-left: 12%;">Update - ${loginId}</h3>
	<div class="boardblock"> 	
		<div class="frame">
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
		</div>
	</div>
	
	
	
<!-- -------------------------------------------------------------------수정 end---------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- ----------------------------------------------맨밑에 정보 start------------------------------------------ -->
   <div class="footer" style="margin: 5% auto; margin-bottom:0%;">
   	  <div class="wrap">
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Refresh</h4>
						<ul>
						<li><a href="javascript:location.reload()">Click here!</a></li>
						
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Login us!!</h4>
						<ul>
							<c:if test="${sessionScope.loginId == null }">
								<li><a href="javascript:history.back()">Join us</a></li>
							</c:if>
								<c:if test="${sessionScope.loginId != null }">
							<li><a href="logOut">LogOut</a></li>
							</c:if>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Quick menu</h4>
						<ul>
							<c:if test="${sessionScope.loginId == null }">
								<li>Please sign in!</li>    
							</c:if>
							<c:if test="${sessionScope.loginId != null }">
								<li><a href="myPageForm">My Page</a></li>
								<li><a href="searchBook?bookTitle=1">SearchBook</a></li>
								<li><a href="cartForm">My Cart</a></li>
							</c:if>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li>평일 09:00 ~ 18:00</li>
							<li><span>이동근 010-2808-3781</span></li>
							<li><span>장우서 010-8234-0828</span></li>
							<li><span>전재형 010-8335-0698</span></li>
							<li><span>나홍윤 010-4320-7840</span></li>
						</ul>
						
				</div>
				<div class="col_1_of_4 span_1_of_4" style="padding-top:1px;">
					<div class="social-icons">
						<h4>SUPPORT</h4>
				   		  <ul style="padding-left:17px;">
						      <li><a href="https://www.aladin.co.kr/home/welcome.aspx" target="_blank"><img class="iconkugi" src="./BookForm/images/aladin.png" /></a></li>
						      <li><a href="http://www.kyobobook.co.kr/index.laf?OV_REFFER" target="_blank"><img class="iconkugi" src="./BookForm/images/kyobo.jpg" /></a></li>
						      <li><a href="https://book.naver.com" target="_blank"><img class="iconkugi" src="./BookForm/images/naver.ico" /></a></li>
						      <li><a href="http://www.yes24.com/main/default.aspx" target="_blank"><img class="iconkugi" src="./BookForm/images/yes24.png" /></a></li>
					     </ul>
					     <div class="clear"></div>
	 				</div>
				</div>
			</div>
			 <div class="copy_right">
				<p>Company Name © All rights Reseverd | Design by  <font style="color:#ff8600">Jeon Jae Hyoung</font></p>
		   </div>
        </div>
    </div>
   <script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });

		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>

<!-- ----------------------------------------------맨밑에 정보 end------------------------------------------ -->

</body>
</html>