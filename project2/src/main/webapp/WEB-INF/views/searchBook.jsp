<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>searchBook</title>
	<!-- 탭 아이콘 이미지 -->
    <link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="./searchBook/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
	<script type="text/javascript" src="./searchBook/js/jquery-1.9.0.min.js"></script> 
	<script type="text/javascript" src="./searchBook/js/move-top.js"></script>
	<script type="text/javascript" src="./searchBook/js/easing.js"></script>
	<script type="text/javascript" src="./searchBook/js/jquery.nivo.slider.js"></script>
<style>
html {overflow:scroll}
</style>
</head>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script>
<script>
	function pagingFormSubmit(currentPage) {
		var form = document.getElementById('pagingForm');
		var page = document.getElementById('page');
		page.value = currentPage;
		form.submit();
	}
</script>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="index.html">Home</a></li>
					</ul>
				</div>
					<div class="account_desc">
						<ul>
							<li><a href="myPageForm">My Page</a></li> <!-- href식별자 작성해야합니다. -->
					        <li><a href="logOut">LogOut</a></li><!-- href식별자 작성해야합니다. -->
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		<div class="wrap">
				<div class="header_top">
					<div class="logo">
						<div class="titlenaranhi"><a href="homeButton"><img class="titleimage" src="./assets/images/main logo.jpg"></a></div>
						<div class="titlenaranhi"><h1><a href="homeButton" class="mainTitle">本ーE</a></h1></div>
					</div>
						<div class="header_top_right">
						  <div class="cart">
						  	   <p><span>Cart</span><div id="dd" class="wrapper-dropdown-2"> (empty)
						  	   	<ul class="dropdown">
										<li>you have no items in your Shopping cart</li>
								</ul></p></div>
						  </div>
							  <div class="search_box">
							  <form action="searchBook" >   <!-- <<<<<<<<<<<<<<<<여기 가 검색 부분 액션 이름 단 입니다. -->
									<b><input type="text" name="bookTitle" placeholder="Search..." required="검색어를 입력하세요...." maxlength="25"></b>	
									<input type="submit" value="">					
							  </form>
					      </div>
						 <div class="clear"></div>
					</div>
						  <script type="text/javascript">
								function DropDown(el) {
									this.dd = el;
									this.initEvents();
								}
								DropDown.prototype = {
									initEvents : function() {
										var obj = this;
					
										obj.dd.on('click', function(event){
											$(this).toggleClass('active');
											event.stopPropagation();
										});	
									}
								}
					
								$(function() {
					
									var dd = new DropDown( $('#dd') );
					
									$(document).click(function() {
										// all dropdowns
										$('.wrapper-dropdown-2').removeClass('active');
									});
					
								});
					    </script>
			 <div class="clear"></div>
  		</div>     
				<div class="header_bottom">
					<div class="header_bottom_left">				
						<div class="categories">
						   <ul>
						  	   <h3>Categories</h3>
							      <li><a href="#">All</a></li>
							      <li><a href="#">Hindi</a></li>
							      <li><a href="#">Telugu</a></li>
							      <li><a href="#">English</a></li>
							      <li><a href="#">Tamil</a></li>
							       <li><a href="#">Malayalam</a></li>
							       <li><a href="#">Kannada</a></li>
							       <li><a href="#">Bengali</a></li>
							       <li><a href="#">Assami</a></li>
							       <li><a href="#">Kids</a></li>
							       <li><a href="#">Animation</a></li>
							       <li><a href="#">Games</a></li>
						  	 </ul>
						</div>					
		  	         </div>
						    <div class="header_bottom_right">					 
						 	    <!------ Slider ------------>
								  <div class="slider">
							      	<div class="slider-wrapper theme-default">
							            <div id="slider" class="nivoSlider">
							                <img src="./searchBook/images/1.jpg" data-thumb="./searchBook/images/1.jpg" alt="" />
							                <img src="./searchBook/images/2.jpg" data-thumb="./searchBook/images/2.jpg" alt="" />
							                <img src="./searchBook/images/3.jpg" data-thumb="./searchBook/images/3.jpg" alt="" />
							                <img src="./searchBook/images/4.jpg" data-thumb="./searchBook/images/4.jpg" alt="" />
							                 <img src="./searchBook/images/5.jpg" data-thumb="./searchBook/images/5.jpg" alt="" />
							            </div>
							        </div>
						   		</div>
						<!------End Slider ------------>
			         </div>
			     <div class="clear"></div>
			</div>
   		</div>
   </div>
   <!------------End Header ------------>
  <div class="main">
  	<div class="wrap">
      <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Search Result</h3>
    		</div>
    	</div>
<!-- ------------------------------------------------------ 1번째줄 start------------------------------------------------   --->    	
	      <div class="section group">
<!-- --------------------------------------------한개씩 보여주는 부분 start------------------------------------- -->
   			<c:forEach var="list" items="${blist}">
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="BookForm?isbn=${list.isbn}"><img src="${list.image}"></a>
					 <h2><a href="#">${list.title}</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">${list.publisher}</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="#">Add to Cart</a></h4>
									<h4><a href="#">E-Book</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
			</c:forEach>
<!--  --------------------------------------한개씩 보여주는 부분 end------------------------------------- -->
			</div>
		</div>
<!-- ------------------------------------------------------ 1번째줄 end------------------------------------------------   --->       

<!-- ------------------------------------------------------ 2번째줄 start------------------------------------------------   --->
		<div class="section group">
<!-- --------------------------------------------한개씩 보여주는 부분 start------------------------------------- -->
			<c:forEach var="list" items="${blist}">
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="preview.html"><img src="./searchBook/images/beauty_and_the_beast.jpg" alt="" /></a>
					 <h2><a href="preview.html">Beauty and the beast</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">$620.87</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
			</c:forEach>				
<!--  --------------------------------------한개씩 보여주는 부분 end------------------------------------- -->				
       </div>
<!-- ------------------------------------------------------ 2번째줄 end------------------------------------------------   --->       
  </div>
</div>
<!-- ----------------------------------------------맨밑에 정보 start------------------------------------------ -->
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
   <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
    
<!-- ----------------------------------------------맨밑에 정보 end------------------------------------------ -->
<!------------------------------------------------ 검색 결과 Form Start-------------------------------------- --> 
검색 결과 ${total}개가 검색 되었습니다.
  <div>
	<table border="1">
		<tr align="center">
			<td>표지</td> <td>제목</td> <td>가격</td>
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
						<p>제목 : ${list.title}</p> 
						<p>네이버 링크: ${list.link}</p>
						<p>지은이: ${list.author}</p>
						<p>할인가격: ${list.discount}</p>
						<p>출판사: ${list.publisher}</p>
						<p>출간일: ${list.pubdate}</p>
						<p>책코드넘버: ${list.isbn}</p>
						<p>책 소개: ${list.description}</p>
				
					</td>
					<td>
						<!-- 가격 -->
						${list.price}
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
<!-- 	//페이징 찍어보기 -->
	현재페이지${pagenaviga.currentPage}<br>
	${pagenaviga.currentPage - pagenaviga.pagePerGroup}<br>
	현재데피이지 그룹${pagenaviga.startPageGroup}<br>

<!-- 	//페이징용 -->
	<a href="javascript:pagingFormSubmit(${pagenaviga.currentPage - pagenaviga.pagePerGroup})">◁◁ </a> &nbsp;&nbsp;
		<a href="javascript:pagingFormSubmit(${pagenaviga.currentPage - 1})">◀</a> &nbsp;&nbsp;
	
		<c:forEach var="counter" begin="${pagenaviga.startPageGroup}" end="${pagenaviga.endPageGroup}"> 
			<c:if test="${counter == pagenaviga.currentPage}"><b></c:if>
				<a href="javascript:pagingFormSubmit(${counter})">${counter}</a>&nbsp;
			<c:if test="${counter == pagenaviga.currentPage}"></b></c:if>
		</c:forEach>
		&nbsp;&nbsp;
		<a href="javascript:pagingFormSubmit(${pagenaviga.currentPage + 1})">▶</a> &nbsp;&nbsp;
		<a href="javascript:pagingFormSubmit(${pagenaviga.currentPage + pagenaviga.pagePerGroup})">▷▷</a>
	
<!-- 	///여기까지 페이징할 코드 -->
	
<!-- 	//여기서부터 검색 활용 할곳 -->
	<form id="pagingForm" method="get" action="searchBook">
	<input type="hidden" id="page" name="page" />
		<select name="searchform">
			<option>제목</option>
			<option>작가</option>
			<option>출판사</option>
		</select>
	 <input type="text"  name="bookTitle" placeholder="검색하시오"  value="${searchText}"/>
	<input type="button" onclick="pagingFormSubmit(1);" value="검색">
	</form>
	
<!-- 	//검색 활용 끝부분 -->
	<div>
		<div class="ss_book_box" itemId="205390672">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="25" align="left" valign="top" style="padding-right:5px;">
 <table width="18" border="0" cellspacing="0" cellpadding="0">
 <tr><td><div style="text-align: center;">1.</div></td></tr> <tr><td><div style="text-align: center;"><input name="chkCart.K382635653" type="checkbox" /></div></td></tr> </table>

 </td>
 <td width="170" align="left" valign="top">
 <table width="150" border="0" cellpadding="0" cellspacing="0">
 <tr><td style=""><div style="position:relative;"><a href="http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=205390672"><img src="https://image.aladin.co.kr/product/20539/6/cover150/k382635653_1.jpg" width="150" border="0" class="i_cover" /></a></div></td></tr>
<tr><td style="text-align: left;"><a href="http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=205390672" target="_blank"><img src="//image.aladin.co.kr/img/search/icon_new2.gif" border="0" /></a><a href="/shop/book/wletslookViewer.aspx?ISBN=K382635653" target="_blank"><img src="//image.aladin.co.kr/img/search/icon_pre.gif" border="0" /></a></td></tr> </table>

 </td>
 <td width="*" align="left" valign="top">
     <table width="100%" border="0" cellspacing="0" cellpadding="0" >
     <tr>
     <td width="*" valign="top">
 <div class="ss_book_list"><ul>
<li><a href="http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=205390672" class="bo3"><b>공포의 천사</b></a> <span style="color: #777777">ㅣ</span> <a href="http://www.aladin.co.kr/shop/common/wseriesitem.aspx?SRID=671906" class="ss_f_g2">에드거 월리스 미스터리 걸작선 4</a>&nbsp;</li>
 <li><a href="/Search/wSearchResult.aspx?AuthorSearch=에드거+월리스@297045&BranchType=1">에드거 월리스</a> (지은이), <a href="/Search/wSearchResult.aspx?AuthorSearch=양원정@5503593&BranchType=1">양원정</a> (옮긴이) | <A href='/search/wsearchresult.aspx?PublisherSearch=%be%e7%c6%c4(%b5%b5%bc%ad%c3%e2%c6%c7)@300105&BranchType=1' >양파(도서출판)</A> | 2019년 8월</li><li><span class="">12,800</span>원 → <span class="ss_p2" ><b><span class="">11,520</span>원</b></span> (<span class="ss_p">10%</span>할인),  마일리지 <span class="ss_p">640</span>원 (<span class="ss_p">5%</span> 적립)</li> </ul></div>

<div class="ss_book_list"><ul>
<li>지금 <strong>택배</strong>로 주문하면 <strong>8월 30일 출고</strong><div>최근 1주 97.8% (중구 중림동) <img src="//image.aladin.co.kr/img/shop/2012/bu_driveaway_ch.gif" onclick="FindZipByList('addInputShop_205390672');" style="cursor:pointer;vertical-align:middle;margin:-3px 0 0 0px;" alt="지역변경" /><span id="addInputShop_205390672"></span></div></li></ul></div>

     </td>
     <td width="80" valign="top">
<div class="book_Rfloat_02"><div class="button_search_cart_new"><a href="/shop/wbasket.aspx?AddBook=K382635653" onclick="return SafeBasket_ListOneAddByAjax('K382635653', document.getElementById('divBasketAddResult_K382635653'), {top: 0, left: -55});">장바구니</a></div><div id="divBasketAddResult_K382635653"></div><div class="button_search_buyitnow_new"><a href="https://www.aladin.co.kr/order/worder_chk_order.aspx?CartType=4&ISBN=K382635653" onclick="return QuickBuyCheck('K382635653');">바로구매</a></div><div class="Search3_Result_SafeBasketArea" isbn="K382635653" style="position: relative;"><div class="button_search_storage"><a href="javascript:void(0);" >보관함 <img alt="" src="//image.aladin.co.kr/img/search/btn_bg5_arrow.png"></a></div> <ul class="mylist Search3_Result_SafeBasketLayer" isbn="K382635653" style="display: none;"><li><a href="javascript:void(0);" onclick="return AddSafeBasket('K382635653');">보관함</a></li><li><a href="javascript:void(0);" onclick="return AddMyList('K382635653');">마이리스트</a></li> </ul>
</div></div>
     </td>
     </tr>
     <tr>
     <td colspan="2">
<p class="ss_promotion">제임스 메레디스는 약혼녀 진 브리거랜드의 위증으로 살인죄를 뒤집어쓰고 사형을 언도받는다. 재산을 노린 약혼녀의 음모인 것을 굳게 믿는 메레디스의 친구이자 변호사인 잭 글로버는 메레디스의 목숨과 재산을 지키기로 결심하고 리디아 베일을 찾아가 메레디스와 결혼해줄 것을 제안한다.</p>     </td>
     </tr>
     </table>
 </td>
 </tr>
 </table>
 </div>
		
	
	</div>
	
<!------------------------------------------------ 검색 결과 Form end-------------------------------------- -->	
</body>
</html>