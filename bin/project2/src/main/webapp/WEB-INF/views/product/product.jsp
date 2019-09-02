<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>Product</title>
<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Book Preview with BookBlock" />
		<meta name="keywords" content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="assets/images/favicon.ico">
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
				</div>
				<h1>Book Preview <span>with <a href="http://tympanus.net/codrops/2012/09/03/bookblock-a-content-flip-plugin/">BookBlock</a></span></h1>	
			</header>
			<div class="main">
			<!-- 여기는 내가 로그인했을경우 내가 구매한 책들을 E-BOOK으로 볼수 있게 나타내는 부분입니다. -->
			<div id="bookshelf" class="bookshelf">
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
					<figure>
						<div class="book" data-book="book-2"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>Life of a worm <span>Will Flores</span></h2></figcaption>
						<div class="details">
							<ul>
								<li>Understanding the life of a worm can be enlightening to anybody. Dive into the micro cosmos of a creeping and burrowing invertebrate and learn how a limbless little creature reaches happiness.</li>
								<li>Graham Press</li>
								<li>12.09.2010</li>
								<li>397 pages</li>
							</ul>
						</div>
					</figure>
					<figure>
						<div class="book" data-book="book-8"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>Lemon Rainbow <span>Christa Hausmann</span></h2></figcaption>
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
						<div class="book" data-book="book-3"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>Structure and Space <span>Carol Winter</span></h2></figcaption>
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
						<div class="book" data-book="book-4"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>The Rock Enigma <span>Walter C. Hamilton</span></h2></figcaption>
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
						<div class="book" data-book="book-5"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>An Introduction to Neural Science <span>Simon Abramovich</span></h2></figcaption>
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
						<div class="book" data-book="book-6"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>Life in Transit <span>Marina Dokova</span></h2></figcaption>
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
						<div class="book" data-book="book-7"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>Architecture <span>Ryan Cooper</span></h2></figcaption>
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
						<div class="book" data-book="book-9"></div>
						<div class="buttons"><a href="#">Look inside</a><a href="#">Details</a></div>
						<figcaption><h2>Digital Nomads <span>Kenny Garcia</span></h2></figcaption>
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
				</div>
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

</body>
</html>