<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>本ーE</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="./resources/assets/images/favicon.ico"/>
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="./resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Slick slider -->
    <link href="./resources/assets/css/slick.css" rel="stylesheet">
    <!-- Theme color -->
    <link id="switcher" href="./resources/assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="./resources/assets/css/style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Open Sans for body font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800" rel="stylesheet">
    <!-- Lato for Title -->
  	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"> 
 
 
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="./favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="./resources/loginresources/css/style.css" />
        <script src="resources/loginresources/js/modernizr.custom.63321.js"></script>
        <!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>
			body {
				background: #e1c192 url(./resources/loginresources/images/wood_pattern.jpg);
			}
		</style>
				<!-- jQuery if needed -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript">
			$(function(){
			    $(".showpassword").each(function(index,input) {
			        var $input = $(input);
			        $("<p class='opt'/>").append(
			            $("<input type='checkbox' class='showpasswordcheckbox' id='showPassword' />").click(function() {
			                var change = $(this).is(":checked") ? "text" : "password";
			                var rep = $("<input placeholder='Password' type='" + change + "' />")
			                    .attr("id", $input.attr("id"))
			                    .attr("name", $input.attr("name"))
			                    .attr('class', $input.attr('class'))
			                    .val($input.val())
			                    .insertBefore($input);
			                $input.remove();
			                $input = rep;
			             })
			        ).append($("<label for='showPassword'/>").text("Show password")).insertAfter($input.parent());
			    });

			    $('#showPassword').click(function(){
					if($("#showPassword").is(":checked")) {
						$('.icon-lock').addClass('icon-unlock');
						$('.icon-unlock').removeClass('icon-lock');    
					} else {
						$('.icon-unlock').addClass('icon-lock');
						$('.icon-lock').removeClass('icon-unlock');
					}
			    });
			});
		</script>
  </head>

  <body>
 	<!-- Start Header -->
	<header id="mu-header" class="" role="banner">
		<div class="container">
			<nav class="navbar navbar-default mu-navbar">
			  	<div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>

				      <!-- Text Logo -->
				      <a class="navbar-brand" href="index.html"><i class="fa fa-book" aria-hidden="true"></i> 本ーE</a>

				      <!-- Image Logo -->
				      <!-- <a class="navbar-brand" href="index.html"><img src="./resources/assets/images/logo.png"></a> -->


				    </div>

				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      	<ul class="nav navbar-nav mu-menu navbar-right">
					        <li><a href="#">E-BOOK</a></li>
					        <li><a href="#mu-book-overview">장바구니</a></li>
					        <li><a href="#mu-author">고객센터</a></li>
				            <li><a href="#mu-pricing">로그인</a></li>
				            <li><a href="#mu-testimonials"></a></li>
				            <li><a href="#mu-contact"></a></li>
				      	</ul>
				    </div><!-- /.navbar-collapse -->
			  	</div><!-- /.container-fluid -->
			</nav>
		</div>
	</header>
	<!-- End Header -->

	<!-- Start Featured Slider -->

	<section id="mu-hero">
		<div class="container">
			<div class="row">

				<div class="col-md-6 col-sm-6 col-sm-push-6">
					<div class="mu-hero-right">
						<section class="main">
								<form class="form-2">
									<h1><span class="log-in">Log in</span> or <span class="sign-up">sign up</span></h1>
									<p class="float">
										<label for="login"><i class="icon-user"></i>Username</label>
										<input type="text" name="login" placeholder="Username or email">
									</p>
									<p class="float">
										<label for="password"><i class="icon-lock"></i>Password</label>
										<input type="password" name="password" placeholder="Password" class="showpassword">
									</p>
									<p class="clearfix"> 
										<a href="#" class="log-twitter">Log in with Twitter</a>    
										<input type="submit" name="submit" value="Log in">
									</p>
								</form>​​
						</section>
						<!-- <img src="./resources/assets/images/ebook.png" alt="Ebook img"> -->
					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-sm-pull-6">
					<div class="mu-hero-left">
						<h1 style="font-size: 30px;">이동근사마의</h1>
						<h1 style="font-size: 30px;">E-BOOK</h1>
						<h1 style="font-size: 30px;">뷰어!!</h1>
						<p style="font-size: 30px;">당신의 마음을 정화 시켜드립니다.</p>
						<a href="#" class="mu-primary-btn">E-BOOK보기</a>
						<span>(주)동근뷰어</span>
					</div>
				</div>	

			</div>
		</div>
	</section>
	
	<!-- Start Featured Slider -->
	
	<!-- Start main content -->
		
	<main role="main">	
		<!-- Start Book Overview -->
		<section id="mu-book-overview">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-book-overview-area">

							<div class="mu-heading-area">
								<h2 class="mu-heading-title"><a href="">Book Overview</a></h2>
								<span class="mu-header-dot"></span>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p>
							</div>

							<!-- Start Book Overview Content -->
							<div class="mu-book-overview-content">
								<div class="row">

									<!-- Book Overview Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-area-chart" aria-hidden="true"></i>
											</span>
											<h4>Chapter One</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- About Us Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-cubes" aria-hidden="true"></i>
											</span>
											<h4>Chapter Two</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- About Us Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-modx" aria-hidden="true"></i>
											</span>
											<h4>Chapter Three</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- About Us Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-files-o" aria-hidden="true"></i>
											</span>
											<h4>Chapter Four</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- Book Overview Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-file-pdf-o" aria-hidden="true"></i>
											</span>
											<h4>Chapter Five</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- About Us Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-language" aria-hidden="true"></i>
											</span>
											<h4>Chapter Six</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- About Us Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-gg" aria-hidden="true"></i>
											</span>
											<h4>Chapter Seven</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

									<!-- About Us Single Content -->
									<div class="col-md-3 col-sm-6">
										<div class="mu-book-overview-single">
											<span class="mu-book-overview-icon-box">
												<i class="fa fa-wpforms" aria-hidden="true"></i>
											</span>
											<h4>Chapter Eight</h4>
											<p>Lorem ipsum dolor sit amet, consect adipis elit minim veniam ettis inkeras.</p>
										</div>
									</div>
									<!-- / Book Overview Single Content -->

								</div>
							</div>
							<!-- End Book Overview Content -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Book Overview -->

		

		<!-- Start Video Review -->
		<section id="mu-video-review">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-video-review-area">

							<div class="mu-heading-area">
								<h2 class="mu-heading-title">Check Out Our Video Review</h2>
								<span class="mu-header-dot"></span>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p>
							</div>

							<!-- Start Video Review Content -->
							<div class="mu-video-review-content">
								<iframe class="mu-video-iframe" width="100%" height="480" src="https://www.youtube.com/embed/T4ySAlBt2Ug" frameborder="0" allowfullscreen></iframe>
							</div>
							<!-- End Video Review Content -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Video Review -->

		<!-- Start Author -->
		<section id="mu-author">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-author-area">

							<div class="mu-heading-area">
								<h2 class="mu-heading-title">이 사이트 대해서</h2>
								<span class="mu-header-dot"></span>
							</div>

							<!-- Start Author Content -->
							<div class="mu-author-content">
								<div class="row">
									<div class="col-md-6">
										<div class="mu-author-image">
											<img src="./resources/assets/images/author.jpg" alt="Author Image">
										</div>
									</div>
									<div class="col-md-6">
										<div class="mu-author-info">
											<h3>완벽한 E_BOOK을 제공해드립니다.</h3>
											<p>이 사이트는 E-BOOK뷰어를 제공해드립니다.</p>

											<p></p>
											<img class="mu-author-sign" src="./resources/assets/images/author-signature.png" alt="Author Signature">

											<div class="mu-author-social">
												<a href="http://www.naver.com"><i class="fa fa-facebook"></i></a>
												<a href="#"><i class="fa fa-twitter"></i></a>
												<a href="#"><i class="fa fa-linkedin"></i></a>
												<a href="#"><i class="fa fa-google-plus"></i></a>
											</div>

										</div>
									</div>
								</div>
							</div>
							<!-- End Author Content -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Author -->

		<!-- Start Pricing -->
		<section id="mu-pricing">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-pricing-area">

							<div class="mu-heading-area">
								<h2 class="mu-heading-title">Our Pricing Plans</h2>
								<span class="mu-header-dot"></span>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p>
							</div>

							<!-- Start Pricing Content -->
							<div class="mu-pricing-content">
								<div class="row">

									<!-- Pricing Single Content -->
									<div class="col-sm-6 col-md-4">
										<div class="mu-pricing-single">

											<div class="mu-pricing-single-head">
												<h4>STANDARD PLAN</h4>
												<p class="mu-price-tag">
													<span>$</span> 15
												</p>
											</div>

											<ul class="mu-price-feature">
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
											</ul>

											<div class="mu-pricing-single-footer">
												<a href="#" class="mu-order-btn">Order Now!</a>
											</div>

										</div>
									</div>
									<!-- / Pricing Single Content -->

									<!-- Pricing Single Content -->
									<div class="col-sm-6 col-md-4">
										<div class="mu-pricing-single mu-popular-price-tag">


											<div class="mu-pricing-single-head">
												<h4>PROFESSIONAL PLAN</h4>
												<p class="mu-price-tag">
													<span>$</span> 25
												</p>
											</div>

											<ul class="mu-price-feature">
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
											</ul>

											<div class="mu-pricing-single-footer">
												<a href="#" class="mu-order-btn">Order Now!</a>
											</div>
											

										</div>
									</div>
									<!-- / Pricing Single Content -->

									<!-- Pricing Single Content -->
									<div class="col-sm-6 col-md-4">
										<div class="mu-pricing-single">


											<div class="mu-pricing-single-head">
												<h4>EXCLUSIVE PLANㅁ5ㅁ</h4>
												<p class="mu-price-tag">
													<span>$</span> 45
												</p>
											</div>

											<ul class="mu-price-feature">
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
												<li> Lorem ipsum dolor sit amet. </li>
											</ul>

											<div class="mu-pricing-single-footer">
												<a href="#" class="mu-order-btn">Order Now!</a>
											</div>
											
											
										</div>
									</div>
									<!-- / Pricing Single Content -->


								</div>
							</div>
							<!-- End Pricing Content -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Pricing -->

		<!-- Start Testimonials -->
		<section id="mu-testimonials">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-testimonials-area">
							<div class="mu-heading-area">
								<h2 class="mu-heading-title">What Our Readers Says</h2>
								<span class="mu-header-dot"></span>
							</div>

							<div class="mu-testimonials-block">
								<ul class="mu-testimonial-slide">

									<li>
										<p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever."</p>
										<img class="mu-rt-img" src="./resources/assets/images/reader-1.jpg" alt="img">
										<h5 class="mu-rt-name"> - Alice Boga</h5>
										<span class="mu-rt-title">CEO, Apple Inc.</span>
									</li>

									<li>
										<p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever."</p>
										<img class="mu-rt-img" src="./resources/assets/images/reader-2.jpg" alt="img">
										<h5 class="mu-rt-name"> - Jhon Doe</h5>
										<span class="mu-rt-title">Director, Google Inc.</span>
									</li>

									<li>
										<p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever."</p>
										<img class="mu-rt-img" src="./resources/assets/images/reader-3.jpg" alt="img">
										<h5 class="mu-rt-name"> - Jessica Doe</h5>
										<span class="mu-rt-title">Web Developer</span>
									</li>

								</ul>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Testimonials -->

	
		<!-- Start Contact -->
		<section id="mu-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-contact-area">

							<div class="mu-heading-area">
								<h2 class="mu-heading-title">Drop Us A Message</h2>
								<span class="mu-header-dot"></span>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p>
							</div>

							<!-- Start Contact Content -->
							<div class="mu-contact-content">

								<div id="form-messages"></div>
								<form id="ajax-contact" method="post" action="mailer.php" class="mu-contact-form">
									<div class="form-group">                
										<input type="text" class="form-control" placeholder="Name" id="name" name="name" required>
									</div>
									<div class="form-group">                
										<input type="email" class="form-control" placeholder="Enter Email" id="email" name="email" required>
									</div>              
									<div class="form-group">
										<textarea class="form-control" placeholder="Message" id="message" name="message" required></textarea>
									</div>
									<button type="submit" class="mu-send-msg-btn"><span>SUBMIT</span></button>
						        </form>

							</div>
							<!-- End Contact Content -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Contact -->

		<!-- Start Google Map -->
		<section id="mu-google-map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d589888.4396405783!2d-82.41588603632052!3d32.866951223053896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f9f727a4ed30eb%3A0xf2139b0c5c7ae1ec!2sDooley+Branch+Rd%2C+Millen%2C+GA+30442%2C+USA!5e0!3m2!1sen!2sbd!4v1497376364225" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
		</section>
		<!-- End Google Map -->

	</main>
	
	<!-- End main content -->	
			
			
	<!-- Start footer -->
	<footer id="mu-footer" role="contentinfo">
		<div class="container">
			<div class="mu-footer-area">
				<div class="mu-social-media">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-google-plus"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
				</div>
				<p class="mu-copyright">&copy; Copyright <a rel="nofollow" href="http://markups.io">markups.io</a>. All right reserved.</p>
			</div>
		</div>

	</footer>
	<!-- End footer -->

	
	
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Bootstrap -->
    <script src="./resources/assets/js/bootstrap.min.js"></script>
	<!-- Slick slider -->
    <script type="text/javascript" src="./resources/assets/js/slick.min.js"></script>
    <!-- Counter js -->
    <script type="text/javascript" src="./resources/assets/js/counter.js"></script>
    <!-- Ajax contact form  -->
    <script type="text/javascript" src="./resources/assets/js/app.js"></script>
   
 
	
    <!-- Custom js -->
	<script type="text/javascript" src="./resources/assets/js/custom.js"></script>
	
    
  </body>
</html>