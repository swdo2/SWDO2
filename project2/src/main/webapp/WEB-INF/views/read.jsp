<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>READ</title>

<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Board</title>
	<meta name="description" content="Book Preview with BookBlock" />
	<meta name="keywords"content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
	<meta name="author" content="Codrops" />
	<link rel="shortcut icon" href="./assets/images/favicon.ico">
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
	<link rel="stylesheet" type="text/css" href="./readFolder/style1.css" />
	
	
	<script src="viewbook/js/modernizr.custom.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>

 <style>
<!--  start -->
 html {
  background: linear-gradient(to bottom, #F8E0E6, #F8E0E6);
  height: auto !important;
}
body {
letter-spacing: -0.05em !important;
  background: transparent;
  font-family: 'Nanum Gothic', sans-serif;
}

/* 로고밑 NAV bar */

header #header-bar>.row {
  border-top: 4px solid #FA5882;
  border-right: none;
  border-bottom: none;
}

/* 헤더 배너 */

header .row>div:nth-child(1)>a {
float: left;
position: absolute;
background: url('https://upload.tgd.kr/20181127/ebb3799a0f812c6ced745b11e2d0c45d.png') no-repeat;
background-size: 200px 100px;
background-position: center -50px;
width: 200px;
height: 50px;
margin-top: 5px;


animation: shinLogo 6s;
animation-iteration-count: infinite;
animation-timing-function:ease-in-out;
}

@keyframes shinLogo {
0% {
opacity: 0;
}
10% {
opacity: 1;
}
30% {
background-position: center -50px;
}
50% {
background-position: center 0px;
}
90% {
background-position: center 0px;
}
95% {
background-position: center 0px;
opacity: 1;
}
100% {
background-position: center 0px;
opacity: 0;
}
}

/* 검색폼 보더 */

header #right-search-form>input[type='text'] {
  border: 3px solid #FA5882;
}

/* 트게더 전체메뉴 / 유용한링크 / 트위치 스케쥴 */

#main .menu-wrapper>.header {
  background: #FF0040;
}

.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  color: white;
}

.fa-square:before {
  color: #FA5882;
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

header .row>div:nth-child(1)>a img {
display: none;
}

header #right-search-form>input[type=text]{
border: 3px solid #F7819F;
}

header #right-search-form>#right-search-btn{
color: #F7819F;
}

header #header-bar>.row{
border-top: 0;
border-radius: 20px;
background-color: rgba(255,255,255,0.5) 
}

header #header-bar #header-top-notice strong.notice-badge{
background: #F7819F;
border-top-left-radius: 10px;
border-bottom-left-radius: 10px;
}

header #header-bar #header-top-notice a {
color: #fff;
background: #F7819F;
margin-left: -4px;
padding: 4px 8px;
font-weight: 900;
border-top-right-radius: 10px;
border-bottom-right-radius: 10px;
}

#main .menu-wrapper>.header{
background: #FA5882;
border-top-left-radius: 10px;
border-top-right-radius: 10px;
}

@keyframes shinLeftMenu {
50% {
background-color: #FA5882;
}
}

#main .menu-wrapper>a>em,
#main .menu-wrapper>a>i.fa.fa-square{
color: #000000;
}

#main .menu-wrapper{
border:0;
}



/* 헤더 검색 버튼 */

header #right-search-form>#right-search-btn {
  color: #FE2E64;
}

/* 헤더 [광고]배경색 */

header #header-bar #header-top-notice strong.notice-badge {
  background: #FE2E64;
}

/* fa색상 */

header #header-bar .fa {
  color: #F7819F;
}

/* 인원 몇명 보는지 */
#board-info #viewers-area {
color: #FA5882;
}

#board-info #viewers-area #viewers:before {
content: "흑우 "; 
cursor: text;
}

#board-info #viewers-area #viewers:after {
content: "마리 존버 중!";
cursor: text;
}

#board-info #viewers-area .fa-user{
display: none; 
}


/* 스트리머 게시판 상단 정보 글씨색상 */

#board-info #board-info-bottom a {
  color: #FA5882;
}

/* 좌측메뉴 숏컷링크 글씨 색상 */

#main .menu-wrapper>a>em {
  color: #FA5882;
}

/* 좌측메뉴 메뉴사이의 공간 색상 */

#main .menu-wrapper .spacer {
  background: #FA5882;
  height: 0.15em;
}

/* 게시글 관련부분 */

#article-list>.article-list-row>.item>.list-title>.list-writer>span {
  width: 120px !important;
}

#article-list #article-list-category {
  border-top: 2px solid #FE2E64;
  background: white;
}

#article-list #article-list-category>a {
  background: white;
}

#article-list>.article-list-row>.item>.list-header>span {
  background-color: #FE2E64;
}

#article-list>.article-list-row>.item>.list-title>small.comment-count {
  color: #FE2E64;
}

#article-list>.article-list-row>.item>.list-title>.list-writer.logged>span {
  color: #FE2E64;
}

.pagination>.active>a,
.pagination>.active>a:focus,
.pagination>.active>a:hover,
.pagination>.active>span,
.pagination>.active>span:focus,
.pagination>.active>span:hover {
  background-color: #000000;
  border-color: #FE2E64;
}

.pagination>li>a:focus,
.pagination>li>a:hover,
.pagination>li>span:focus,
.pagination>li>span:hover {
  color: #FE2E64;
}

.pagination>li>a,
.pagination>li>span {
  color: #FE2E64;
}

#article-content-wrapper>.header {
  border-top: 2px solid #f69f00;
}

#article-reply-area #reply-real-area .reply>.reply-header>.reply-writer.logged,
#article-reply-area #reply-best-area .reply>.reply-header>.reply-writer.logged {
  color: #FE2E64;
}

#article-info>h2 {
  font-weight: bold;
}

#article-info>h2>span.category {
  color: #000000 !important;
}

#article-reply-area>.header h5 {
  color: #000000;
}

#main .menu-wrapper>a {
  padding: 0.5em 1.4em 0.5em 0.7em !important;
}

a {
  color: #000000;
}

span.a-badge i.fa.fa-info-circle {
  color: #FF0040;
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
/*   background: #9028e8 !important; */
/* } */
.replywrite{
	background:#FF9C00;
}
.replywrite:hover{
	background:#E00546;
}
</style>        

<!-- <script type="text/javascript">
  window._taboola = window._taboola || [];
    _taboola.push({article:'auto'});
    !function (e, f, u, i) {
    if (!document.getElementById(i)){
      e.async = 1;
      e.src = u;
      e.id = i;
      f.parentNode.insertBefore(e, f);
    }
  }(document.createElement('script'),
  document.getElementsByTagName('script')[0],
  '//cdn.taboola.com/libtrc/tgdkr/loader.js',
  'tb_loader_script');
  if(window.performance && typeof window.performance.mark == 'function')
    {window.performance.mark('tbl_ic');}
</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71349615-1', 'auto');
  ga('send', 'pageview');
    ga('set', 'userId', '141152954');
  
</script>
 end -->

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
	  if(confirm('ARE YOU SURE YOU WANT TO DELETE IT?')){
		  location.href = 'deleteBoard?board_num=${board.board_num}';	
	  }
  }
  //수정
  function updateBoard(){
	  location.href = 'update?board_num=${board.board_num}';
  }
 

  //댓글을 입력해주세요.
  function reply(){
	 var re = document.getElementById('reply_contents');
	 	if(re.value == ''){
	 		alert('Please Enter Comments.');
	 		return false;
	 	}
	 	return true;
  }
</script> 



</head>
<body>
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
					<h1>READ<span>for <font style="font-size:30px;color:#FC7D01;font-weight:bold;">${loginId}</font><font style="font-size:30px;color:#fdff00;">様</font></span></h1>
			</header>
		</div>
<!-- --------------------------------------------------------------------------보드 입니다. start------------------------------------------------------ -->
<!-- tgd_board_list -->
<ins class="adsbygoogle"
     style="display:block;width:870px;height:90px;margin:0 auto;"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="2366847732"></ins>
<div style="border: 1px solid #f69f00;margin-top:5%;margin-left: 11%;margin-right: 11%;background-color: white;margin-bottom:4%;">
	<div id="article-info" style="border-top: 4px solid #F3BA6F;margin-bottom:10px;">
	    <h2>
			<span class="category" style="color:#62ad64"><font style="color:#f69f00">FORUM</font><strong id="article-info-writer">${loginId}様</strong></span></h2>
	    <img src="https://static-cdn.jtvnw.net/user-default-pictures/4cbf10f1-bb9f-4f57-90e1-15bf06cfe6f5-profile_image-300x300.jpg" alt="" class="img-rounded article-profile-img">
<!-- 	    <div id="article-info-writer"> -->
<%-- 	         <strong id="article-info-writer">${loginId}</strong>様 --%>
<!-- 	    </div> -->
	</div>

<div id="article-content-wrapper">
    <div class="header" style="">
    		<font style="font-size: 1.6em;font-weight: 500;">${board.board_title}</font>
            <span id="article-views" style="text-align: right;">
            	<img src="./readFolder/images/like.png" style="width:13%;height:42px;padding-bottom:6px;">
            		<font style="padding-top:1px;padding-right: 3px;padding-left: 2%;border-bottom-color: rgb(240, 167, 2);
            					 border-bottom-style: solid;border-bottom-width: 3px;" id="likeDiv">${board.board_like}
         			</font>
            </span>
        <div class="clearfix"></div>
    </div>

    <div id="article-content" class="fr-view" data-id="28425775" data-last-cpage="1" style="margin-bottom: 20%;">
		<font style="font-size:18px;">${board.board_contents}</font>
	</div>

    <div class="vote-area">
        <button type="button" id = "btLike" class="btn btn-outline-success vote-btn">
        	<img src="./readFolder/images/like.png" style="width:20px;height:20px;padding-bottom: 3px;">추천<span id="likeDiv"></span>
        </button>    
    </div>


</div>
<!-- ------------------------------------------------------------------------댓글 띄워지는 부분 START------------------------------------------------------------------------  -->
		
		<div id="reply-real-area" style="margin-right: 3%;margin-left: 3%;margin-bottom: 2%;">
		<c:forEach var = "Reply" items = "${list_rep}">
		<div class="reply d-0" id="comment-29955264" data-id="29955264">
			<div class="reply-header" style="padding: 0.1em 0.1em;margin-bottom: 1.2em;">
				<img class="reply-writer-image img-circle loaded" src="./assets/images/favicon.ico" 
					width="48" height="48" data-was-processed="true" style="width: 2.2em;height: 2.2em;margin-right: 0.44em;float: left;">
					<div class="reply-writer logged" style="color: #BE8D4C;"> 
							<div style="float:left;background-color:#F6F6F6">
								<font style="color:#BE8D4C; font-size:18px; padding:7px 0px 0px;font-weight:900;">${Reply.person_id}</font>
							</div>
					</div>
				<div style="background: #f7f7f7;">
				<div class="clearfix" style="margin-bottom: 10px; padding-top:3.5%;"></div>
				</div>
					<div style="background-color:white;padding-left:3%;"><p id="reply_contents">${Reply.reply_contents}</p></div>
					
			</div>
		</div>
		</c:forEach>
	</div>

		
<!-- ------------------------------------------------------------------------댓글 띄워지는 부분 END------------------------------------------------------------------------  -->	
<div id="article-reply-area" class="">
    <div class="header" style="border-top: 4px solid #F3BA6F;
    margin-left: 3%;
    margin-right: 3%;
    margin-bottom: -31px;
    border-left: 1px solid #f69f00;
    border-right: 1px solid #f69f00;
    border-bottom: 1px solid #f69f00;
    padding-top: 0.5em;
    padding-left: 0.5em;
    padding-bottom:1.6em;">
        <h5>
            <img src="./readFolder/images/bloodtrail.png" style="width:25px;height:25px;"> Reply <span id="totalCommentCount"></span> &nbsp;
        </h5>
    </div>

    <div id="reply-best-area"></div>

    <div id="reply-real-area">
        
    </div>
    <a name="lastc"></a>

    <a href="#" id="loadNewCommentsBtn" class="btn btn-sm btn-info invisible" style="margin: 0 15px;">
    </a>

      <div id="comment-write-form-area" style="border-bottom: 4px solid #F3BA6F; padding-left:3%;">
        <form action="write" method="POST" id="replyForm" class="mt-2" onsubmit = "return reply();">
            <input type="hidden" id="commentParentId" name="parent_id" value="0">
            <input type="hidden" name="custom_badge" id="custom_badge" value="">

            <div id="commentWriteInfoForm" class="hide mb-2">
                <div class="left"><input type="text" class="form-control" id="commentNickname" maxlength="10" name="nickname" value="" placeholder="닉네임"></div><div class="right">
                <input type="password" class="form-control" id="commentPassword" maxlength="20" name="password" value="" placeholder="비밀번호"></div>
            </div>
            <textarea name="reply_contents" id="reply_contents" rows="4" class="form-control" placeholder="Please Enter Comments." 
			            style="border: 1px solid #f69f00; min-width: 1112.2px;max-width: 1112.2px;"></textarea>
			<input type = "hidden" name = "board_num" value = ${board.board_num }>
            <div id="comment-write-button-area" style="margin-top:0.7em;margin-bottom:0.7em;">
                <button class="btn btn-primary pull-right btn-sm replywrite" style="height:38.4px;border-radius:12px;margin-right: 2%;" type="submit" >
                	<img src="./readFolder/images/pencil3.png" style="width:22px;height:22px;margin-bottom:8px;">
                	<font style="font-size:18px;">WRITE</font>
                </button>
                <c:if test = "${sessionScope.loginId == board.person_id}">
					<input  class="replystyle1" style="width:102px;height:38.4px;" id ="btUpdate" type = "button" value = "Update">
					<input class="replystyle2" style="width:102px;height:38.4px;" id = "btDelete" type = "button" value = "Delete">
				</c:if>
				<button class="btn btn-primary pull-right btn-sm replywrite buttononclick" type="button" 
					 onclick="listreturn()" style="border-radius:12px;width:102px;height:38.4px;margin-right:7px;" >
               		 <font style="font-size:18px;">LIST</font>
                </button>
                				
                <script>
                	function listreturn() {
                		location.href="boardForm";
                	}
                </script>
                <div class="clearfix"></div>
            </div>
        </form>
    </div>
    </div>
</div>
<!-- <script type="text/javascript">
  window._taboola = window._taboola || [];
  _taboola.push({
    mode: 'text-links-a',
    container: 'taboola-below-article-text-links',
    placement: 'Below Article Text Links',
    target_type: 'mix'
  });
  _taboola.push({
    mode: 'organic-text-links-a',
    container: 'taboola-below-article-text-links-b',
    placement: 'Below Article Text Links-b',
    target_type: 'mix'
  });
</script>
 -->

<!-- report modal -->
<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="reportModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="reportModalLabel">신고하기</h4>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
          <tr>
            <th width="100">작성자</th>
            <td><span id="reportTarget"></span></td>
          </tr>
          <tr>
            <th>제목</th>
            <td><span id="reportText"></span></td>
          </tr>
        </table>

        <h4>신고사유 선택</h4>
        <label style="display: block;"><input type="radio" name="report_reason" value="1"> 욕설/비하</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="2"> 음란성</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="3"> 게시글/댓글 도배</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="4"> 홍보성 콘텐츠</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="5"> 타인의 개인정보 유포</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="6"> 허위사실 유포</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="7"> 명예훼손 관련</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="8"> 기타</label>
        
        <textarea name="report_desc" cols="30" rows="4" placeholder="신고 사유 설명이 필요하신 경우 작성해주세요." class="form-control"></textarea>

        <p style="margin-top: 8px; color: #999; font-size: 12px;">다수의 신고를 받은 게시물은 숨김처리 될 수 있으며, 해당 글의 작성자는 사이트 이용제한 조치를 받을 수 있습니다. 신고 결과에 대해 별도의 통지/안내를 하지 않으니 이 점 양지하여 주시기 바랍니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="reportBtn">신고하기</button>
      </div>
    </div>
  </div>
</div>
<!-- --------------------------------------------------------------------------보드 입니다. end------------------------------------------------------ -->
<!-- --------------------------------------------------------------------------맨밑에 입니다. start------------------------------------------------------ -->
  <div class="footer">
   	  <div class="wrap" style="border: 1px solid #b1b0b0;background:white;">
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
<!-- --------------------------------------------------------------------------맨밑에 입니다. end------------------------------------------------------ -->

	
	
</body>
</html>