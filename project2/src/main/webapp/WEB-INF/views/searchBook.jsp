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
    <script href="./ebook/js/libs/jquery-3.4.1.js"></script>
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
    $(document).ready(function() {
        $('.clickku1').on("click",function() {
            var isbn = $(this).attr('id');
            $.ajax({
            	url : 'purchase'
            	,data : {isbn : isbn}
            	,dataType : 'text'
                ,type : "get"
            	,success : function(cnt) {
                    if(cnt == 0 ) {
                        if(confirm("책을 구매 하였습니다. 마이페이지로 가시겠습니까?")) {
                            window.location.href = "myPageForm";
                        }
                    } else {
                        alert('이미 구매한 책입니다.');
                    }
            	}
            	,error : function() {
            		console.log('dup_purchase error');
            	}
            })
        })
    })
</script>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="homeButton">Home</a></li>
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
							                <c:forEach var="list" items="${blist}">
							                	 <a href="BookForm?isbn=${list.isbn}"><img src="${list.image}" alt="이미지 준비중" style="width:899.35px; height:450px;"></a>
							                </c:forEach>
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
    		<h3 style="font-weight:600;">Search Result : <font style="font-weight:900;font-size:27px; color:#1000ff;">${total}個</font></h3>
    		</div>
    	</div>
<!-- ------------------------------------------------------ 1번째줄 start------------------------------------------------   --->
	      <div class="section group">
<!-- --------------------------------------------한개씩 보여주는 부분 start------------------------------------- -->
   			<div class="listDiv">
	   			<c:forEach var="list" items="${blist}">
					<div class="grid_1_of_5 images_1_of_5">
						 <a href="BookForm?isbn=${list.isbn}"><img src="${list.image}"></a>
						 <h2><a href="BookForm?isbn=${list.isbn}" class="searchBookLiskTitle">${list.title}</a></h2>
						<div class="price-details">
					       <div class="price-number">
								<span class="rupees1" >&#8361;${list.price}</span><font style="font-size:20px; font-weight:700;"> > </font>
								<font style="font-size:21px;">&#8361;</font><span class="rupees2">${list.discount}</span>
						    </div>
					       		<div class="add-cart1">
									<div class="clickku"><a href="#" style="color:aliceblue;">Add to Cart</a></div>
									<div class="clickku1" id = "${list.isbn}"><a style="color:aliceblue;">E-Book</a></div>

						        </div>
								<div class="clear"></div>
						</div>
					</div>
				</c:forEach>
			</div>
<!-- ----------------------------------------------------------페이징폼 start-------------------------------------------------- -->
	<div class="pagingForm">
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
	</div>
<!-- ----------------------------------------------------------검색폼 start------------------------------------------------- -->
	<div class="pagingSearchForm">
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
	</div>
<!-- ----------------------------------------------------------검색폼 end-------------------------------------------------- -->
		</div>
		</div>
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

<!-- 	//페이징 찍어보기 -->
	현재페이지${pagenaviga.currentPage}<br>
	${pagenaviga.currentPage - pagenaviga.pagePerGroup}<br>
	현재데피이지 그룹${pagenaviga.startPageGroup}<br>
</body>
</html>
