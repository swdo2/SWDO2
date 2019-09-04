<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="./viewbook/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/bookblock.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/component.css" />
	<link href="./searchBook/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="./cart/css/bootstrap.min.css">
    <link rel="stylesheet" href="./cart/css/magnific-popup.css">
    <link rel="stylesheet" href="./cart/css/jquery-ui.css">
    <link rel="stylesheet" href="./cart/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./cart/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./cart/css/aos.css">
    <link rel="stylesheet" href="./cart/css/style.css">
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니 페이지 입니다.</title>
</head>
<body>
    <table>
        <tr>
            <th>
                상품정보
            </th>
            <th>
                판매가
            </th>
            <th>
                선택
            </th>
        </tr>
    <c:forEach var="v" items="${blist}">
		<c:forEach var="b" items="${v}">
            <tr>
                <td>
                    <img src="${b.image}"><br>
                </td>
                <td>

                </td>
            </tr>

		</c:forEach>
	</c:forEach>
    </table>
</body>
</html>
