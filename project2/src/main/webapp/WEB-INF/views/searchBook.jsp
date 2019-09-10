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
                    } else if (cnt == 2){
                    	alert('로그인후 이용해주세요');
                    	window.location.href = "homeButton";
                    } 
                    
                    else {
                        alert('이미 구매한 책입니다.');
                    }
            	}
            	,error : function() {
            		console.log('dup_purchase error');
            	}
            })
        })
        $('.clickku').on("click",function() {
            var isbn = $(this).attr('id');
            $.ajax({
                url : 'savecart'
                ,data : {isbn : isbn}
                ,dataType : 'text'
                ,type : "get"
                ,success : function(cnt) {
                    if(cnt == 0 ) {
                        if(confirm("책을 장바구니에 담았습니다. 장바구니로 가시겠습니까?")) {
                            window.location.href = "cartForm";
                        }
                    }else if (cnt == 2){
                    	alert('로그인후 이용해주세요');
                    	window.location.href = "homeButton";
                    } 
                    
                    else {
                        alert('이미 장바구니에 있는 책입니다..');
                    }
                }
                ,error : function() {
                    alert('.clickku에러')
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
							<li><a href="cartForm">My Cart</a></li> 
							<li><a href="myPageForm">My Page</a></li> 
					        <c:if test="${sessionScope.loginId != null }">
					        <li><a href="logOut">LogOut</a></li>
					        </c:if>
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		<div class="wrap" style="margin-left: 12%;">
				<div class="header_top">
					<div class="logo">
						<div class="titlenaranhi"><a href="homeButton"><img class="titleimage" src="./assets/images/main logo.jpg" ></a></div>
						<div class="titlenaranhi"><h1><a href="homeButton" class="mainTitle" ">本ーE</a></h1></div>
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
				<div class="header_bottom" style="width:100%;">
					<div class="header_bottom_left" style="position: absolute; margin-left:6%;">
						<div class="categories" style="margin-left:27%;margin-right:30%;width:70%;">
						   <ul>
						  	   <h3>Categories</h3>
							      <li><a href="searchBook?bookTitle=${searchText}">All</a></li>
							      <li><a href="searchBook?bookTitle=${searchText}&d_catg=100">소설</a></li>
							      <li><a href="searchBook?bookTitle=${searchText}&d_catg=110">시/에세이</a></li>
							      <li><a href="searchBook?bookTitle=${searchText}&d_catg=120">인문</a></li>
							      <li><a href="searchBook?bookTitle=${searchText}&d_catg=130">가정/생활/요리</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=140">건강</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=150">취미/레저</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=160">경제/경영</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=170">자기개발</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=180">사회</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=190">역사/문화</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=200">종교</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=210">예술/대중문화</a></li>
							       <li><a href="searchBook?bookTitle=${searchText}&d_catg=220">학습/참고서</a></li>
						  	 </ul>
						</div>
		  	         </div>
						    <div class="header_bottom_right" style="margin-left: 48%;">
						 	    <!------ Slider ------------>
								  <div class="slider">
							      	<div class="slider-wrapper theme-default">
							            <div id="slider" class="nivoSlider" style="box-shadow: 5px 5px 7px rgba(230, 181, 4, 0.62);border: 1px solid #ff8e01;border-radius: 12px;"">
													<!-- padding: 2em; -->
							                <c:forEach var="list" items="${blist}">
							                	 <a href="BookForm?isbn=${list.isbn}" >
							                	 	<img src="${list.image}" alt="すみませんが、準備しています。" style="width:520px; height:610px;">
							                	 </a>
							                </c:forEach>
							                
							            </div>
							         </div>
							      </div> 
					   		</div>
						<!------End Slider ------------>
			         </div>
			     <div class="clear"></div>
			</div>
   		</div>
   <!------------End Header ------------>
  <div class="main">
  	<div class="wrap" style="margin-left: 12%;">
      <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3 style="font-weight:600;">Search Result : <font style="font-weight:900;font-size:27px; color:#1000ff;">${total}個</font></h3>
    		</div>
    	</div>
<!-- ------------------------------------------------------ 1번째줄 start------------------------------------------------   --->
	      <div class="section group">
<!-- --------------------------------------------한개씩 보여주는 부분 start------------------------------------- -->
   			<div class="listDiv" style="margin-right:-3%; margin-left: 2%;">
	   			<c:forEach var="list" items="${blist}" >
					<div class="grid_1_of_5 images_1_of_5" style="height: 375px;box-shadow: 4px 3px 3px rgba(189, 149, 4, 0.53);border: 1px solid #ff8e01;margin-right:10px;">
					  <div style="height:260px;">
						 <a href="BookForm?isbn=${list.isbn}"><img src="${list.image}"  alt="すみませんが、準備しています。" style="height:260px;"></a>
					  </div>						 
							 <div class="explain1">
							 	<div class="explain2">
<!-- 							 	<span class="explain3">sss</span> -->
							 		<h2 class="explain3"><a href="BookForm?isbn=${list.isbn}" class="searchBookLiskTitle" style="width: 100%;">${list.title}</a></h2>
							 		<p class="explain4"><font style="color:black;font-weight:bold;">${list.title}</font></p>
							 	</div>
							 </div>
						<div class="price-details">
					       <div class="price-number">
								<span class="rupees1" >&#8361;${list.price}</span><font style="font-size:20px; font-weight:700;"> > </font>
								<font style="font-size:21px;">&#8361;</font><span class="rupees2">${list.discount}</span>
						    </div>
					       		<div class="add-cart1" style="margin-left: 0%;">
									<div class="clickku" style="cursor:pointer;position: absolute;width:35%;" id = "${list.isbn}"><a style="color:aliceblue;"><font style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">Add to Cart</font></a></div>
									<div class="clickku1" style="cursor:pointer;position: absolute;width: 36%;margin-left: 46%;" id = "${list.isbn}"><a style="color:aliceblue;cursor:pointer"><font style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">PurChase</font></a></div>

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
			<c:if test="${counter == pagenaviga.currentPage}"><u></c:if>
				<a href="javascript:pagingFormSubmit(${counter})">${counter}</u></a>&nbsp;
			<c:if test="${counter == pagenaviga.currentPage}"></c:if>
		</c:forEach>
		&nbsp;&nbsp;
		<a href="javascript:pagingFormSubmit(${pagenaviga.currentPage + 1})">▶</a> &nbsp;&nbsp;
		<a href="javascript:pagingFormSubmit(${pagenaviga.currentPage + pagenaviga.pagePerGroup})">▷▷</a>
	</div>
<!-- ----------------------------------------------------------검색폼 start------------------------------------------------- -->
	<div class="pagingSearchForm">
      <form id="pagingForm" method="get" action="searchBook">
      <input type="hidden" id="page" name="page" />
      <!--    <select name="searchform">
            <option>제목</option>
            <option>작가</option>
            <option>출판사</option>
         </select> -->
       <input type="hidden"  name="bookTitle" placeholder="검색하시오"  value="${searchText}"/>
      <input type="hidden" onclick="pagingFormSubmit(1);" value="검색">
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
</body>
</html>
