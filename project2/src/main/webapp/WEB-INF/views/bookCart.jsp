<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
    <link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="./viewbook/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="./viewbook/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="./viewbook/css/bookblock.css"/>
    <link rel="stylesheet" type="text/css" href="./viewbook/css/component.css"/>
    <link href="./searchBook/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="./cart/fonts/icomoon/style.css">

        <link rel="stylesheet" href="./cart/css/bootstrap.min.css">
        <link rel="stylesheet" href="./cart/css/magnific-popup.css">
        <link rel="stylesheet" href="./cart/css/jquery-ui.css">
        <link rel="stylesheet" href="./cart/css/owl.carousel.min.css">
        <link rel="stylesheet" href="./cart/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="./cart/css/aos.css">
        <link rel="stylesheet" href="./cart/css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>장바구니 페이지 입니다.</title>
            <style>
                a {
                    color: #ffc904bf;
                }
            </style>
             </head>
                  <body>
                      <div id="scroll-wrap">
                          <header class="codrops-header">
                              <div class="codrops-top clearfix">
                                  <!-- <a class="codrops-icon codrops-icon-prev" href="homebutton"><span style="font-size:15px;">HOME</span></a> -->
                                  <div class="titlenaranhi" style="margin-right: -100px;">
                                      <h1>
                                          <a href="homeButton" class="mainTitle" style="color: aliceblue;font-size:30px;padding-left:20px;">本ーE</a>
                                      </h1>
                                      <span>
                                          <a class="codrops-icon codrops-icon-prev" href="/project" style="font-size:10px;padding-left:20px;">Home</a>
                                      </span>
                                  </div>
                                  <span class="right">
                                      <a class="codrops-icon codrops-icon-drop" href="logOut">
                                          <span style="font-size:17px;">Log Out</span>
                                      </a>
                                  </span>
                              </div>
                              <div class="logo">
                                  <!-- <div class="titlenaranhi"><a href="homeButton"><img class="titleimage" src="./assets/images/main logo.jpg"></a></div> -->
                              </div>
								<h1>My Cart<span>for <font style="font-size:30px;color:#FC7D01;font-weight:bold;">${loginId}</font><font style="font-size:30px;color:#fdff00;">様</font></span></h1>
									<div class="w3layouts-left" style="width: 40%;background: #ffb827;padding:0.5em;margin-left: 30%;">
					               		<!--search-box-->
					                  <div class="w3-search-box" style="width: 100%;margin-top: 0em;position: relative;z-index: 1;display: inline-block;border: 2px solid #fff;">
					                     <form action="searchBook" >   <!-- <<<<<<<<<<<<<<<<여기 가 검색 부분 액션 이름 단 입니다. -->
					                        <b><input type="text" name="bookTitle" placeholder="Search..." required="required" maxlength="25"
					                        	style="outline: none;background: #fff;width: 93%;margin: 0;z-index: 10;font-size: 0.9em;color: #7A7B78;padding: 0.5em 0.5em;border: none;-webkit-appearance: none;display: inline-block;text-align: center;font-size: 15px;"></b>
					                        <input type="submit" value="" 
					                        style="    background: url(resources/assets/images/search.png)no-repeat;width: 20px;height: 20px;display: inline-block;vertical-align: text-top;border: none;outline: none;">
					                     </form>
					                  </div><!--//end-search-box-->
					                  <div class="clearfix"> </div>
					            	</div>                          
                          </header>
                      </div>
                      <div class="site-wrap">
                                          <%-- <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
       <div class="container">
         <div class="row align-items-center">

           <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
             <form action="" class="site-block-top-search">
               <span class="icon icon-search2"></span>
               <input type="text" class="form-control border-0" placeholder="Search">
             </form>
           </div>

           <%-- <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
             <div class="site-logo">
               <a href="index.html" class="js-logo-clone">Shoppers</a>
             </div>
           </div>

           <div class="col-6 col-md-4 order-3 order-md-3 text-right">
             <div class="site-top-icons">
               <ul>
                 <li><a href="#"><span class="icon icon-person"></span></a></li>
                 <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                 <li>
                   <a href="cart.html" class="site-cart">
                     <span class="icon icon-shopping_cart"></span>
                     <span class="count">2</span>
                   </a>
                 </li>
                 <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
               </ul>
             </div>
           </div>

         </div>
       </div>
     </div>
     <nav class="site-navigation text-right text-md-center" role="navigation">
       <div class="container">
         <ul class="site-menu js-clone-nav d-none d-md-block">
           <li class="has-children">
             <a href="index.html">Home</a>
             <ul class="dropdown">
               <li><a href="#">Menu One</a></li>
               <li><a href="#">Menu Two</a></li>
               <li><a href="#">Menu Three</a></li>
               <li class="has-children">
                 <a href="#">Sub Menu</a>
                 <ul class="dropdown">
                   <li><a href="#">Menu One</a></li>
                   <li><a href="#">Menu Two</a></li>
                   <li><a href="#">Menu Three</a></li>
                 </ul>
               </li>
             </ul>
           </li>
           <li class="has-children">
             <a href="about.html">About</a>
             <ul class="dropdown">
               <li><a href="#">Menu One</a></li>
               <li><a href="#">Menu Two</a></li>
               <li><a href="#">Menu Three</a></li>
             </ul>
           </li>
           <li><a href="shop.html">Shop</a></li>
           <li><a href="#">Catalogue</a></li>
           <li><a href="#">New Arrivals</a></li>
           <li><a href="contact.html">Contact</a></li>
         </ul>
       </div>
     </nav>
   </header> --%>

<div class="bg-light py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-0">
                <a href="/project">Home</a>
                <span class="mx-2 mb-0">/</span>
                <strong class="text-black">Cart</strong>
            </div>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row mb-5">
            <form class="col-md-12" method="post">
                <div class="site-blocks-table">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="product-selected">Select
                                    <br /><input type = "checkbox" name = "selectall" class = "selectall" /></th>
                                <th class="product-thumbnail">Image</th>
                                <th class="product-name">Product</th>
                                <th class="product-price">Price</th>


                                <th class="product-remove">Remove <br /><a id = "removeall" class="btn btn-primary btn-sm">X</a></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%-- <c:forEach var="v" items="${blist}">
                                <c:forEach var="b" items="${v}">
                                  <tr>
                                      <td>
                                          <input type = "checkbox" name = "selectedbook" class = "selectedbook" id = "${b.price}" isbn = "${b.isbn}"/>
                                      </td>
                                      <td class="product-thumbnail">
                                          <img src="${b.image}" alt="이미지 준비중" class="img-fluid"></td>
                                          <td class="product-name">
                                              <h2 class="h5 text-black">${b.title}</h2>
                                          </td>
                                          <td> &#8361; ${b.price}</td>


                                          <td class = "removetd">
                                              <a isbn = "${b.isbn}" class="btn btn-primary btn-sm">X</a>
                                          </td>
                                      </tr>
                                  </c:forEach>
                              </c:forEach>--%>
                      </tbody>
                  </table>
              </div>
          </form>
      </div>

      <div class="row">

                  <div class="col-md-6 mb-3 mb-md-0">
                      <button class="btn btn-primary btn-sm btn-block" id = "continue">Continue Shopping</button>
                  </div>
                  <div class="col-md-6 pl-5">
                      <div class="row justify-content-end">
                          <div class="col-md-7">
                              <div class="row">
                                  <div class="col-md-12 text-right border-bottom mb-5">
                                      <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                                  </div>
                              </div>

                              <div class="row mb-5">
                                  <div class="col-md-6">
                                      <span class="text-black">Total</span>
                                  </div>
                                  <div class="col-md-6 text-right">
                                      <strong class="text-black" id = "totalprice">&#8361; 0</strong>
                                  </div>
                              </div>

                              <div class="row">
                                  <div class="col-md-12">
                                      <button class="btn btn-primary btn-lg py-3 btn-block" id = "purchase">Purchase</button>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>

              <%-- <div class="row">
                  <div class="col-md-12">
                      <label class="text-black h4" for="coupon">Coupon</label>
                      <p>Enter your coupon code if you have one.</p>
                  </div>
                  <div class="col-md-8 mb-3 mb-md-0">
                      <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code"></div>
                      <div class="col-md-4">
                          <button class="btn btn-primary btn-sm">Apply Coupon</button>
                      </div>
                  </div>
              </div>--%>

          </div>
    </div>
  </div>

  <%-- <footer class="site-footer border-top">
      <div class="container">
          <div class="row">
              <div class="col-lg-6 mb-5 mb-lg-0">
                  <div class="row">
                      <div class="col-md-12">
                          <h3 class="footer-heading mb-4">Navigations</h3>
                      </div>
                      <div class="col-md-6 col-lg-4">
                          <ul class="list-unstyled">
                              <li>
                                  <a href="#">Sell online</a>
                              </li>
                              <li>
                                  <a href="#">Features</a>
                              </li>
                              <li>
                                  <a href="#">Shopping cart</a>
                              </li>
                              <li>
                                  <a href="#">Store builder</a>
                              </li>
                          </ul>
                      </div>
                      <div class="col-md-6 col-lg-4">
                          <ul class="list-unstyled">
                              <li>
                                  <a href="#">Mobile commerce</a>
                              </li>
                              <li>
                                  <a href="#">Dropshipping</a>
                              </li>
                              <li>
                                  <a href="#">Website development</a>
                              </li>
                          </ul>
                      </div>
                      <div class="col-md-6 col-lg-4">
                          <ul class="list-unstyled">
                              <li>
                                  <a href="#">Point of sale</a>
                              </li>
                              <li>
                                  <a href="#">Hardware</a>
                              </li>
                              <li>
                                  <a href="#">Software</a>
                              </li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <h3 class="footer-heading mb-4">Promo</h3>
                  <a href="#" class="block-6">
                      <img src="images/hero_1.jpg" alt="Image placeholder" class="img-fluid rounded mb-4">
                          <h3 class="font-weight-light  mb-0">Finding Your Perfect Shoes</h3>
                          <p>Promo from nuary 15 &mdash; 25, 2019</p>
                      </a>
                  </div>
                  <div class="col-md-6 col-lg-3">
                      <div class="block-5 mb-5">
                          <h3 class="footer-heading mb-4">Contact Info</h3>
                          <ul class="list-unstyled">
                              <li class="address">203 Fake St. Mountain View, San Francisco, California, USA</li>
                              <li class="phone">
                                  <a href="tel://23923929210">+2 392 3929 210</a>
                              </li>
                              <li class="email">emailaddress@domain.com</li>
                          </ul>
                      </div>

                      <div class="block-7">
                          <form action="#" method="post">
                              <label for="email_subscribe" class="footer-heading">Subscribe</label>
                              <div class="form-group">
                                  <input type="text" class="form-control py-4" id="email_subscribe" placeholder="Email">
                                      <input type="submit" class="btn btn-sm btn-primary" value="Send"></div>
                                  </form>
                              </div>
                          </div>
                      </div>
                      <div class="row pt-5 mt-5 text-center">
                          <div class="col-md-12">
                              <p>
                                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                  Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                                  <script>
                                      document.write(new Date().getFullYear());
                                  </script>
                                  All rights reserved | This template is made with
                                  <i class="icon-heart" aria-hidden="true"></i>
                                  by
                                  <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
                                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                              </p>
                          </div>

                      </div>
                  </div>
              </footer> --%>
          </div>
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

          <script src="./cart/js/jquery-3.3.1.min.js"></script>
          <script src="./cart/js/jquery-ui.js"></script>
          <script src="./cart/js/popper.min.js"></script>
          <script src="./cart/js/bootstrap.min.js"></script>
          <script src="./cart/js/owl.carousel.min.js"></script>
          <script src="./cart/js/jquery.magnific-popup.min.js"></script>
          <script src="./cart/js/aos.js"></script>

          <script src="./cart/js/main.js"></script>
          <script>
            $(document).ready(function() {
                $.ajax({
                    url : 'getPurchaseList'
                    ,dataType : 'json'
                    ,type : 'get'
                    ,success : function(bblist) {
                        var str = "";
                        $.each(bblist, function(index, value) {

                            str += '<tr><td>'
                                    +    '<input type = "checkbox" name = "selectedbook" class = "selectedbook" id ="'+ bblist[index][0].price + '" isbn ="' + bblist[index][0].isbn + '"/>'
                                    +   '</td>'
                                    +   '<td class="product-thumbnail">'
                                    +    '<img src="' + bblist[index][0].image + '" alt="이미지 준비중" class="img-fluid">'
                                    +   '</td>'
                                    +   '<td class="product-name">'
                                    +    '<h2 class="h5 text-black"> ' + bblist[index][0].title + '</h2>'
                                    +   '</td>'
                                    +   '<td> &#8361; ' + bblist[index][0].price + ' </td>'
                                    +   '<td class = "removetd">'
                                    +    '<a isbn = "' + bblist[index][0].isbn + '" class="btn btn-primary btn-sm">X</a>'
                                    +   '</td>'
                                    +   '</tr>'
                        })
                        $('tbody').html(str);
                    }
                    ,error : function() {

                    }
                })

                $('#removeall').on("click",function() {
                    console.log('remove all');
                    if(confirm('장바구니를 전체삭제 하시겠습니까?')) {
                        $.ajax({
                            url : 'removeAll'
                            ,type : 'get'
                            ,success : function() {
                                console.log('전체삭제 성공');
                                $.ajax({
                                    url : 'getPurchaseList'
                                    ,dataType : 'json'
                                    ,type : 'get'
                                    ,success : function(bblist) {
                                        var str = "";
                                        $.each(bblist, function(index, value) {
                                            str += '<tr><td>'
                                                    +    '<input type = "checkbox" name = "selectedbook" class = "selectedbook" id ="'+ bblist[index][0].price + '" isbn ="' + bblist[index][0].isbn + '"/>'
                                                    +   '</td>'
                                                    +   '<td class="product-thumbnail">'
                                                    +    '<img src="' + bblist[index][0].image + '" alt="이미지 준비중" class="img-fluid">'
                                                    +   '</td>'
                                                    +   '<td class="product-name">'
                                                    +    '<h2 class="h5 text-black"> ' + bblist[index][0].title + '</h2>'
                                                    +   '</td>'
                                                    +   '<td> &#8361; ' + bblist[index][0].price + ' </td>'
                                                    +   '<td class = "removetd">'
                                                    +    '<a isbn = "' + bblist[index][0].isbn + '" class="btn btn-primary btn-sm">X</a>'
                                                    +   '</td>'
                                                    +   '</tr>'
                                        })
                                        $('tbody').html(str);
                                    }
                                    ,error : function() {

                                    }
                                })
                            }
                            ,error : function() {
                                console.log('전체삭제 실패');
                            }
                        })
                    } else {

                    }

                })


                $(document).on("click", ".selectall",function() {
                    console.log('전체선택 체크박스');
                    if($('.selectall').is(":checked")) {
                        $(".selectedbook").prop('checked', true);
                    } else {
                        $(".selectedbook").prop('checked', false);
                    }

                    var total = 0;
                    $('.selectedbook:checked').each(function() {
                        total += parseInt($(this).attr('id'));
                    });

                    $('#totalprice').html('&#8361; ' + total);
                })

                $('#purchase').on("click", function() {
                    console.log('구매버튼');
                    var cartlist = new Array();
                    $('input[name = "selectedbook"]:checked').each(function() {
                        cartlist.push($(this).attr('isbn'));
                    })

                    console.log(cartlist);

                    jQuery.ajaxSettings.traditional = true;
                    $.ajax({
                        url : 'purchaseList'
                        ,data : { 'cartlist' : cartlist }
                        ,dataType : 'text'
                        ,type : "get"
                        ,async : false
                        ,success : function(cnt) {
                            if(cnt == 0 ) {
                                if(confirm("책을 구매 하였습니다. 마이페이지로 가시겠습니까?")) {
                                    window.location.href = "myPageForm";
                                } else {
                                    window.location.href = "cartForm";
                                }
                            } else {
                                alert('이미 구매한 책입니다.');
                            }
                        }
                        ,error : function() {
                            console.log('dup_purchase error');
                        }
                        //console.log(list);
                    })
                })
                console.log('실행은 되는가?');

                $(document).on("click", ".selectedbook", function() {
                    console.log('checkbox 선택시');
                    var total = 0;
                    $('.selectedbook:checked').each(function() {
                        total += parseInt($(this).attr('id'));
                    });

                    $('#totalprice').html('&#8361; ' + total);
                })

                $('#continue').on("click", function() {
                    window.location.href = "/project";
                })

                $(document).on("click", ".removetd > a" ,function() {
                    console.log('삭제 버튼 클릭');
                    var isbn = $(this).attr('isbn');
                    console.log(isbn);

                    $.ajax({
                        url : 'removeCart'
                        ,data : {isbn : isbn}
                        ,dataType : 'text'
                        ,type : 'get'
                        ,success : function(cnt) {
                            if(cnt == 1) {
                                alert('삭제 되었습니다');
                                $.ajax({
                                    url : 'getPurchaseList'
                                    ,dataType : 'json'
                                    ,type : 'get'
                                    ,success : function(bblist) {
                                        var str = "";
                                        $.each(bblist, function(index, value) {
                                            str += '<tr><td>'
                                                    +    '<input type = "checkbox" name = "selectedbook" class = "selectedbook" id ="'+ bblist[index][0].price + '" isbn ="' + bblist[index][0].isbn + '"/>'
                                                    +   '</td>'
                                                    +   '<td class="product-thumbnail">'
                                                    +    '<img src="' + bblist[index][0].image + '" alt="이미지 준비중" class="img-fluid">'
                                                    +   '</td>'
                                                    +   '<td class="product-name">'
                                                    +    '<h2 class="h5 text-black"> ' + bblist[index][0].title + '</h2>'
                                                    +   '</td>'
                                                    +   '<td> &#8361; ' + bblist[index][0].price + ' </td>'
                                                    +   '<td class = "removetd">'
                                                    +    '<a isbn = "' + bblist[index][0].isbn + '" class="btn btn-primary btn-sm">X</a>'
                                                    +   '</td>'
                                                    +   '</tr>'
                                        })
                                        $('tbody').html(str);
                                    }
                                    ,error : function() {

                                    }
                                })
                            } else {
                                console.log('삭제 실패');
                            }
                        }
                        ,error : function() {
                            console.log('delete book fail');
                        }
                    })



                })
            })

          </script>
      </body>
  </html>
