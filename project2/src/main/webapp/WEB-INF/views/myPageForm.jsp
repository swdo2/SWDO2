<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>마이페이지</title>
		<meta name="description" content="My Page Book"/>
		<meta name="keywords" content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
		<meta name="author" content="Codrops" />
		<link href="./assets/images/favicon.ico" rel="shortcut icon" type="image/icon"/>  <!-- 홈피 아이콘 -->
		<link href="./viewbook/css/normalize.css" rel="stylesheet" type="text/css" />
		<link href="./viewbook/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="./viewbook/css/bookblock.css" rel="stylesheet" type="text/css" />
		<link href="./viewbook/css/component.css"rel="stylesheet" type="text/css" />
		<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- -----------------------------------------------details클릭하면 창뜨는 거 start---------------------------------------------- -->
		<!-- Bootstrap core CSS -->
		<link href="./bookdetails/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom fonts for this template -->
		<link href="./bookdetails/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

		<!-- Custom styles for this template -->
		<link href="./bookdetails/css/agency.min.css" rel="stylesheet">

		  <!-- Bootstrap core JavaScript -->

<!-- -----------------------------------------------details클릭하면 창뜨는 거 end---------------------------------------------- -->

<!-- ------------------------------------book보는 js start------------------------------------------------ -->
		<script src="./ebook/reader/js/libs/jquery-3.4.1.js"></script>
<!-- ------------------------------------book보는 js start------------------------------------------------ -->
<!-- --------------------------------------버튼 css,js부분 end ----------------------------- -->
		<link href="./button/css/style.css" rel="stylesheet" type="text/css" media="all"/>
		<link rel="stylesheet" type="text/css" href="./button/css/default.css" />
		<link rel="stylesheet" type="text/css" href="./button/css/component.css" />
<!-- --------------------------------------버튼 css,js부분 end ----------------------------- -->

		<script>
			$(document).ready(function() {
				$('.purchasedbook').on("click",function() {
					var isbn = $(this).attr('id');
					console.log(isbn);
					window.open('ebookPage?isbn=' + isbn);

				})
// 터치무브 및 마우스휠 스크롤 가능


				$('.clickku2').on("click", function() {
					$("#portfolioModal1").on("show", function () {
					  $("body").addClass("modal-open");
					}).on("hidden", function () {
					  $("body").removeClass("modal-open")
					});

					console.log('button click event');
					$('#detailtitle').html($(this).attr('title'));
					$('#detailauthor').html($(this).attr('author'));
					$('#detailpubdate').html($(this).attr('pubdate'));
					$('#detailimage').attr('src', $(this).attr('image'));
					$('#detailpublisher').html($(this).attr('publisher'));
					$('#detaildescription').html($(this).attr('description'));

					$('.portfolio-link').trigger("click");
				})


			})


		</script>
		<style>
			.purchasedbook {
				cursor: pointer;
			}
		</style>
	</head>
	<body>

<!-- ------------------------------------------------------------------ 헤드 단 start ------------------------------------------------------- -->
		<div id="scroll-wrap" style="padding-bottom: 2.5%;">
			<header class="codrops-header">
				<div class="codrops-top clearfix">
<!-- 					<a class="codrops-icon codrops-icon-prev" href="homebutton"><span style="font-size:15px;">HOME</span></a> -->
						<div class="titlenaranhi" style="margin-right: -100px;">
						<h1><a href="homeButton" class="mainTitle" style="color: aliceblue;font-size:30px;padding-left:20px; text-decoration: none;">本ーE</a></h1>
						<span><a class="codrops-icon codrops-icon-prev" href="homeButton" style="font-size:10px;padding-left:20px;text-decoration: none;">Home</a></span>
						</div>
					<span class="right"><a class="codrops-icon codrops-icon-prev" href="logOut" style="text-decoration: none;"><span style="font-size:17px;">Log Out</span></a></span>
					<span class="right"><a class="codrops-icon codrops-icon-prev" href="cartForm" style="text-decoration: none;"><span style="font-size:17px;">My Cart</span></a></span>
				</div>
				<div class="logo">
				</div>
				<h1>My Page<span>for <font style="font-size:30px;color:#FC7D01;font-weight:bold;">${loginId}</font><font style="font-size:30px;color:#fdff00;">様</font></span></h1>
			</header>
		</div>
<!-- ------------------------------------------------------------------ 헤드 단 end --------------------------------------------------------------- -->
<!-- ------------------------------------------------------------------ mybooklist start ------------------------------------------------------- -->
<!-- --------------------------------------------------------------------list 제목 start ------------------------------------------ -->
		<div class="content_top" style="width: 86%;margin-left: 7%;">
    		<div class="heading" >
    		<h3 style="font-weight:900;">Puasrchased List
<%-- 				 <c:forEach var="list" items="${blist}"> --%>
<%-- 					<c:forEach var = "b" items = "${list}"> --%>
<%-- 	   					<font>${total}個</font> --%>
<%-- 						</c:forEach> --%>
<%-- 					</c:forEach> --%>
			</h3>
    		</div>
    	</div>
<!-- ----------------------------------------------------------------------list 제목 end----------------------------------------------------------------------- -->
<!-- ----------------------------------------------------------------------책출력되는 부분 start----------------------------------------------------------------------- -->			
	<div style="position:absolute;">	
		<div class="main" style="margin-left:9%;margin-bottom: 40%;height: 75%;">
			<div class="listDiv" style="margin-bottom:10px;">
	   			<c:forEach var="list" items="${blist}">
					<c:forEach var = "b" items = "${list}">
						<div class="grid_1_of_5 images_1_of_5" style="height: 414.7px;">
							 <div class="imageshover1" style="height: 260px;">
						 		<a href="BookForm?isbn=${b.isbn}" class="imageshover2" ></a>
						 		<img src="${b.image}" alt="すみませんが、準備しています。" style="height:260px;">
							 </div>
							 <h2><a href="BookForm?isbn=${b.isbn}" class="searchBookLiskTitle" style="width:100%;">${b.title}</a></h2>
							<div class="price-details">
					       		<div class="add-cart1">
									<div class="clickku2" style="width: 49%;" title = "${b.title}" isbn = "${b.isbn}" image = "${b.image}" author = "${b.author}" publisher = "${b.publisher}"
										pubdate = "${b.pubdate}" description = "${b.description}"><a style="color:aliceblue;"><button class="btn btn-51 btn-5a icon-plus" style="width: 85%;"><span>Details</span></button></a></div>
									<div class="clickku3" style="width: 48%;" id = "${b.isbn}"><a style="color:aliceblue;"><button class="btn btn-5 btn-5a icon-arrow-right" style="width:85%;"><span>E-BOOK</span></button></a></div>
	
						        </div>
								<div class="clear"></div>
							</div>
						</div>
					</c:forEach>
				</c:forEach>
			</div>
	</div>
<!-- 			<div class="footer"> -->
<!--    	  <div class="wrap"> -->
	   
<!--         </div> -->
<!--     </div> -->
	<div>
		<div class="section group" style="position: relative;padding-left: 3%;padding-top: 2%;">
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
<!-- ----------------------------------------------------------------------책출력되는 부분 end----------------------------------------------------------------------- -->				
<!-- ----------------------------------------------------------------------details 클릭했을때 start ---------------------------------------------------- -->
<div>
	<div class="row">
       <div class="col-md-4 col-sm-6 portfolio-item">
         <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1"></a>
       </div>
     </div>
</div>
<!-- -------------------------------------------------------------details 클릭했을때 end ---------------------------------------------------- -->
<!-- -----------------------------------details 클릭한후 row 에서 href로 이동해서 너머어오고 화면이 나옵니다 start ---------------------------------------------------- -->
 <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="width:50%;margin-left: 25%;">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase" id = "detailtitle"></h2>

                <img id = "detailimage" class="img-fluid d-block mx-auto" src="" alt="すみませんが、準備しています。">

                <ul class="list-inline">
                  <li id = "detailauthor"></li>
                  <li id = "detailpubdate"></li>
                  <li id = "detailpublisher"></li>
                </ul>
				<div id = "detaildescription">

				</div>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project
                  </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<!-- -----------------------------------details 클릭한후 row 에서 href로 이동해서 너머어오고 화면이 나옵니다 end ---------------------------------------------------- -->
<!-- -------------------------------------------------------------맨밑에 정보 start-------------------------------------------------------------- -->
   
<!-- ----------------------------------------------------------------------- 맨밑에 정보 end ------------------------------------------------------- -->
		<script src="./bookdetails/vendor/jquery/jquery.min.js"></script>
		<script src="./bookdetails/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="./bookdetails/vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Contact form JavaScript -->
		<script src="./bookdetails/js/jqBootstrapValidation.js"></script>
		<script src="./bookdetails/js/contact_me.js"></script>

		<!-- Custom scripts for this template -->
		<script src="./bookdetails/js/agency.min.js"></script>
	</body>
</html>
