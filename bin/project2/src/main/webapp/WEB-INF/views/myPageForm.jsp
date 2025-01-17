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
		<meta name="description" content="Book Preview with BookBlock" />
		<meta name="keywords" content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="viewbook/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="viewbook/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="viewbook/css/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="viewbook/css/component.css" />
		<script src="viewbook/js/modernizr.custom.js"></script>
		
	</head>
	<body>

		<div id="scroll-wrap" class="container">
			<header class="codrops-header">
				<div class="codrops-top clearfix">
					<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Tutorials/ShapeHoverEffectSVG/"><span>Previous Demo</span></a>
					<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=18228"><span>Back to the Codrops Article</span></a></span>
				</div>
				<h1>Book Preview <span>with <a href="http://tympanus.net/codrops/2012/09/03/bookblock-a-content-flip-plugin/">BookBlock</a></span></h1>	
			</header>
			<div class="main">
			안녕하세여 슈가 아유미 에요
			<c:forEach items="${blist}" var="list">
				<c:forEach items = "${list}" var = "b">
				<img src="${b.image}">
				</c:forEach>
			</c:forEach>
			
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
		<div class="bb-custom-wrapper" id="book-2">
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
		<div class="bb-custom-wrapper" id="book-3">
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
		<div class="bb-custom-wrapper" id="book-4">
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
		<div class="bb-custom-wrapper" id="book-5">
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
		<div class="bb-custom-wrapper" id="book-6">
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
		<div class="bb-custom-wrapper" id="book-7">
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
		<div class="bb-custom-wrapper" id="book-8">
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
		<div class="bb-custom-wrapper" id="book-9">
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
		<script src="viewbook/js/bookblock.min.js"></script>
		<script src="viewbook/js/classie.js"></script>
		<script src="viewbook/js/bookshelf.js"></script>
	</body>
</html>