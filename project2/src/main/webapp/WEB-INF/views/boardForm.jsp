<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Board</title>
	<meta name="description" content="Book Preview with BookBlock" />
	<meta name="keywords"content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
	<meta name="author" content="Codrops" />
	<link rel="shortcut icon" href="assets/images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="./viewbook/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/bookblock.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/component.css" />
	<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
	<link href="./button/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link rel="stylesheet" type="text/css" href="./readFolder/style5.css" />	
,
	<script src="viewbook/js/modernizr.custom.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
html {
/*   background: linear-gradient(to bottom, #FDD692, #F17F42 ); */
  height: auto !important;
}
body {
letter-spacing: -0.05em !important;
  background: transparent;
  font-family: 'Nanum Gothic', sans-serif;
}

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
  color: white;
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

/* .btn-primary { */
/*   background: #FFEEE4 !important; */
/* } */
</style>        
<script>
		function pagingFormSubmit(currentPage) {
			var form = document.getElementById('pagingForm');
			var page = document.getElementById('page');
			page.value = currentPage;
			form.submit();
		}
	</script>

	<style>
		.sub_news,.sub_news th,.sub_news td
			{border:0}
		.sub_news a
			{color:#383838;text-decoration:none}
		.sub_news
			{width:60%; margin-left:20%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
		.sub_news caption
			{display:none}
		.sub_news th
			{font-size:17px;;padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#fbe599;color:#ff8400;font-weight:bold;line-height:20px;vertical-align:top}
		.sub_news td
			{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
		.sub_news .date,.sub_news .hit
			{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
		.sub_news .title
			{text-align:left; padding-left:15px; font-size:13px;}
		.sub_news .title .pic,.sub_news .title .new
			{margin:0 0 2px;vertical-align:middle}
		.sub_news .title a.comment
			{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
		.sub_news tr.reply .title a
			{padding-left:16px;background:url(첨부파일/ic_reply.png) 0 1px no-repeat}	
	</style>
</head>

<body>
<!-- 	<div id="scroll-wrap" class="container"> -->
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
							<span class="right"><a class="codrops-icon codrops-icon-prev" href="myPageForm" style="text-decoration: none;"><span style="font-size:17px;">My Page</span></a></span>
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
<!-- <div class="main"> -->
<!-- 	</div> -->

<!------------------------------------------------------------------------ 수정할 보드폼 start ----------------------------------------------------------------------->

<!------------------------------------------------------------------------ 수정할 보드폼 end ----------------------------------------------------------------------->
<div class="col-xs-10" id="main-content" style="padding-top: 2%;">
  <div class="frame">
    <div id="board-info" data-owner-id="191603590" data-type="streamer" data-alias="sinick0907" data-name="2시니">
      <img src="./readFolder/images/cyworld icon.jpg" alt="" id="board-info-profile-img" class="pull-right img-rounded" style="width:64px;height:64px;">
        <h1>
           <a>${loginId}</a>     
           <span id="score-area" title="게시판 점수">様</span>
<!--            <span id="viewers-area" class="hide"><i class="fa fa-user"></i> <span id="viewers">0</span></span> -->
    	</h1>
    <div id="board-info-bottom">
      <a href="homeButton">
         <img src="./BookForm/images/home-xxl.png" style="width:22px;height:22px">
	  </a>
	  <a href="myPageForm">
         <img src="./BookForm/images/lifeicon.jpeg" style="width:22px;height:22px">My Page
	  </a>
	  <a href="cartForm">
         <img src="./BookForm/images/lifeicon.jpeg" style="width:22px;height:22px">My Cart
	  </a>
	  <a style="cursor: unset;">
	      	<img src="./BookForm/images/bookicon1.png" style="width:22px;height:22px" >BOOK
	      </a>
      <a style="cursor: unset;">
         <img src="./BookForm/images/lifeicon.jpeg" style="width:22px;height:22px">Life
	  </a>
     </div>
</div>
<!-- List -->
<!-- <ins class="adsbygoogle" -->
<!--      style="display:block;width:870px;height:90px;margin:0 auto;" -->
<!--      data-ad-client="ca-pub-5807968391783575" -->
<!--      data-ad-slot="2366847732"></ins> -->
<div id="article-list">
<div id="article-option-area">
    <input type="checkbox" id="hide_notice" class="hide">
</div>
<div id="article-list-category" style="border-top: none;">
</div>
<div id="article-list-category" style="border-top: none;padding-top: 2px;border-bottom: 2px solid #CE6D39;">
    <a style="color:black; cursor:initial;" class="nav-link">Num</a>
    <a style="color:black;cursor:initial;padding: 5px 29px;" class="nav-link">Hits</a>
    <a style="color:black;cursor:initial;padding: 2px 391px;">Title</a>
    <a style="color:#ff0000; cursor:initial;" class="nav-link">ID</a>
</div>

<c:forEach var="Board" items="${list}">
	<div class="article-list-row has-category" id="article-list-row-30071395">
		<div class="item">        
<!--번호 start -->
	        <div class="list-header v3" style="padding: 2px 24px;width:71.2px;">
	            <span>
					<a href="read?board_num=${Board.board_num}">${Board.board_num}</a>
				</span>        
			</div>
<!--번호 end -->
			<div class="list-title">           
			<div class="list-category">
				<span class="category" style="color:#ff5000;width:71.2px;">
					${Board.board_hits}
				</span>
			</div>            
			<span class="a-badge">
				<img src="./BookForm/images/smile1.png" style="width:24px;height:20px;">
			</span>
<!--제목 start-->
			<a title="${Board.board_title}" href="read?board_num=${Board.board_num}" style="">
				${Board.board_title}          
			</a>
<!--제목 end -->
<!--아이디 start -->
		    <div class="list-writer  logged">
				<span style="cursor:initial;">
					<font style="cursor:initial;">${Board.person_id}</font>
				</span>
			</div>
<!--아이디 end -->
			</div>
		</div>
	</div>
</c:forEach>
<!-- ------------------------------------------------------------------페이지페이징 start--------------------------------------------------------------------		 -->
	

	<div style="margin-left:43%;margin-bottom: 4%;margin-top: 4%;">
		<div style="float:left;">
		<ul class='pagination'>
                	<li class='disabled'>
                	<li class='active'>
                		<a href="javascript:pagingFormSubmit(${1})" style="border-top-left-radius: 4px;border-bottom-left-radius: 4px;">&lt;&lt;</a>
                	</li>
                	<li>
                		<c:if test="${navi.startPageGroup - 1 < 1 }">
							<a href="javascript:pagingFormSubmit(${1})">&lt;</a> 
						</c:if>
                	</li>
                	<li>
                		<c:if test="${navi.startPageGroup -1 >= 1 }">
							<a href="javascript:pagingFormSubmit(${navi.startPageGroup - 1})">&lt;</a> 
						</c:if>
                	</li>
                	<li>
                		<c:forEach var="counter" begin="${navi.startPageGroup}"
							end="${navi.endPageGroup}">
							<c:if test="${counter == navi.currentPage}">
							</c:if>
								<a href="javascript:pagingFormSubmit(${counter})" style="padding: 6px 12px;background: #CE6D39;line-height:1.8;color:white;">${counter}</a>
							<c:if test="${counter == navi.currentPage}"></c:if>
						</c:forEach>
                	</li>
                	<li>
                		<c:if test="${navi.endPageGroup + 1 >= navi.totalPageCount }">
							<a href="javascript:pagingFormSubmit(${navi.totalPageCount})">&gt;</a> 
						</c:if>
					</li>
					<li>
					<c:if test="${navi.endPageGroup + 1 < navi.totalPageCount }">
						<a href="javascript:pagingFormSubmit(${navi.endPageGroup + 1})">&gt;</a> 
					</c:if>
					</li>
					<li>
						<a href="javascript:pagingFormSubmit(${navi.totalPageCount})" style="color: white;background: #CE6D39;">&gt;&gt;</a> <br>
					</li>
                </ul> 
		</div>
                 <div style="float:left; margin-left: 44%;">
                 	<c:if test="${sessionScope.loginId != null }">
		               	<a href="writeForm" class="btn square btn-primary write" style="margin-left: 52%;width: 100%;">
		                	<img src="./BookForm/images/write.png" style="width:22px;height:22px;"> 글 쓰기
		                </a>  
	                </c:if>
                </div><br><br><br><br>
       <div >         
        <form id="pagingForm" method="get" action="boardForm" style="margin-left: -15%;">
			<input type="hidden" name="page" id="page"> 				
				<select id="select" name="select" style="height:38px;">
					<option value="board_title" ${select eq "title" ? "selected" : ""}>
						제목
					</option>
					<option value="id" ${select eq "id" ? "selected" : ""}>
						작성자
					</option>
					<option value="contents"
						${select eq "contents" ? "selected" : ""}>본문
					</option>
				</select> 
				<input type="text" id="searchedtitle" name="searchedtitle"value="${searchedtitle}"style="width:200px;height:38px;"> 
				<input type="button"onclick="pagingFormSubmit(1)" value="검색" style="width:70px;height:38px;"> 
		</form>
       </div>         
	</div>
<!-- ------------------------------------------------------------------페이지페이징 end-------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------밑에부분start-------------------------------------------------------------------------- -->
  <div class="footer">
   	  <div class="wrap">
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
				<h4>Refresh</h4>
						<ul>
						<li><a href="javascript:location.reload()">Click here!</a></li>
						<li><a href="homeButton">Home</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Log in us!!</h4>
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
								<li><a>Please sign in!</a></li>    
							</c:if>
							<c:if test="${sessionScope.loginId != null }">
								<li><a href="myPageForm">My Page</a></li>
								<li><a href="searchBook?bookTitle=1">SearchBook</a></li>
								<li><a href="cartForm">My Cart</a></li>
								<li><a href="boardForm">A Bulletin Board</a>
							</c:if>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><a>평일 09:00 ~ 18:00</a></li>
							<li><a>이동근 010-2808-3781</a></li>
							<li><a>장우서 010-8234-0828</a></li>
							<li><a>전재형 010-8335-0698</a></li>
							<li><a>나홍윤 010-4320-7840</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
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
<!-- -------------------------------------------------------------------밑에부분end----------------------===================---------------------- -->

	<script src="viewbook/js/bookblock.min.js"></script>
	<script src="viewbook/js/classie.js"></script>
	<script src="viewbook/js/bookshelf.js"></script>
</body>
</html>