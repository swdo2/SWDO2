<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
    <meta name="author" content="jeon jae hyoung" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>本ーE</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
   <!--  Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
   <!--  Bootstrap -->
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
   <!--  Slick slider -->
    <link href="./assets/css/slick.css" rel="stylesheet">

    <!-- Theme color -->
    <link id="switcher" href="./assets/css/theme-color/default-theme.css" rel="stylesheet">

   <!--  Main Style -->
    <link href="./assets/css/style.css" rel="stylesheet">

  <!--   Fonts
    Open Sans for body font -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800" rel="stylesheet">
    <!-- Lato for Title -->
     <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <link rel="stylesheet" type="text/css" href="./loginresources/css/style.css?ver=1" />
    <link rel="stylesheet" type="text/css" href="./loginresources/css/demo.css?ver=1" />
    <!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->

<!-- -------------------------------------------------광고판 포더 Resources 링크 start ------------------------------------------------------------------------------------- -->
   <link rel="stylesheet" href="./gwangGoPan/css/flexslider.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="./gwangGoPan/css/font-awesome.min.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="./gwangGoPan/css/menu.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="./gwangGoPan/css/popuo-box.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="./gwangGoPan/css/style.css" type="text/css" media="screen" />
<!-- -------------------------------------------------광고판 포더 Resources 링크 end ------------------------------------------------------------------------------------- -->
<style>
html {overflow:scroll}
</style>

            <!-- jQuery if needed -->

    <%-- <script src = "./ebook/reader/js/libs/jquery-3.4.1.js"></script> --%>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
   <script type="text/javascript">
        $(document).ready(function() {
            $('#loginForm').on("submit",function() {
                console.log('check function');
                var id = $('#person_id').val();
                var password = $('#person_password').val();
                console.log(id);
                console.log(password);

                var flag;
                $.ajax({
                    url : 'logIncheck'
                    ,data : {id : id, password : password }
                    ,dataType : 'text'
                    ,type : 'post'
                    ,async : false
                    ,success : function(cnt) {
                        console.log(cnt);
                        if(cnt == 1 ){
                            flag = true;
                            //return true;
                        } else {
                            alert('아이디 및 비밀번호를 제대로 입력해 주세요.');
                            flag = false;

                        }
                    }, error : function() {
                        console.log('login ajax error');
                    }
                })
                console.log(flag);

                if(flag == true) {
                    window.location.href = "logIn";
                } else {
                    return false;
                }
            })
        });

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

   <!-- 스크롤 막는 방법  추후에 로그인을 하게 되면 허용을 해야한다. -->
   <!--    <script>
      $('html, body').css({'overflow': 'hidden', 'height': '100%'});
      $('#element').on('scroll touchmove mousewheel', function(event) {
        event.preventDefault();
        event.stopPropagation();
        return false;
      });
      </script> -->
  </head>

  <body>
  <div>
  </div>
    <!-- Start Header -->
   <header id="mu-header" class="" role="banner">
      <div class="container" style="width:100%;">
         <nav class="navbar navbar-default mu-navbar" style="width:100%;">
              <div class="container-fluid" style="padding-right: 0px;">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <!-- Text Logo -->
<!-- --------------------------------------------start 홈버튼 누르면 메인 페이지 갈수 있게 하는 겁니다.----------------------------------------------------->
                  <a class="navbar-brand" href="homeButton"><i class="fa fa-book" aria-hidden="true"></i> 本ーE</a>
<!-- --------------------------------------------end 홈버튼 누르면 메인 페이지 갈수 있게 하는 겁니다.--------------------------------------------------- -->
                  <!-- Image Logo -->
                  <!-- <a class="navbar-brand" href="index.html"><img src="./assets/images/logo.png"></a> -->
                </div>
<!-- ------------------------------------로그인 했을경우 뜨게하는 부분  start ------------------------------------------------- -->
            <c:if test="${sessionScope.loginId != null}">
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="width: 100%; padding-right: 0px;">
                     <ul class="nav navbar-nav mu-menu navbar-right">
                        <li><a href="boardForm">Board</a></li>
                       <li><a href="myPageForm">My Page</a></li>
                       <li><a href="cartForm">My Cart</a></li>
                       <li><a href="logOut">Log Out</a></li>
                       <li><a href="updatePersonForm">개인 정보수정</a></li>
                       <li><a href="#mu-author">고객센터</a></li>
                     </ul>
                </div><!-- /.navbar-collapse -->
             </c:if>
<!-- ------------------------------------로그인 했을경우 뜨게하는 부분  end ------------------------------------------------------------------- -->

              </div><!-- /.container-fluid -->
         </nav>
      </div>
   </header>
   <!-- End Header -->

   <!-- 로그인 폼 부분 start -->
   <section id="mu-hero">
<!-- ----------------------------------------로그인 안해도 검색 가능합니다 start----------------------------------------------------------------------------------------- -->
     <c:if test="${sessionScope.loginId == null}">
   		<div class="w3layouts-left" style="width: 40%;background: #ffb827;padding:1.2em;margin-left: 30%;">
             <div class="w3-search-box" style="width: 100%;margin-top: 0em;position: relative;z-index: 1;display: inline-block;border: 2px solid #fff;">
                <form action="searchBook" >   <!-- <<<<<<<<<<<<<<<<여기 가 검색 부분 액션 이름 단 입니다. -->
                   <b><input type="text" name="bookTitle" placeholder="Search..." required="required" maxlength="25"
                   	style="outline: none;background: #fff;width: 93%;margin: 0;z-index: 10;font-size: 0.9em;color: #7A7B78;padding: 0.5em 0.5em;border: none;-webkit-appearance: none;display: inline-block;text-align: center;font-size: 15px;"></b>
                   <input type="submit" value="" 
                   style="    background: url(resources/assets/images/search.png)no-repeat;width: 20px;height: 20px;display: inline-block;vertical-align: text-top;border: none;outline: none;margin-left: 5px;">
                </form>
             </div>
             <div class="clearfix"> </div>
       	</div>
       
  <!-- ----------------------------------------로그인 안해도 검색 가능합니다 end----------------------------------------------------------------------------------------- -->
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-sm-6 col-sm-push-6">
               <div class="mu-hero-right">
               </div>
            </div>
            <div class="col-md-6 col-sm-6 col-sm-pull-6" style="width:90%;">
               <div class="mu-hero-left" style="margin-left: 63%;">
                  <section class="main">
                     <form id = "loginForm" class="form-2" action="logIn" method="post">
                        <h1><span class="log-in">Log in</span> or <span class="sign-up">sign up</span></h1>
                        <p class="float">
                           <label for="login"><i class="icon-user"></i>Username</label>
                           <!-- 로그인 아이디 입력하는곳 -->
                           <input type="text" name="person_id" id = "person_id" placeholder="Username or email">
                        </p>
                        <p class="float">
                           <label for="password"><i class="icon-lock"></i>Password</label>
                           <!-- 로그인 패스워드 입력하는곳 -->
                           <input type="password" name="person_password" id = "person_password" placeholder="Password" class="showpassword">
                        </p>
                        <p class="clearfix">
                           <a href="Join" class="log-twitter">Join</a>
                           <input type="submit" name="submit" value="Log in">
                        </p>
                     </form>  
                  </section>
               </div>
            </div>
         </div>
      </div>
   </c:if>
<!-- -----------------------------------------로그인 했을경우 뜨게하는 부분  start ------------------------------------------------------- -->
<!-- ----------------------------------------------광고판 시작 부분입니다. start--------------------------------------------------------- -->
   <c:if test="${sessionScope.loginId != null}">
       <div class="banner col-md-8" style="width: 100%;margin-left: 39.5%;margin-top: 4%;">
         <div class="slider">
            <div class="flexslider">
               <ul class="slides" style="list-style:none;">
                  <li>
                     <img src="./gwangGoPan/images/book1 we are bye.jpg" class="img-responsive" alt="" />
                  </li>
                  <li>
                     <img src="./gwangGoPan/images/book2 we are bye.jpg" class="img-responsive" alt="" />
                  </li>
                  <li>
                     <img src="./gwangGoPan/images/book3 we are bye.jpg" class="img-responsive" alt="" />
                  </li>
                  <li>
                     <img src="./gwangGoPan/images/book4 we are bye.jpg" class="img-responsive" alt="" />
                  </li>
                 </ul>
            </div>
         </div>
      </div>
                         <!-- FlexSlider -->
       <script defer src="./gwangGoPan/js/jquery.flexslider.js"></script>
               <script type="text/javascript">
                  $(function(){
                   SyntaxHighlighter.all();
                  });
                  $(window).load(function(){
                    $('.flexslider').flexslider({
                     animation: "slide",
                     start: function(slider){
                       $('body').removeClass('loading');
                     }
                   });
                  });
                </script>
<!-- ----------------------------------------------광고판 끝 부분입니다. end--------------------------------------------------------- -->

<!-- ----------------------------------------------검색 바 시작부분 입니다. start-------------------------------------------------------- -->
         <div class="mu-hero-left" style="text-align:center;">
            <div class="w3layouts-left">
               <!--search-box-->
                  <div class="w3-search-box">
                     <form action="searchBook" >   <!-- <<<<<<<<<<<<<<<<여기 가 검색 부분 액션 이름 단 입니다. -->
                        <b><input type="text" name="bookTitle" placeholder="Search..." required="required" maxlength="25"></b>
                        <input type="submit" value="">
                     </form>
                  </div><!--//end-search-box-->
                  <div class="clearfix"> </div>
            </div>
<!-- ----------------------------------------------검색 바 끝부분 입니다. end----------------------------------------------------------- -->
            <div style="width:100%;">
               <a href="boardForm" class="mu-primary-btn" style="width:10%">BOARD</a>
               <a href="cartForm" class="mu-primary-btn" style="width:10%">MY CART</a>
               <a href="myPageForm" class="mu-primary-btn">MY BOOK PAGE</a>
            </div>
         </div>
    </c:if>
<!-- ------------------------------------로그인 했을경우 뜨게하는 부분  end ---------------------------------------------------------------- -->
   </section>
<!-- ------------------------------------로그인 폼 부분 end ------------------------------------------------------------------------ -->

<!-- Start main content -->
   <main role="main"> 
      <!-- Start Author -->
      <section id="mu-author">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="mu-author-area">
                     <div class="mu-heading-area">
                        <h2 class="mu-heading-title">고객센터</h2>
                        <span class="mu-header-dot"></span>
                     </div>

                     <!-- Start Author Content -->
                     <div class="mu-author-content">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="mu-author-image">
                                 <img src="./assets/images/조일상.jpg" alt="Author Image">
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="mu-author-info">
                                 <h3>SWDO E-book 10% 할인 프로모션</h3>
                               <ul>
                                 <li>SWDO 의 모든도서(E-book)를 구매시, 10% 할인된 조건으로 제공합니다.</li>
                                 <li>SWDO만의 E-book Service 플랫폼 제공</li>
                                 <li>구매 총액의 10% 할인 된 가격</li>
                                 <li>본 할인 조건은 2019년 12월 31일 까지 유효</li>
                                 <li>최소 구매 금액 제한 없음</li>
                               </ul>  
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

<!--       Start Testimonials  -->
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
                              <p>"가능성은 언제나 무한하다. 다만 그 재료가 없을뿐."</p>
                              <img class="mu-rt-img" src="./assets/images/이동근.jpg" alt="img">
                              <h5 class="mu-rt-name"> - イドングン</h5>
                              <span class="mu-rt-title">Reader, SWDO Inc.</span>
                           </li>

                           <li>
                              <p>"변명중에서도 가장 어리석은 변명은 "시간이 없어서"라는 변명이다."</p>
                              <img class="mu-rt-img" src="./assets/images/장우서.jpg" alt="img">
                              <h5 class="mu-rt-name"> - ジャンウソ</h5>
                              <span class="mu-rt-title">programmer, SWDO Inc.</span>
                           </li>

                           <li>
                              <p>"CSS라는 미적 감각은 단지 이세계에만 지나지 않는 허위를 모사하는 거짓된 삼라만상이다"</p>
                              <img class="mu-rt-img" src="./assets/images/전재형.jpg" alt="img">
                              <h5 class="mu-rt-name"> - ジョンジエヒョン</h5>
                              <span class="mu-rt-title">Web Designer</span>
                           </li>
                           <li>
                              <p>"그치만.. 오니상의 자바는 마약과같다 따라서 자바교육은 범죄행위로 간주해야한다. "</p>
                              <img class="mu-rt-img" src="./assets/images/나홍윤.jpg" alt="img">
                              <h5 class="mu-rt-name"> - ナホンユン</h5>
                              <span class="mu-rt-title">programmer, SWDO Inc.</span>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
<!--       End Testimonials -->

      <!-- Start Google Map -->
      <!-- <section id="mu-google-map">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d589888.4396405783!2d-82.41588603632052!3d32.866951223053896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f9f727a4ed30eb%3A0xf2139b0c5c7ae1ec!2sDooley+Branch+Rd%2C+Millen%2C+GA+30442%2C+USA!5e0!3m2!1sen!2sbd!4v1497376364225"
               width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
      </section> -->
      <!-- End Google Map -->

   </main>

   <!-- End main content -->


   <!-- Start footer -->
   <footer id="mu-footer" role="contentinfo">
      <div class="container">
         <div class="mu-footer-area">
            <div class="mu-social-media">
               <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
               <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
               <a href="https://google.com"><i class="fa fa-google-plus"></i></a>
               <a href="#"><i class="fa fa-linkedin"></i></a>
            </div>
            <p class="mu-copyright">&copy; Copyright <a rel="nofollow" href="http://localhost:8888/project/">本-E</a>. All right reserved.</p>
         </div>
      </div>
   </footer>
    <!-- End footer -->
   <script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });

		});
	</script>
	<a href="#" id="toTop"><span id="toTopHover"> </span></a>


    <!-- jQuery library -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Bootstrap -->
    <script src="./assets/js/bootstrap.min.js"></script>
   <!-- Slick slider -->
    <script type="text/javascript" src="./assets/js/slick.min.js"></script>
    <!-- Counter js -->
    <script type="text/javascript" src="./assets/js/counter.js"></script>
    <!-- Ajax contact form  -->
    <script type="text/javascript" src="./assets/js/app.js"></script>



    <!-- Custom js -->
   <script type="text/javascript" src="./assets/js/custom.js"></script>


  </body>
</html>