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
  background: #FFEEE4 !important;
}
</style>        
<script>
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
<div class="col-xs-10" id="main-content">
  <div class="frame">
    <div id="board-info" data-owner-id="191603590" data-type="streamer" data-alias="sinick0907" data-name="2시니">
      <img src="./readFolder/images/cyworld icon.jpg" alt="" id="board-info-profile-img" class="pull-right img-rounded" style="width:64px;height:64px;">
        <h1>
           <a>${loginId}</a>     
           <span id="score-area" title="게시판 점수">様</span>
<!--            <span id="viewers-area" class="hide"><i class="fa fa-user"></i> <span id="viewers">0</span></span> -->
    	</h1>
    <div id="board-info-bottom">
      <a data-id="19642728" id="addFavoriteBtn" title="즐겨찾기에 추가" style="cursor:auto;">
        <img src="./readFolder/images/cyworld icon.jpg" style="width:24px;geight:24px;">
        
      </a>
      <a href="/sinick0907/profile">
      	<i class="fa fa-info-circle"></i> 소개
      </a>
      <a target="_blank" href="//twitch.tv/sinick0907">
        <i class="fa fa-twitch"></i> 
                 채널
              </a><a href="/clips?streamer_id=191603590" id="goClipBtn"><i class="fa fa-film"></i> 클립</a>    </div>
</div>

<!-- tgd_board_list -->
<ins class="adsbygoogle"
     style="display:block;width:870px;height:90px;margin:0 auto;"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="2366847732"></ins>
<div id="article-list">
<div id="article-option-area">
    <input type="checkbox" id="hide_notice" class="hide">
    <button id="article-option-area-toggle-btn"><i class="fa fa-eye"></i></button>
</div>
<div id="article-list-category">
    <a class="nav-link active" href="/sinick0907"><i class="fa fa-home"></i></a><a style="color:#ffcd00" class="nav-link " href="/sinick0907?category=20209758">공지</a><a style="color:#002fff" class="nav-link " href="/sinick0907?category=20209359">게임&컨텐츠 추천</a><a style="color:#ff0000" class="nav-link " href="/sinick0907?category=20209347">방송 클립(다 좋아~)</a><a style="color:#ff5000" class="nav-link " href="/sinick0907?category=20209371">자유게시판(친목금지)</a><a style="color:#00b352" class="nav-link " href="/sinick0907?category=20209363">팬아트</a></div>

            <div class="article-list-row has-category notice  " id="article-list-row-22307328"><div class="item">
        
        <div class="list-header v4">
            <strong>공지</strong>        </div>

        <div class="list-title">
            
            
                        <span class="a-badge"><i class="fa fa-info-circle"></i></span><a title="이번주 방송 공지!" href="/22307328" style="color:#000000">
                                이번주 방송 공지!            </a>

                        <small class="comment-count">[6]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/chat-badges/broadcaster.png" alt="Broadcaster" title="Broadcaster" align="absmiddle" />                     2시니                </span>
            </div>
                    </div>

        <div class="list-time">
            05-07        </div>
    </div></div>

            <div class="article-list-row has-category notice  " id="article-list-row-20209975"><div class="item">
        
        <div class="list-header v2">
            <strong>공지</strong>        </div>

        <div class="list-title">
            
            
                        <span class="a-badge"><i class="fa fa-info-circle"></i></span><a title="★시하~ 시게더 기본규칙 공지사항(필독)★" href="/20209975" style="color:#000000">
                                ★시하~ 시게더 기본규칙 공지사항(필독)★            </a>

                        <small class="comment-count">[3]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/chat-badges/broadcaster.png" alt="Broadcaster" title="Broadcaster" align="absmiddle" />                     2시니                </span>
            </div>
                    </div>

        <div class="list-time">
            03-29        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-30071395"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="9월7일이 왜 국가 공휴일이 아닌가요?!?!" href="/30071395" style="">
                                9월7일이 왜 국가 공휴일이 아닌가요?!?!            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        필립스군                </span>
            </div>
                    </div>

        <div class="list-time">
            09-07        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-30056508"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="올만이유~~~" href="/30056508" style="">
                                올만이유~~~            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        시니누나땜에사는갈비                </span>
            </div>
                    </div>

        <div class="list-time">
            09-06        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-28984179"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="시이이하아아!!!!" href="/28984179" style="">
                 <i class="fa fa-lock"></i>                시이이하아아!!!!            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        필립스군                </span>
            </div>
                    </div>

        <div class="list-time">
            08-15        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-28951545"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#002fff">게임&컨텐츠 추천</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="Korea patriotic song ; Korea independence song" href="/28951545" style="">
                                Korea patriotic song ; Korea independence song            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/c106999d-eca8-4f22-aa73-3ead6944bd14/1" align="absmiddle">                     파일럿0425                </span>
            </div>
                    </div>

        <div class="list-time">
            08-14        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-27904849"><div class="item">
        
        <div class="list-header v3">
            <span>3</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="구독쓰 냐미쓰~~" href="/27904849" style="">
                                구독쓰 냐미쓰~~            </a>

                        <small class="comment-count">[1]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                                        시니누나땜에사는갈비                </span>
            </div>
                    </div>

        <div class="list-time">
            07-26        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-26842034"><div class="item">
        
        <div class="list-header v3">
            <span>3</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="세계에서 가장 큰 수영장" href="/26842034" style="">
                                세계에서 가장 큰 수영장            </a>

                        <small class="comment-count">[2]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/c106999d-eca8-4f22-aa73-3ead6944bd14/1" align="absmiddle">                     파일럿0425                </span>
            </div>
                    </div>

        <div class="list-time">
            07-08        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-26675158"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#002fff">게임&컨텐츠 추천</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="[1인개발 자작게임 추천]어렵지만 재미있는게임 "Bring it on"" href="/26675158" style="">
                                [1인개발 자작게임 추천]어렵지만 재미있는게임 "Bring it on"            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        daeburu                </span>
            </div>
                    </div>

        <div class="list-time">
            07-06        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-26303009"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#002fff">게임&컨텐츠 추천</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="오뱅있?" href="/26303009" style="">
                                오뱅있?            </a>

                        <small class="comment-count">[1]</small>
            
            
            
            <div class="list-writer ">
                                <span>
                                        Twosunnys                </span>
            </div>
                    </div>

        <div class="list-time">
            06-29        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-26286773"><div class="item">
        
        <div class="list-header v3">
            <span>3</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="오늘은 오늘은 오늘은~~" href="/26286773" style="">
                                오늘은 오늘은 오늘은~~            </a>

                        <small class="comment-count">[4]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                                        시니누나땜에사는갈비                </span>
            </div>
                    </div>

        <div class="list-time">
            06-29        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25919816"><div class="item">
        
        <div class="list-header v3">
            <span>3</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="흐어어어어어엉 ㅜㅜ" href="/25919816" style="">
                                흐어어어어어엉 ㅜㅜ            </a>

                        <small class="comment-count">[3]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                                        좀알려줘                </span>
            </div>
                    </div>

        <div class="list-time">
            06-23        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25865004"><div class="item">
        
        <div class="list-header v3">
            <span>3</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="누님...방송은 잊으신건가요....?" href="/25865004" style="">
                                누님...방송은 잊으신건가요....?            </a>

                        <small class="comment-count">[1]</small>
            
            
            
            <div class="list-writer ">
                                <span>
                                        구기구깃                </span>
            </div>
                    </div>

        <div class="list-time">
            06-22        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25694739"><div class="item">
        
        <div class="list-header v4">
            <span>4</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="시니님...큰일입니다..." href="/25694739" style="">
                                시니님...큰일입니다...            </a>

                        <small class="comment-count">[3]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/46328f4b-393a-4aa9-ba60-89d8ac948830/1" align="absmiddle">                     곧군대감_쇼쿠판                </span>
            </div>
                    </div>

        <div class="list-time">
            06-20        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25581890"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="팻두형님 저좀 도와주세유..." href="/25581890" style="">
                                팻두형님 저좀 도와주세유...            </a>

                        <small class="comment-count">[2]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                                        시니누나땜에사는갈비                </span>
            </div>
                    </div>

        <div class="list-time">
            06-18        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25466371"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="아이고..." href="/25466371" style="">
                                아이고...            </a>

                        <small class="comment-count">[3]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/46328f4b-393a-4aa9-ba60-89d8ac948830/1" align="absmiddle">                     휴지맨                </span>
            </div>
                    </div>

        <div class="list-time">
            06-17        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25398803"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#002fff">게임&컨텐츠 추천</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="아이콘테스트" href="/25398803" style="">
                                아이콘테스트            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/46328f4b-393a-4aa9-ba60-89d8ac948830/1" align="absmiddle">                     곧군대감_쇼쿠판                </span>
            </div>
                    </div>

        <div class="list-time">
            06-16        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25369101"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="오랜만이네유~~" href="/25369101" style="">
                                오랜만이네유~~            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/46328f4b-393a-4aa9-ba60-89d8ac948830/1" align="absmiddle">                     1시니                </span>
            </div>
                    </div>

        <div class="list-time">
            06-15        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25185896"><div class="item">
        
        <div class="list-header v3">
            <span>3</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="누님 많이바쁘신가봐요" href="/25185896" style="">
                                누님 많이바쁘신가봐요            </a>

                        <small class="comment-count">[2]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/5d77fbf6-36bb-4d64-8806-f7137f3ea335/1" align="absmiddle">                     곧군대감_쇼쿠판                </span>
            </div>
                    </div>

        <div class="list-time">
            06-13        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25046752"><div class="item">
        
        <div class="list-header v4">
            <span>4</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="기다리다 지쳐서 만들어봄~" href="/25046752" style="">
                                기다리다 지쳐서 만들어봄~            </a>

                        <small class="comment-count">[3]</small>
            
            
            
            <div class="list-writer ">
                                <span>
                                        미니이                </span>
            </div>
                    </div>

        <div class="list-time">
            06-11        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-25023301"><div class="item">
        
        <div class="list-header v2">
            <span>2</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="기다리다 지쳐..." href="/25023301" style="">
                                기다리다 지쳐...            </a>

                        <small class="comment-count">[1]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                                        좀알려줘                </span>
            </div>
                    </div>

        <div class="list-time">
            06-10        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24899238"><div class="item">
        
        <div class="list-header v1">
            <span>1</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="그립읍니다......" href="/24899238" style="">
                                그립읍니다......            </a>

                        <small class="comment-count">[2]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                                        좀알려줘                </span>
            </div>
                    </div>

        <div class="list-time">
            06-09        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24871428"><div class="item">
        
        <div class="list-header v1">
            <span>1</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="잉?" href="/24871428" style="">
                                잉?            </a>

                        <small class="comment-count">[2]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/46328f4b-393a-4aa9-ba60-89d8ac948830/1" align="absmiddle">                     휴지맨                </span>
            </div>
                    </div>

        <div class="list-time">
            06-08        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24732586"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="도쿄 스테이크!" href="/24732586" style="">
                                도쿄 스테이크!            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        춤뱉지마                </span>
            </div>
                    </div>

        <div class="list-time">
            06-07        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24722801"><div class="item">
        
        <div class="list-header v1">
            <span>1</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="배고파앱으로 시켜먹었어요" href="/24722801" style="">
                                배고파앱으로 시켜먹었어요            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        sol2550                </span>
            </div>
                    </div>

        <div class="list-time">
            06-07        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24697810"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="배고파 앱으로 시켜먹었어요~!" href="/24697810" style="">
                                배고파 앱으로 시켜먹었어요~!            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        푸앤블                </span>
            </div>
                    </div>

        <div class="list-time">
            06-06        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24516757"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="완전ㅈㅁㅌ!!!" href="/24516757" style="">
                                완전ㅈㅁㅌ!!!            </a>

                        <small class="comment-count">[1]</small>
            
            
            
            <div class="list-writer ">
                                <span>
                                        필립스군                </span>
            </div>
                    </div>

        <div class="list-time">
            06-04        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24481168"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-picture-o"></i></span><a title="밥하기 귀찮아ㅜ" href="/24481168" style="">
                                밥하기 귀찮아ㅜ            </a>

                        <small class="comment-count">[1]</small>
            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/badges/v1/5d77fbf6-36bb-4d64-8806-f7137f3ea335/1" align="absmiddle">                     곧군대감_쇼쿠판                </span>
            </div>
                    </div>

        <div class="list-time">
            06-04        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24316851"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="컴퓨터에 유해한 보안 프로그램 삭제하는 법" href="/24316851" style="">
                                컴퓨터에 유해한 보안 프로그램 삭제하는 법            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        꼬망글3                </span>
            </div>
                    </div>

        <div class="list-time">
            06-02        </div>
    </div></div>

            <div class="article-list-row has-category   " id="article-list-row-24315954"><div class="item">
        
        <div class="list-header v0">
            <span>0</span>        </div>

        <div class="list-title">
            
                            <div class="list-category"><span class="category" style="color:#ff5000">자유게시판(친목금지)</span></div>
            
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a title="배고파 당첨자 푸앤블이에요! 시니님 감사해요!" href="/24315954" style="">
                 <i class="fa fa-lock"></i>                배고파 당첨자 푸앤블이에요! 시니님 감사해요!            </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                                        푸앤블                </span>
            </div>
                    </div>

        <div class="list-time">
            06-02        </div>
    </div></div>

    
    <div id="article-list-menu">
        <a href="/sinick0907?filter_mode=best" class="btn square btn-default best"><i class="fa fa-star"></i> 인기글</a>
                <ul class='pagination'><li class='disabled'><li class='active'><a href='#'>1<span class='sr-only'></span></a></li><li><a href="/sinick0907/page/2" data-ci-pagination-page="2">2</a></li><li><a href="/sinick0907/page/3" data-ci-pagination-page="3">3</a></li><li><a href="/sinick0907/page/4" data-ci-pagination-page="4">4</a></li><li><a href="/sinick0907/page/2" data-ci-pagination-page="2" rel="next">&gt;</a></ul>                <a href="/board/write/sinick0907" class="btn square btn-primary write"><i class="fa fa-pencil"></i> 글 쓰기</a>
            </div>

        <form class="input-group" method="get" action="/sinick0907" id="boardSearchForm">
                <input type="hidden" name="search_type" value="title" />
        <span class="input-group-btn">
            <button type="button" class="btn square btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="search-type-desc">제목</span> <span class="caret"></span></button>
            <div class="dropdown-menu">
                <li><a href="#" data-value="title">제목</a></li>
                <li><a href="#" data-value="titlecont">제목+내용</a></li>
                <li><a href="#" data-value="nickname">닉네임</a></li>
            </div>
        </span>
        <input type="text" name="search_term" class="form-control" placeholder="검색어" value="">
        <span class="input-group-btn">
            <button class="btn square btn-default" type="submit"><i class="fa fa-search"></i></button>
        </span>
    </form>
    </div>

<ul id="writerContextMenu" class="dropdown-menu" role="menu" style="display: none;">
    <li><a tabindex="-1" href="#">프로필</a></li>
    <li><a tabindex="-1" href="#">작성 글 보기</a></li>
    <li><a tabindex="-1" href="#">차단하기</a></li>
</ul>  
</div>         
 </div>        
		
<!-- -------------------------------------------------------------테스트 start-------------------------------------------------------------------- -->
	<%-- <div class="content_top" style="margin-left: 16%;margin-right: 16%;margin-top: 3%;margin-bottom: 2%;">
   		<div class="heading" >
   			<h3 style="font-weight:900;font-size: 1.5em;">Puasrchased List</h3>
   		</div>
   	</div>	
	<div>
			<table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트"style="margin-bottom: 1%;">
			<caption>게시판 리스트</caption>
				<colgroup>
					<col>
					<col width="5%">
					<col width="60%">
					<col width="10%">
					<col width="10%">
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
 --%>
<!-- ----------------------------s---------------------------------테스트 end-------------------------------------------------------------------- -->
		
		
<!-- ------------------------------------------------------------------페이지페이징 start--------------------------------------------------------------------		 -->
<%-- 	<div style="margin-left:43%; position: absolute; ">
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
					</div> --%>
<!-- ------------------------------------------------------------------페이지페이징 end--------------------------------------------------------------------		 -->


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
	<script src="viewbook/js/bookblock.min.js"></script>
	<script src="viewbook/js/classie.js"></script>
	<script src="viewbook/js/bookshelf.js"></script>
</body>
</html>