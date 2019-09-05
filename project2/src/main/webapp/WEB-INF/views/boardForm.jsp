<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판 with 작성및 삭제</title>
<meta name="description" content="Book Preview with BookBlock" />
<meta name="keywords"
	content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="assets/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="viewbook/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="viewbook/css/demo.css" />
<link rel="stylesheet" type="text/css" href="viewbook/css/bookblock.css" />
<link rel="stylesheet" type="text/css" href="viewbook/css/component.css" />
<script src="viewbook/js/modernizr.custom.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script>
	function pagingFormSubmit(currentPage) {
		var form = document.getElementById('pagingForm');
		var page = document.getElementById('page');
		page.value = currentPage;
		form.submit();
	}
</script>

</head>

<body>
	<div id="scroll-wrap" class="container">
		<header class="codrops-header">
			<div class="codrops-top clearfix"></div>
			<h1>
				<span>헤이 브래드 <a
					href="http://tympanus.net/codrops/2012/09/03/bookblock-a-content-flip-plugin/">BookBlock</a></span>
			</h1>
		</header>
		<!-- <div class="main"> -->

		<p>게시판</p>



		<table stlyle="border: 1px solid #ccc">
			<caption style="background-color: #ccc">목록</caption>
			<colgroup>
				<col width="30%" />
				<col width="40%" />
				<col width="30%" />

			</colgroup>
			<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">글쓴이</th>
				</tr>
			</thead>



			<c:forEach var="Board" items="${list}">

				<tr>
					<td><a href="read?board_num=${Board.board_num }">${Board.board_num }</a>
					</td>
					<td>${Board.board_title }</td>
					<td>${Board.person_id }</td>
				</tr>


			</c:forEach>

			<c:if test="${sessionScope.loginId != null }">
				${loginId }님 환영!<br>

				<a href="writeForm" style="color: deeppink; font-size: 50px;">글쓰러가기</a>
				<br>
			</c:if>

		</table>

		<a href="javascript:pagingFormSubmit(${1})">◁◁ </a> &nbsp;&nbsp;
		<c:if test="${navi.startPageGroup - 1 < 1 }">
			<a href="javascript:pagingFormSubmit(${1})">◀</a> &nbsp;&nbsp;
	</c:if>

		<c:if test="${navi.startPageGroup -1 >= 1 }">
			<a href="javascript:pagingFormSubmit(${navi.startPageGroup - 1})">◀</a> &nbsp;&nbsp;
	</c:if>

		<c:forEach var="counter" begin="${navi.startPageGroup}"
			end="${navi.endPageGroup}">
			<c:if test="${counter == navi.currentPage}">
				<b>
			</c:if>
			<a href="javascript:pagingFormSubmit(${counter})">${counter}</a>&nbsp;
		<c:if test="${counter == navi.currentPage}">
				</b>
			</c:if>
		</c:forEach>
		&nbsp;&nbsp;

		<c:if test="${navi.endPageGroup + 1 >= navi.totalPageCount }">
			<a href="javascript:pagingFormSubmit(${navi.totalPageCount})">▶</a> &nbsp;&nbsp;
	</c:if>
		<c:if test="${navi.endPageGroup + 1 < navi.totalPageCount }">
			<a href="javascript:pagingFormSubmit(${navi.endPageGroup + 1})">▶</a> &nbsp;&nbsp;
	</c:if>
		<a href="javascript:pagingFormSubmit(${navi.totalPageCount})">▷▷</a> <br>

		<form id="pagingForm" method="get" action="boardForm">
			<input type="hidden" name="page" id="page"> <select id="select" name="select">
				<option value="board_title" ${select eq "title" ? "selected" : ""}>
					제목</option>
				<option value="id" ${select eq "id" ? "selected" : ""}>작성자
				</option>
				<option value="contents"
					${select eq "contents" ? "selected" : ""}>본문</option>
			</select> <input type="text" id="searchedtitle" name="searchedtitle"
				value="${searchedtitle}"> <input type="button"
				onclick="pagingFormSubmit(1)" value="검색"> </select>

		</form>

		<!-- </div>/main -->
		<div class="related">
			<h3>If you enjoyed this demo you might also like:</h3>
			<a href="http://tympanus.net/Development/AnimatedBooks/"> <img
				src="http://tympanus.net/codrops/wp-content/uploads/2013/07/AnimatedBooks1-300x162.png" />
				<h3>Animated Books</h3>
			</a> <a href="http://tympanus.net/Development/3DBookShowcase/"> <img
				src="http://tympanus.net/codrops/wp-content/uploads/2013/01/3DBookShowcase_Main-300x162.jpg" />
				<h3>3D Book Showcase</h3>
			</a>
		</div>
	</div>
	<!-- /container -->

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
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-2">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-3">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-4">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-5">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-6">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-7">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-8">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<div class="bb-custom-wrapper" id="book-9">
		<div class="bb-bookblock">
			<div class="bb-item">
				<div class="bb-custom-side page-layout-3">
					<div>
						<h3>Portraits</h3>
						<p>Photography (1999 &ndash; 2013)</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-3"></div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-1">
					<h3>
						Chapter 9 <span>Nomadic Lifestyle</span>
					</h3>
				</div>
				<div class="bb-custom-side page-layout-1">
					<p>Candy canes lollipop macaroon marshmallow gummi bears
						tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
						faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
						cookie.</p>
				</div>
			</div>
			<div class="bb-item">
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Aa</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Bb</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
				<div class="bb-custom-side page-layout-2">
					<div>
						<h3>Cc</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
					<div>
						<h3>Dd</h3>
						<p>Faworki marzipan sugar plum jelly-o marzipan. Soufflé
							tootsie roll jelly beans. Sweet icing croissant dessert bear
							claw. Brownie dessert cheesecake danish jelly pudding bear claw
							soufflé.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a> <a href="#"
				class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
		</nav>
	</div>
	<!-- /bb-custom-wrapper -->
	<script src="viewbook/js/bookblock.min.js"></script>
	<script src="viewbook/js/classie.js"></script>
	<script src="viewbook/js/bookshelf.js"></script>
</body>
</html>