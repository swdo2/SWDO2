<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./BookForm/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<%-- <script type="text/javascript" src="./BookForm/js/jquery-1.9.0.min.js"></script> --%>
<script type="text/javascript" src="./BookForm/js/move-top.js"></script>
<script type="text/javascript" src="./BookForm/js/easing.js"></script>
<script src = "./ebook/reader/js/libs/jquery-3.4.1.js"></script>
<link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
<link rel="shortcut icon" type="image/icon" href="./bootstrap/css/css.css"/>

<title>BookForm</title>
<script>
	$(document).ready(function() {

        $('.button2').on("click",function() {
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
		$('.addCart').on("click",function() {

			var bisbn = $(this).attr('id');

			$.ajax({
				url:'cart'
				,data:{book_isbn:bisbn}
				,type:'get'
				,dataType:'text'
				,success:function suc(e){
					alert(e);
				}
				,error:function sss(x){
					alert('실패 ㅠㅠ');
				}
			});


			console.log(bisbn);

			var blist = new Array();



		})
	})
</script>
</head>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="homeButton">Home</a></li> <!-- href식별자 작성해야합니다. -->
					</ul>
				</div>
				<c:if test="${sessionScope.loginId != null}">
					<div class="account_desc">
						<ul>
							<li><a href="myPageForm">My Page</a></li> <!-- href식별자 작성해야합니다. -->
					        <li><a href="logOut">LogOut</a></li><!-- href식별자 작성해야합니다. -->
						</ul>
					</div>
				</c:if>
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
								</ul></div>
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
   		</div>
   	</div>
   <div class="main">
   	 <div class="wrap">
   	 	<div class="content_top">
    		<div class="back-links">
    	    </div>
    		<div class="clear"></div>
    	</div>
   	 	<div class="section group">
				<div class="cont-desc span_1_of_2">
				  <div class="product-details">
				  <div>
				  <h2 class="headtitle">
						<c:forEach var="info" items="${bookInFo}">
							${info.title}
						</c:forEach>
				  </h2>
				  </div>
<!-- ----------------------------------상세 페이지 이미지 보여주는 부분 start------------------------------------------ -->
					<div class="grid images_3_of_2">
						<c:forEach var="info" items="${bookInFo}">
							<img src="${info.image}" style="width:90%; height:50%;">
						</c:forEach>
				    </div>
<!-- ----------------------------------상세 페이지 이미지 보여주는 부분 end------------------------------------------ -->
				<div class="desc span_3_of_2">
					<div class="price">
						<font style="font-size:1.3em;">Price:</font><span>
							<c:forEach var="info" items="${bookInFo}">
							   <font class="infoPrice">&#8361; ${info.price}  </font>
							 <font class="infoPrice1">  → &#8361; ${info.discount} </font>
							</c:forEach>
						</span>
					</div>
					<div class="available">
						<ul>
						  <li>
						  <!-- ----------------지은이 ------------------- -->
						  <span>AUTHOR:</span> &nbsp;
						  <c:forEach var="info" items="${bookInFo}">
								${info.author}
						  </c:forEach>
						  </li>
						  <li>
						  <!-- ----------------출판사 ------------------- -->
						  <span>PUBLISHER:</span> &nbsp;
						  <c:forEach var="info" items="${bookInFo}">
								 ${info.publisher}
						  </c:forEach>
						  </li>
						  <li>
						  <!-- --------------- 발행일 ------------------- -->
						  <span>PUBDATE:</span> &nbsp;
						  <c:forEach var="info" items="${bookInFo}">
								 ${info.pubdate}
						  </c:forEach>
						  </li>
						  <!-- --------------- ISBN ------------------- -->
						    <li style="font-size: 0.7em;text-align: right;">
						  <span>ISBN:</span> &nbsp;
						  <c:forEach var="info" items="${bookInFo}">
								 ${info.isbn}
						  </c:forEach>
						  </li>
					    </ul>
					</div>
				<div class="share-desc">
					<!-- <div class="share">
						<p>Number of units :</p><input class="text_box" type="text">
					</div> -->
					<div class="clear"></div>
				</div>
				 <div class="wish-list">
				 	<c:forEach var="info" items="${bookInFo}">
			 		<div class="button"><span class = "addCart" id = "${info.isbn}" ><a href="#" class="button1">Add to Cart</a></span></div>

			 		</c:forEach>
			 		<c:forEach var="info" items="${bookInFo}">
					<div class="button"><span><a href="#" id = "${info.isbn}" class= "button2" style="margin-right: 20px;">Purchase</a></span></div>
				 	</c:forEach>
				 </div>
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">
			 <h2>Details :</h2>
			   <p>
				   	<c:forEach var="info" items="${bookInFo}">
					  ${info.description}
					</c:forEach>
			   </p>
	   </div>
   </div>
<!-- -----------------------------------------------내가본상품 start------------------------------------------ -->
   				<div class="rightsidebar span_3_of_1 sidebar">
					<h2>最近みた商品</h2>
					  <c:forEach items = "${booklist}" var = "book" >
					 	<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href="BookForm?isbn=${book.isbn}"><img src="${book.image}" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><a href="BookForm?isbn=${book.isbn}">${book.title}</a></h3>
								   <p><span>&#8361;${book.price}</span> &nbsp; &#8361;${book.discount }</p>
								      <span id = "${book.isbn}" class = "addCart" ><a href="#">Add to Cart</a></span>
								 </div>
								<div class="clear"></div>
					 		</div>
				 	   </c:forEach>
			     </div>
<!-- -----------------------------------------------내가본상품 start------------------------------------------ -->
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
</body>
</html>
