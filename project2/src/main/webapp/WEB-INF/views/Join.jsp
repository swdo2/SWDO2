<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
    <meta name="author" content="jeon jae hyoung" />
<title>Sign Up</title>
    <link rel="shortcut icon" type="image/icon" href="./assets/images/favicon.ico"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<link href="./loginresources/css/bootstrap.min.css" rel="stylesheet">	
    <link href="./assets/css/slick.css" rel="stylesheet">	
    <link id="switcher" href="./assets/css/theme-color/default-theme.css" rel="stylesheet">
    <link href="./loginresources/css/style3.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"> 
    <link rel="stylesheet" type="text/css" href="./loginresources/css/style2.css" />
    <link rel="stylesheet" type="text/css" href="./loginresources/css/demo.css" />
    
<script src="js/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#person_id").on('keyup', idcheck); 
		$("#cancel").on('click', cancel);
	 		// id = "id_reg" / name = "userId"
	});
/* ----------------------------------아이디 체크 함수 start  ----------------------------------------*/
	 	function idcheck() {	
	 		var person_id = $('#person_id').val();
	 		$.ajax({ 
	 			url : 'idCheck',
	 			type : 'get',
	 			data : {'person_id' : person_id},
	 			dataType : 'text',
	 			success : function(data){
	 				// 1일때 사용가능
	 				// 0 사용 불가
	 				console.log("0 = 이미 등록된 아이디 / 1 = 사용 가능한 ID : "+data);
	 				console.log(data)
					if(data == 1){
					$(".id_check1").text("사용가능한 아이디입니다.");
					$(".id_check1").css('color','blue');	
					} else{
						$(".id_Check1").text("이미 등록 된 아이디입니다.");   /* 이거 글자수 적은데 ajax에서 사용가능한아이디라고 입력됩니다. */
						$(".id_check1").css('color','red');
					}
				}, error : function(){
						console.log("실패");
						alert('다시 시도 해 주세요')
				}
	 		});
		}
/* ----------------------------------아이디 체크 함수 end  ----------------------------------------*/		
/* ----------------------------------cancel start  ----------------------------------------*/	 
	 function cancel() {
		 location.href='homeButton';
	 }
/* ----------------------------------cancel end  ----------------------------------------*/

/* ----------------------------------아이디 패스워드 범위  start  ----------------------------------------*/
	function formCheck(){
		var id = document.getElementById('person_id');
		var password = document.getElementById('person_password');
		var name = document.getElementById('person_name');
		var email = document.getElementById('person_email');
		var pwck = document.getElementById('person_passwordcheck');
		if(id.value.length < 5 || id.value.length > 20){
			alert("ID는 5~20 글자 내외로 입력하세요.");
			console.log(password);	
			return false;
		}
	 	if(password.value.length < 5 || password.value.length > 20){
			alert("PASSWORD는 5~20 글자 내외로 입력하세요.");
			return false;
	 	}
	 	  if(password.value != pwck.value){
			alert('비밀번호가 틀렸습니다. 다시 입력해주세요.');
			return false;
		}  
	 	if(name.value == ''){
			alert("이름은 필수 입력 사항입니다.");
			return false;
		}
	 	if(email.value == ''){
			alert("e-mail은 필수 입력 사항입니다.");
			return false;
		}
	 	return true;
	}
/* ------------------------------------------- 아이디 패스워드 범위 end  ----------------------------------------*/	
	</script>	
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
		 	
			$(function(){
			    $(".showpassword1").each(function(index,input) {
			        var $input = $(input);
			        $("<p class='opt'/>").append(
			            $("<input type='checkbox' class='showpasswordcheckbox' id='showPassword' />").click(function() {
			                var change = $(this).is(":checked") ? "text" : "password";
			                var rep = $("<input placeholder='Password Check' type='" + change + "' />")
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
<!-- 				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> -->
<!-- 				        <span class="sr-only"></span> -->
<!-- 				        <span class="icon-bar"></span> -->
<!-- 				        <span class="icon-bar"></span> -->
<!-- 				        <span class="icon-bar"></span> -->
<!-- 				      </button> -->
				      <!-- Text Logo -->
<!-- --------------------------------------------start 홈버튼 누르면 메인 페이지 갈수 있게 하는 겁니다.----------------------------------------------------->
				      <a class="navbar-brand" href="homeButton"><i class="fa fa-book" aria-hidden="true"></i> 本ーE</a>
<!-- --------------------------------------------end 홈버튼 누르면 메인 페이지 갈수 있게 하는 겁니다.--------------------------------------------------- -->
				    </div>
			  	</div><!-- /.container-fluid -->
			</nav>
		</div>
	</header>
	<!-- End Header -->

	<!-- 회원가입 폼 부분 start -->
	<section id="mu-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-sm-push-6">
					<div class="mu-hero-right">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-sm-pull-6">
					<div class="mu-hero-left" style="margin-left: 64%;">
						<section class="main">
							<form class="form-2"  id = "joinform" action="Join" method = "post" onsubmit="return formCheck();">
								<h1><span class="sign-up">sign up</span></h1>
								<div>
									    <!-- 로그인 아이디 입력하는곳 -->	
										<label for="login"><i class="icon-user"></i>User name</label>
										<input type="text" name="person_id" id= "person_id" placeholder="Username">
										<div class = "id_check1"></div>																												
								</div>
								<div>
										<label for="password"><i class="icon-lock"></i>Password</label>
										<!-- 로그인 패스워드 입력하는곳 -->
										<input type="password" name="person_password" id="person_password" placeholder="Password">
								</div>
								<div>					
										<label for="password"><i class="icon-lock"></i>Password Check</label>
										<!-- 로그인 패스워드 입력하는곳 -->
										<input type="password" name="person_passwordcheck" id="person_passwordcheck" placeholder="Password Check" class="showpassword1">
								</div>
								<div>					
										<label for="login"><i class="icon-user"></i>Name</label>
										<!-- 로그인 패스워드 입력하는곳 -->
										<input type="text" name="person_name" id="person_name" placeholder="Name">
								</div>
								<div>					
										<label for="login"><i class="icon-user"></i>E-Mail</label><br>
										<!-- 로그인 패스워드 입력하는곳 -->
										<div style="float:left;"><input type="text" style="width:350px;" name="person_email" id="person_email" placeholder="Email"></div>
										<div style="float:left; padding-top:5px;"><font style="font-size:30px;">@</font></div>
										<div style="float:left;">
										 <select name="email" style="width:350px;">
				                            <option>naver.com</option>
				                            <option>daum.net</option>
				                            <option>gmail.com</option>
				                            <option>nate.com</option>                    
			                        	</select>
			                        	</div><br><br><br>
								</div>
								<div>					
										<label for="login"><i class="icon-phone"></i>Phone</label><br>
										<select name="person_phone1" id="person_phone1" style="width:33.3%; float:left">
											<option>010</option>
											<option>011</option>
											<option>012</option>
											<option>016</option>
										</select>
										<input type="text" name="person_phone2" id="person_phone1" placeholder="Phone1" maxlength="4" style="float:left;margin-bottom:25px; width:33.3%;">
										<input type="text" name="person_phone3" id="person_phone1" placeholder="Phone2" maxlength="4" style="float:left;margin-bottom:25px; width:33.3%;">
								</div>
								<div>
									<p class="clearfix"> 
										<input type ="submit" value="Join">
										<input type ="button" id="cancel" class="log-twitter" value="Cancel">    
									</p>
								</div>
							</form>​​
						</section>
					</div>
				</div>	
			</div>
		</div>
	</section>
<!-- ------------------------------------회원가입 폼 부분 end ------------------------------------------------------------------------ -->
</body>
</html>
