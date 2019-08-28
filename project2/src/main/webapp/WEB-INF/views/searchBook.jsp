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
</head>
<body>
<!-- 책 제목 검색 토탈알려줌--> 
${total}
  <div>
	<table border="1">
		<tr align="center">
			<td>표지</td> <td>제목</td> <td>가격</td>
		</tr>
			<c:forEach var="list" items="${blist}">
				<tr>
					<td>
						<!-- 이미지 -->
						<a href="BookForm?isbn=${list.isbn}"><img src="${list.image}"></a>
					</td>
					<td>
						<!-- 제목 -->
						<a href="BookForm?isbn=${list.isbn}">${list.title}</a>
						<p>제목 : ${list.title}</p> 
						<p>네이버 링크: ${list.link}</p>
						<p>지은이: ${list.author}</p>
						<p>할인가격: ${list.discount}</p>
						<p>출판사: ${list.publisher}</p>
						<p>출간일: ${list.pubdate}</p>
						<p>책코드넘버: ${list.isbn}</p>
						<p>책 소개: ${list.description}</p>
				
					</td>
					<td>
						<!-- 가격 -->
						${list.price}
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div>
		<div class="ss_book_box" itemId="205390672">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="25" align="left" valign="top" style="padding-right:5px;">
 <table width="18" border="0" cellspacing="0" cellpadding="0">
 <tr><td><div style="text-align: center;">1.</div></td></tr> <tr><td><div style="text-align: center;"><input name="chkCart.K382635653" type="checkbox" /></div></td></tr> </table>

 </td>
 <td width="170" align="left" valign="top">
 <table width="150" border="0" cellpadding="0" cellspacing="0">
 <tr><td style=""><div style="position:relative;"><a href="http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=205390672"><img src="https://image.aladin.co.kr/product/20539/6/cover150/k382635653_1.jpg" width="150" border="0" class="i_cover" /></a></div></td></tr>
<tr><td style="text-align: left;"><a href="http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=205390672" target="_blank"><img src="//image.aladin.co.kr/img/search/icon_new2.gif" border="0" /></a><a href="/shop/book/wletslookViewer.aspx?ISBN=K382635653" target="_blank"><img src="//image.aladin.co.kr/img/search/icon_pre.gif" border="0" /></a></td></tr> </table>

 </td>
 <td width="*" align="left" valign="top">
     <table width="100%" border="0" cellspacing="0" cellpadding="0" >
     <tr>
     <td width="*" valign="top">
 <div class="ss_book_list"><ul>
<li><a href="http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=205390672" class="bo3"><b>공포의 천사</b></a> <span style="color: #777777">ㅣ</span> <a href="http://www.aladin.co.kr/shop/common/wseriesitem.aspx?SRID=671906" class="ss_f_g2">에드거 월리스 미스터리 걸작선 4</a>&nbsp;</li>
 <li><a href="/Search/wSearchResult.aspx?AuthorSearch=에드거+월리스@297045&BranchType=1">에드거 월리스</a> (지은이), <a href="/Search/wSearchResult.aspx?AuthorSearch=양원정@5503593&BranchType=1">양원정</a> (옮긴이) | <A href='/search/wsearchresult.aspx?PublisherSearch=%be%e7%c6%c4(%b5%b5%bc%ad%c3%e2%c6%c7)@300105&BranchType=1' >양파(도서출판)</A> | 2019년 8월</li><li><span class="">12,800</span>원 → <span class="ss_p2" ><b><span class="">11,520</span>원</b></span> (<span class="ss_p">10%</span>할인),  마일리지 <span class="ss_p">640</span>원 (<span class="ss_p">5%</span> 적립)</li> </ul></div>

<div class="ss_book_list"><ul>
<li>지금 <strong>택배</strong>로 주문하면 <strong>8월 30일 출고</strong><div>최근 1주 97.8% (중구 중림동) <img src="//image.aladin.co.kr/img/shop/2012/bu_driveaway_ch.gif" onclick="FindZipByList('addInputShop_205390672');" style="cursor:pointer;vertical-align:middle;margin:-3px 0 0 0px;" alt="지역변경" /><span id="addInputShop_205390672"></span></div></li></ul></div>

     </td>
     <td width="80" valign="top">
<div class="book_Rfloat_02"><div class="button_search_cart_new"><a href="/shop/wbasket.aspx?AddBook=K382635653" onclick="return SafeBasket_ListOneAddByAjax('K382635653', document.getElementById('divBasketAddResult_K382635653'), {top: 0, left: -55});">장바구니</a></div><div id="divBasketAddResult_K382635653"></div><div class="button_search_buyitnow_new"><a href="https://www.aladin.co.kr/order/worder_chk_order.aspx?CartType=4&ISBN=K382635653" onclick="return QuickBuyCheck('K382635653');">바로구매</a></div><div class="Search3_Result_SafeBasketArea" isbn="K382635653" style="position: relative;"><div class="button_search_storage"><a href="javascript:void(0);" >보관함 <img alt="" src="//image.aladin.co.kr/img/search/btn_bg5_arrow.png"></a></div> <ul class="mylist Search3_Result_SafeBasketLayer" isbn="K382635653" style="display: none;"><li><a href="javascript:void(0);" onclick="return AddSafeBasket('K382635653');">보관함</a></li><li><a href="javascript:void(0);" onclick="return AddMyList('K382635653');">마이리스트</a></li> </ul>
</div></div>
     </td>
     </tr>
     <tr>
     <td colspan="2">
<p class="ss_promotion">제임스 메레디스는 약혼녀 진 브리거랜드의 위증으로 살인죄를 뒤집어쓰고 사형을 언도받는다. 재산을 노린 약혼녀의 음모인 것을 굳게 믿는 메레디스의 친구이자 변호사인 잭 글로버는 메레디스의 목숨과 재산을 지키기로 결심하고 리디아 베일을 찾아가 메레디스와 결혼해줄 것을 제안한다.</p>     </td>
     </tr>
     </table>
 </td>
 </tr>
 </table>
 </div>
		
	
	</div>
	
	
</body>
</html>