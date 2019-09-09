<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
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
	<script src="viewbook/js/modernizr.custom.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
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
						</div>
					</div>
					<div class="logo"></div>
					<h1>BOARD<span>for <font style="font-size:30px;color:#FC7D01;font-weight:bold;">${loginId}</font><font style="font-size:30px;color:#fdff00;">様</font></span></h1>
			</header>
		</div>
<!-- <div class="main"> -->
<!-- 	</div> -->
		
<!-- -------------------------------------------------------------테스트 start-------------------------------------------------------------------- -->
	<div class="content_top" style="margin-left: 16%;margin-right: 16%;margin-top: 3%;margin-bottom: 2%;">
   		<div class="heading" >
   			<h3 style="font-weight:900;font-size: 1.5em;">Puasrchased List</h3>
   		</div>
   	</div>	
	<div>
			<table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트"style="margin-bottom: 1%;">
			<caption>게시판 리스트</caption>
				<colgroup>
					<col>
<%-- 					<col width="5%"> --%>
<%-- 					<col width="60%"> --%>
<%-- 					<col width="10%"> --%>
<%-- 					<col width="10%"> --%>
				</colgroup>
				<thead>
					<tr>
						<th scope="col"  style="width: 10%;">Number</th>
						<th scope="col"  style="width: 60%;">Title</th>
						<th scope="col"  style="width: 15%;">Author</th>
						<th scope="col"  style="width: 15%;">Hits</th>
					</tr>
				</thead>
				<c:forEach var="Board" items="${list}">
					<tbody>
						<tr>
							<td class="date" style="font-size:15px;">
								<a href="read?board_num=${Board.board_num}">${Board.board_num}</a>
							</td>
							<td class="title" style="font-size:15px;" >
								<a href="read?board_num=${Board.board_num}">${Board.board_title}</a>
							</td>
							<td class="name" style="font-size:15px;">
								${Board.person_id}	
							</td>
							<td  class="hit" style="font-size:15px;">
								${Board.board_hits}
							</td>
						</tr>
				</c:forEach>
				</tbody>
			</table>		
		</div>	

<!-- ----------------------------s---------------------------------테스트 end-------------------------------------------------------------------- -->
		
		
<!-- ------------------------------------------------------------------페이지페이징 start--------------------------------------------------------------------		 -->
	<div style="margin-left:43%; position: absolute; ">
		<a href="javascript:pagingFormSubmit(${1})">◁◁ </a> &nbsp;&nbsp;
		<c:if test="${navi.startPageGroup - 1 < 1 }">
			<a href="javascript:pagingFormSubmit(${1})">◀</a> &nbsp;&nbsp;
		</c:if>
		<c:if test="${navi.startPageGroup -1 >= 1 }">
			<a href="javascript:pagingFormSubmit(${navi.startPageGroup - 1})">◀</a> &nbsp;&nbsp;
		</c:if>
		<c:forEach var="counter" begin="${navi.startPageGroup}"
			end="${navi.endPageGroup}">
			<c:if test="${counter == navi.currentPage}">
			</c:if>
				<a href="javascript:pagingFormSubmit(${counter})">${counter}</a>&nbsp;
			<c:if test="${counter == navi.currentPage}">
			</c:if>
		</c:forEach>
		&nbsp;&nbsp;
		<c:if test="${navi.endPageGroup + 1 >= navi.totalPageCount }">
			<a href="javascript:pagingFormSubmit(${navi.totalPageCount})">▶</a> &nbsp;&nbsp;
		</c:if>
		<c:if test="${navi.endPageGroup + 1 < navi.totalPageCount }">
			<a href="javascript:pagingFormSubmit(${navi.endPageGroup + 1})">▶</a> &nbsp;&nbsp;
		</c:if>
		<a href="javascript:pagingFormSubmit(${navi.totalPageCount})">▷▷</a> <br>
		<div>
		<form id="pagingForm" method="get" action="boardForm">
			<input type="hidden" name="page" id="page"> 
				<select id="select" name="select">
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
				<input type="text" id="searchedtitle" name="searchedtitle"value="${searchedtitle}"> 
				<input type="button"onclick="pagingFormSubmit(1)" value="검색"> 
		</form>
		</div>
				
	</div>
		<div>
						<c:if test="${sessionScope.loginId != null }">
							<a href="writeForm" style="">
								<img src="./assets/images/512x512bb.jpg" style="width:75px;height:44px;margin-left: 76.5%;border:1px solid red;
										border-radius: 12px;">
								</a>				
						</c:if>
					</div>
<!-- ------------------------------------------------------------------페이지페이징 end--------------------------------------------------------------------		 -->


  <div class="footer">
   	  <div class="wrap">
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="contact.html">Sign In</a></li>    <!-- 링크 수정 해야함 -->
							<li><a href="index.html">View Cart</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>010-4320-7840</span></li>
							<li><span>010-8335-0698</span></li>
							<li><span>010-8335-0698</span></li>
							<li><span>010-8335-0698</span></li>
						</ul>
						
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="social-icons">
						<h4>SUPPORT</h4>
				   		  <ul>
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
	<script src="viewbook/js/bookblock.min.js"></script>
	<script src="viewbook/js/classie.js"></script>
	<script src="viewbook/js/bookshelf.js"></script>
</body>
</html>