<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
		<link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="./viewbook/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="./viewbook/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="./viewbook/css/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="./viewbook/css/component.css" />
		<link href="./searchBook/css/style.css" rel="stylesheet" type="text/css" media="all"/>
		<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
		
		
		<link href="./vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
		<!-- Custom styles for this template -->
		<link href="./vendor/agency.min.css" rel="stylesheet">
		 <!-- Bootstrap core JavaScript -->
		  <script src="./vendor/jquery/jquery.min.js"></script>
		  <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		
		  <!-- Plugin JavaScript -->
		  <script src="./vendor/jquery"></script>
		  <!-- Contact form JavaScript -->
		  <script src="./vendor/js/jqBootstrapValidation.js"></script>
		  <script src="./vendor/js/contact_me.js"></script>
		
		  <!-- Custom scripts for this template -->
		  <script src="./vendor/js/agency.min.js"></script>
		
		
		<script src="./viewbook/js/modernizr.custom.js"></script>
		<script src="./ebook/reader/js/libs/jquery-3.4.1.js"></script>
		<script>
			$(document).ready(function() {
				$('.purchasedbook').on("click",function() {
					var isbn = $(this).attr('id');
					console.log(isbn);
					window.open('ebookPage?isbn=' + isbn);

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
		<div id="scroll-wrap">
			<header class="codrops-header">
				<div class="codrops-top clearfix">
<!-- 					<a class="codrops-icon codrops-icon-prev" href="homebutton"><span style="font-size:15px;">HOME</span></a> -->
						<div class="titlenaranhi" style="margin-right: -100px;">
						<h1><a href="homeButton" class="mainTitle" style="color: aliceblue;font-size:30px;padding-left:20px;">本ーE</a></h1>
						<span><a class="codrops-icon codrops-icon-prev" href="homebutton" style="font-size:10px;padding-left:20px;">Home</a></span>
						</div>
					<span class="right"><a class="codrops-icon codrops-icon-drop" href="logOut"><span style="font-size:17px;">Log Out</span></a></span>
				</div>
				<div class="logo">
<!-- 						<div class="titlenaranhi"><a href="homeButton"><img class="titleimage" src="./assets/images/main logo.jpg"></a></div> -->
				</div>
				<h1>My Page<span>for <a href="#">You</a></span></h1>
			</header>
		</div>
<!-- ------------------------------------------------------------------ 헤드 단 end --------------------------------------------------------------- -->
<!-- ------------------------------------------------------------------ mybooklist start ------------------------------------------------------- -->
			<div class="main">
				<div id="bookshelf" class="bookshelf">
					<figure>
						<c:forEach var="list" items="${blist}">
							<c:forEach var = "b" items = "${list}">
								<img src="${b.image}" class = "purchasedbook" id = "${b.isbn}" style="width:55%;">
							</c:forEach>
						</c:forEach>
							<div class="buttons">
								<font class = "purchasedbook" id = "${b.isbn}">Look inside</font>
								<a href="">Details</a>
							</div>
						<figcaption>
							<h2>
								<c:forEach var="list" items="${blist}">
									<c:forEach var = "b" items = "${list}">
										${b.title}
									</c:forEach>	
								</c:forEach>
								<span>
									<c:forEach var="list" items="${blist}">
										<c:forEach var = "b" items = "${list}">
											${b.author}
										</c:forEach>	
									</c:forEach>
								</span>
							</h2>
						</figcaption>
						<div class="details">
							<ul>
								<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua.</li>
								<li>Graham Press</li>
								<li>12.09.2010</li>
								<li>397 pages</li>
							</ul>
						</div>
					</figure>
					
					<figure>
						<div class="book" data-book="book-1"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>9 Lives <span>Andrew Hudson</span></h2></figcaption>
						<div class="details">
							<ul>
								<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua.</li>
								<li>Graham Press</li>
								<li>12.09.2010</li>
								<li>397 pages</li>
							</ul>
						</div>
					</figure>

			<!-- 여기는 내가 로그인했을경우 내가 구매한 책들을 E-BOOK으로 볼수 있게 나타내는 부분입니다. -->
			</div><!-- /main -->
			<div class="related">
				<h3>If you enjoyed this demo you might also like:</h3>
				<a href="http://tympanus.net/Development/AnimatedBooks/">
					<img src="http://tympanus.net/codrops/wp-content/uploads/2013/07/AnimatedBooks1-300x162.png" />
					<h3>Animated Books</h3>
				</a>
				<a href="http://tympanus.net/Development/3DBookShowcase/">
					<img src="http://tympanus.net/codrops/wp-content/uploads/2013/01/3DBookShowcase_Main-300x162.jpg" />
					<h3>3D Book Showcase</h3>
				</a>
			</div>
		</div><!-- /container -->

<div>
	<div class="row">
       <div class="col-md-4 col-sm-6 portfolio-item">
         <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
           <div class="portfolio-hover">
             <div class="portfolio-hover-content">
               <i class="fas fa-plus fa-3x"></i>
             </div>
           </div>
           <img class="img-fluid" src="./vendor/img/portfolio/01-thumbnail.jpg" alt="">
         </a>
         <div class="portfolio-caption">
           <h4>Threads</h4>
           <p class="text-muted">Illustration</p>
         </div>
       </div>
     </div>
</div>



<!-- ------------------------------------------------------------------ mybooklist end --------------------------------------------------------- -->
<!-- ---------------------------------------------view inside눌렀을떄 나타나는 부분 start---------------------------------------------------------------- -->
		<!-- Fullscreen BookBlock -->
		<!-- for demo purpose we repeat each bookblock -->
		<div class="bb-custom-wrapper" id="book-1">
			<div class="bb-bookblock">
				<div class="bb-item">
					<div class="bb-custom-side page-layout-3">
						<div>
							<h3>Portraits</h3>
							<p>Photography (1999 &ndash; 2013)</p>
						</div>
					</div>
					<div class="bb-custom-side page-layout-3">
					</div>
				</div>
				<div class="bb-item">
					<div class="bb-custom-side page-layout-1">
						<h3>
							Chapter 9 <span>Nomadic Lifestyle</span>
						</h3>
					</div>
					<div class="bb-custom-side page-layout-1">
						<p>Candy canes lollipop macaroon marshmallow gummi bears tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan cookie.</p>
					</div>
				</div>
				<div class="bb-item">
					<div class="bb-custom-side page-layout-2">
						<div>
							<h3>Aa</h3>
							<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé tootsie roll jelly beans. Sweet icing croissant dessert bear claw. Brownie dessert cheesecake danish jelly pudding bear claw soufflé.</p>
						</div>
						<div>
							<h3>Bb</h3>
							<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé tootsie roll jelly beans. Sweet icing croissant dessert bear claw. Brownie dessert cheesecake danish jelly pudding bear claw soufflé.</p>
						</div>
					</div>
					<div class="bb-custom-side page-layout-2">
						<div>
							<h3>Cc</h3>
							<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé tootsie roll jelly beans. Sweet icing croissant dessert bear claw. Brownie dessert cheesecake danish jelly pudding bear claw soufflé.</p>
						</div>
						<div>
							<h3>Dd</h3>
							<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé tootsie roll jelly beans. Sweet icing croissant dessert bear claw. Brownie dessert cheesecake danish jelly pudding bear claw soufflé.</p>
						</div>
					</div>
				</div>
			</div><!-- /bb-bookblock -->
			<nav>
				<a href="#" class="bb-nav-prev">Previous</a>
				<a href="#" class="bb-nav-next">Next</a>
				<a href="#" class="bb-nav-close">Close</a>
			</nav>
		</div><!-- /bb-custom-wrapper -->
<!-- -------------------------------------------------------------bookview클릭스나타나는 폼 end-------------------------------------------------- -->

		
<!-- -------------------------------------------------------------맨밑에 정보 start-------------------------------------------------------------- -->
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
<!-- ----------------------------------------------------------------------- 맨밑에 정보 end ------------------------------------------------------- -->
		<script src="./viewbook/js/bookblock.min.js"></script>
		<script src="./viewbook/js/classie.js"></script>
		<script src="./viewbook/js/bookshelf.js"></script>
	</body>
</html>
