<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="content-language" content="kr">
<meta name="title" property="title" content="트리플악셀 :: 당신의여행에 가속을">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<title>TRIPFUL AXEL - 당신의 여행에 가속을 더하다</title>



<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="/tripfulaxel/resources/user/js/jquery.menu.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/common.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/wrest.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/placeholders.min.js"></script>
<!-- 웹 폰트 확인 후 변경 -->
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">

<script src="/tripfulaxel/resources/user/js/modernizr.custom.70111.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/main.css?ver=20210620">
<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/common.css?ver=20210620">
<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/style.css?ver=20210620">


<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>

<script type="text/javascript"
	src="/tripfulaxel/resources/user/js/html/main.js"></script>
<script type="text/javascript"
	src="/tripfulaxel/resources/user/js/html/style.js"></script>
<script type="text/javascript"
	src="/tripfulaxel/resources/user/js/html/function.js"></script>

<script src="https://kit.fontawesome.com/676df56a46.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>



</head>
<body>
	<style>
.temp {
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: 9999;
}

.popBg {
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.6);
}

.contents {
	background: #fff;
	width: 700px;
	height: 400px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
}

.contents p {
	white-space: pre-line;
	font-size: 28px;
}

.signiture_wrap .signiture_slider {
	visibility: hidden;
}

.signiture_wrap .signiture_slider.slick-initialized {
	visibility: visible;
}

.bestTM_area .best_list {
	visibility: hidden;
}

.bestTM_area .best_list.slick-initialized {
	visibility: visible;
}
</style>

	<!-- new_cnt : 0/-->
	<!-- 헤더 영역 시작 -->


	<style>
.find_id {
	margin: 30px 0
}

.find_id li {
	margin: 20px 0;
}

.find_id ~ p:last-of-type {
	margin-top: 10px;
}

li.header_menu i {
	color: #ff8f8f;
}

li.header_menu {
	font-size: 14px;
	font-weight: 600;
	color: #ff8c77 !important;
}

li.header_menu a {
	color: #ff8c77 !important;
}

li.header_menu:hover {
	color: #ff6143;
	font-weight: 600;
	text-shadow: 2px 6px 2px rgba(255, 115, 88, 0.2);
}
</style>

	<jsp:include page="../common/header.jsp"></jsp:include>


	<!-- 팝업 시작 -->

	<!-- 회원가입 팝업 시작 -->
	<div class="pop_bg pop_wrap">
		<div class="member_pop_box close_wrap signup_pop"
			style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
			<span class="close_btn"></span>
			<div class="member_wrap" style="width: 100%; padding: 0 5%;">
				<h3 class="tit txt_bold">회원가입</h3>

				<span class="txt_sm or" style="margin-top: 3vh">당신의 여행에 가속을</span>
				<p style="text-align: right; margin-top: 20px; color: #ff7358;">*
					필수 입력</p>

				<form style="margin-top: 10px;" id="frm1" class="member_form"
					name="fregisterform" method="post" onsubmit="return regist()"
					action="${ pageContext.servletContext.contextPath }/user/regist"
					autocomplete="off">

					<input type="email" id="userEmail" name="userEmail"
						value="juyoung@greedy.com" required
						class="email frm_input full_input" size="70" maxlength="100"
						placeholder="* 이메일 주소">

					<!-- 중복확인용 -->
					<input id="duplicationCheck" class="btnBgC txt_bs submit"
						value="중복확인" style="margin-top: 3vh; text-align: center;">

					<!-- 히든 중복체크를 위한 것  -->
					<input type="hidden" id="Check" name="Check" value="fail">

					<input type="text" id="userName" name="userName" value="정주영"
						required class="frm_input half_input" size="3"
						placeholder="* 이름(예:홍길동)"> <input type="text"
						id="userPhone" name="userPhone" value="010-1234-5678" required
						class="frm_input half_input" placeholder="* 전화번호(예:010-1234-5678)">

					<input type="password" id="userPwd" name="userPwd"
						value="juyoung123" required class="frm_input half_input"
						minlength="3" maxlength="20" placeholder="* 비밀번호"> <input
						type="password" id="repassword" name="repassword" required
						value="juyoung123" class="frm_input half_input right_input"
						minlength="3" maxlength="20" placeholder="* 비밀번호 확인"> <input
						type="text" id="userBday" name="userBday" value="19971129"
						required class="frm_input half_input"
						placeholder="* 출생연도(예:19971129)">


					<div class="gender_wrap" style="height: 50px;">
						<input type="radio" id="gender1" name="userGender" value="1"
							checked> <label for="gender1" class="cf"
							style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
							<i style="margin: 12px 9px;" class="floatL"></i> <span
							class="floatL" style="font-size: 14px; line-height: 38px;">남</span>
						</label> <input type="radio" id="gender2" name="userGender" value="2">
						<label for="gender2" class="cf"
							style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
							<i style="margin: 12px 9px;" class="floatL"></i> <span
							class="floatL" style="font-size: 14px; line-height: 38px;">여</span>
						</label>
					</div>

					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_all"> <label
							for="agree_all"> <i id="agree_all_i"></i> <span>아래
								약관에 모두 동의합니다.</span>
						</label>
					</p>

					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_1" class="checkOne" name="check">
						<label for="agree_1" style="vertical-align: middle;"> <i
							id="agree_1_i"></i> <span
							onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/conditions.php')"
							target="_blank">회원가입 및 운영약관(필수)</span>
						</label>
					</p>

					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_2" class="checkOne" name="check">
						<label for="agree_2" style="vertical-align: middle;"> <i
							id="agree_2_i"></i><span
							onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/privacypolicy.php')"
							target="_blank">개인정보 수집 및 이용(필수)</span>
						</label>
					</p>
					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_3" class="checkOne" name="check">
						<label for="agree_3" style="vertical-align: middle;"> <i
							id="agree_3_i"></i> <span
							onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/conditions.php#location')"
							target="_blank">위치정보 이용약관(선택)</span>
						</label>
					</p>
					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_4" name="agree_4" value="1"
							class="checkOne"> <label for="agree_4"> <i
							id="agree_4_i"></i> <span>마케팅 정보수신에 동의(선택)</span>
						</label>
					</p>

					<input type="hidden" name="w" value=""> <input
						type="hidden" name="s" value=""> <input id="signinbtn"
						class="btnBgC txt_bs submit" type="submit" value="가입하기"
						style="margin-top: 3vh;">

				</form>
			</div>
		</div>
	</div>
	<!-- //회원가입 팝업 끝 -->


	<!-- 로그인 팝업 시작-->
	<div class="pop_bg pop_wrap signup_pop">
		<div class="member_pop_box close_wrap login_pop"
			style="width: 90%; max-width: 500px;; padding: 5vh 0; max-height: 600px;">
			<span class="close_btn"></span> <span class="close_btn"></span>
			<div class="member_wrap" style="width: 100%; padding: 0 5%;">
				<h3 class="tit txt_bold">로그인</h3>

				<span class="txt_sm or" style="margin-top: 3vh">환영합니다!</span>
				<form class="member_form" name="flogin" 
				     action="${ pageContext.servletContext.contextPath }/user/login" 
				     method="post"
					 style="margin-top: 3vh">
			 	<input type="email" name="userEmail" id="userEmail" required
						class="id frm_input" size="30" maxLength="30" placeholder="이메일 주소"
						style="margin: 0 auto; width: 60%; display: flex;">
				  <input
						type="password" name="userPwd" id="userPwd" required
						class="frm_input" size="30" maxLength="30" placeholder="비밀번호"
						style="margin: 10px auto 0; width: 60%; display: flex;">
				 <button class="btnBgC txt_bs submit" type="submit"
						style="margin: 10px auto 0; width: 60%;">로그인</button>
				</form>
				
				<ul class="find_signup clearfix">
					<li class="floatL">
					<a href="#" class="find_password_link txt_sm txt_bold">비밀번호 찾기/</a>
				    <a href="#" class="find_id_link txt_sm txt_bold">이메일(ID) 찾기</a>
				    </li>
					<li class="floatR">
					<a href="#"	class="signup_link txt_sm txt_bold">회원가입</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //로그인 팝업 끝-->
	
	<!-- 이메일(ID) 찾기 완료 팝업 -->
	<div class="pop_bg pop_wrap">
		<!-- <div style="padding:35px 110px;" class="member_pop_box close_wrap find_id_fin_pop"> -->
		<div class="member_pop_box close_wrap find_id_fin_pop">
			<span class="close_btn"></span>
			<div class="member_wrap find_member_wrap">
				<h3 class="tit txt_bold">이메일(ID) 찾기</h3>
				<p class="txt_bs txt_bold">- 조회 결과 입력하신 정보와 일치하는 이메일은 아래와 같습니다.</p>
				<p class="txt_bs txt_bold">- 이름, 성별, 생년월일이 동일한 동명이인의 이메일이 함께 검색될
					수 있습니다.</p>
				<p class="txt_bs txt_bold">
					이메일(ID)은 <span class="find_id">hongildong1234</span> 입니다.
				</p>
				<a class="btnBgC txt_bs login_link submit" href="#"
					style="padding: 10px; margin-top: 30px; text-align: center; width: 100%;">로그인</a>
			</div>
		</div>
	</div>
	<!-- //이메일(ID) 찾기 완료 팝업 끝-->
	<!-- 이메일(ID) 찾기 팝업 -->
	<div class="pop_bg pop_wrap">
		<div class="member_pop_box close_wrap find_id_pop"
			style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
			<span class="close_btn"></span>
			<div class="member_wrap" style="width: 100%; padding: 0 5%;">
				<h3 class="tit txt_bold">이메일(ID) 찾기</h3>
				<!-- <p class="pop_sub_title txt_bs">트래블메이커 가입 시 입력했던 이름과 생년월일을 입력해주시면<br>아이디를 알려드립니다.</p> -->
				<p class="pop_sub_title txt_bs" style="text-align: center;">
					Tripful Axel 가입 시 입력했던 이름을 입력해주시면<br>이메일(ID)을 알려드립니다.<br>
					<span>* 표시는 필수 입력입니다. <br>(생년월일 입력시에는 전체 다 입력해주세요)
					</span>
				</p>
				<form class="member_form">
					<input type="text" placeholder="* 이름(예:홍길동)" name="find_id_name">
					<div class="find_gender_wrap" style="height: 50px;">
						<input type="radio" id="find_gender1" name="find_gender" value="1"
							style="display: none; margin-top: 0; vertical-align: middle; outline: none; margin: 0; padding: 0; border: 0">
						<label for="find_gender1" class="cf"
							style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
							<i style="margin: 12px 9px;" class="floatL"></i> <span
							class="floatL" style="font-size: 14px; line-height: 38px;">남</span>
						</label> <input type="radio" id="find_gender2" name="find_gender"
							value="2"
							style="display: none; margin-top: 0; vertical-align: middle; outline: none; margin: 0; padding: 0; border: 0">
						<label for="find_gender2" class="cf"
							style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
							<i style="margin: 12px 9px;" class="floatL"></i><span
							class="floatL" style="font-size: 14px; line-height: 38px;">여</span>
						</label>
					</div>
					<div class="birth_select clearfix">
						<input type="text" class="birth_year" placeholder="출생연도"
							name="find_id_year"> <select name="find_id_mon">
							<option value="0">월</option>
						</select> <select name="find_id_day">
							<option value="0">일</option>
						</select>
					</div>
					<button class="btnBgC txt_bs find_id_button submit" type="button"
						value="이메일(ID) 찾기" style="margin-top: 3vh;">이메일(ID) 찾기</button>
				</form>
				<ul class="find_signup clearfix">
					<li class="floatL"><a href="#"
						class="find_password_link txt_sm txt_bold">비밀번호 찾기</a></li>
					<li class="floatR"><a href="#"
						class="signup_link txt_sm txt_bold">회원가입</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //이메일(ID) 찾기 팝업 끝-->
	<!-- 비밀번호 찾기 완료 팝업 -->
	<div class="pop_bg pop_wrap">
		<div class="member_pop_box close_wrap find_password_fin_pop"
			style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
			<span class="close_btn"></span>
			<div class="member_wrap" style="width: 100%; padding: 0 5%;">
				<h3 class="tit txt_bold">비밀번호 찾기</h3>
				<p class="txt_bs txt_bold">임시 비밀번호를 메일로 전송하였습니다.</p>
				<form class="member_form">
					<input class="btnBgC txt_bs login_link submit" type="button"
						value="로그인">
				</form>
			</div>
		</div>
	</div>
	<!-- //이메일(ID) 찾기 완료 팝업 끝-->
	<!-- 비밀번호 찾기 팝업-->
	<div class="pop_bg pop_wrap">
		<div class="member_pop_box close_wrap find_password_pop"
			style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
			<span class="close_btn"></span>
			<div class="member_wrap" style="width: 100%; padding: 0 5%;">
				<h3 class="tit txt_bold">비밀번호 찾기</h3>
				<p class="txt_bs pop_sub_title">
					Tripful Axel 가입시 작성한<br>이름, 이메일, 생년월일를 입력해주세요.<br> 해당 메일
					주소로 임시 비밀번호를 메일을 보내드립니다.
				</p>
				<form class="find_password_form member_form">
					<input type="text" placeholder="* 이름(예:홍길동)" name="find_id_name">
					<input type="email" placeholder="이메일 주소" name="find_password_email">
					<div class="birth_select clearfix">
						<input type="text" class="birth_year" placeholder="출생연도"
							name="find_id_year"> <select name="find_id_mon">
							<option value="0">월</option>
						</select> <select name="find_id_day">
							<option value="0">일</option>
							<option value='1'>1일</option>
						</select>
					</div>
					<button class="btnBgC txt_bs find_password_button submit"
						type="button" value="비밀번호 재설정 메일 보내기">비밀번호 재설정 메일 보내기</button>
					<!-- <input class="btnBgC txt_bs submit" type="submit" value="비밀번호 재설정 메일 보내기"> -->
				</form>
				<ul class="find_signup clearfix">
					<li class="floatL"><a href="#"
						class="find_id_link txt_sm txt_bold">이메일(ID) 찾기</a></li>
					<li class="floatR"><a href="#"
						class="signup_link txt_sm txt_bold">회원가입</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //비밀번호 찾기 팝업 끝-->

	<!-- 휴대폰 인증 팝업-->
	<div class="pop_bg pop_wrap">
		<div class="member_pop_box close_wrap tel_certified_pop">
			<form class="member_form" style="margin-top: 0;">
				<input type="hidden" name="cert_code" id="cert_code"> <input
					type="hidden" name="cert_tel" id="cert_tel"> <span
					class="close_btn"></span>
				<div class="member_wrap">
					<h3 class="tit txt_bold" style="margin-top: 0;">휴대폰 인증</h3>
					<p class="pop_sub_title txt_bs"
						style="text-align: center; font-size: 17px; margin-top: 10px;">
						휴대폰 인증받고<br>다양한 혜택 알림 받으세요!<br>
					</p>
					<div class="clearfix">&nbsp;</div>
					<div>
						<p style="padding: 10px 0;">국가번호</p>
						<select name="country_code" id="country_code"
							style="margin-top: 0;">
							<option value="" selected>이외국가</option>
							<option value="+1">+1 미국</option>
						</select>
					</div>
					<div class="clearfix">&nbsp;</div>
					<div>
						<p style="padding: 10px 0;">휴대폰 번호</p>
						<input type="text" autocomplete="off" placeholder=" - 없이 입력해주세요."
							onkeyup="onlynum(event)" id="mb_tel1" maxlength="14"
							name="mb_tel1" value="" style="width: 60%;">

						<button class="btnBgC txt_bs send_certified_button send_btn"
							data-now="1" type="button"
							style="width: 33%; float: right; padding: 11px 0;">인증번호
							받기</button>
					</div>
					<div class="clearfix">&nbsp;</div>
					<div>
						<p style="padding: 10px 0;">인증 번호</p>
						<input type="text" autocomplete="off" placeholder="인증번호 입력해주세요."
							id="certified" name="certified" disabled>
					</div>
					<button class="btnBgC txt_bs send_certified_button success_btn"
						data-now="2" type="button"
						style="display: none; width: 100%; padding: 11px 0; margin-top: 10px;">인증완료하기
					</button>
					<!--<button class="btnBgC txt_bs find_id_button submit" type="button" value="인증 완료">인증 완료</button>-->
				</div>
			</form>
		</div>
	</div>
	<!-- 휴대폰 인증 팝업 끝-->



	<!-- //팝업 끝 -->

	<!-- 이메일 중복체크용  -->
	<script>
		/* $(function(){
		 $("#duplicationCheck").click(function(){
		 var useremail = $('#useremail').val();
		
		 if (useremail == '') {
		 alert('이메일을 입력해주세요.')
		 return;
		 }
		
		 $.ajax({
		 url: "${ pageContext.servletContext.contextPath }/user/
		 ",
		 type: "get",
		 data:{ useremail : useremail },
		 success: function(data,textStatus,xhr){
		 console.log(data);
		 if (data == "fail"){

		 $("#checkMessage").html("사용할 수 없는 이메일입니다.");
		 alert("사용불가아이디");
		 $("#idCheck").value("fail");
		 return;

		 } else if(data == "success") {
		 $("#checkMessage").html("사용할 수 있는 이메일입니다.");
		 $("#idCheck").attr("value", "success");
		 console.log(idCheck);
		 return;
		 }
		 },
		 error: function(xhr, status, error){
		 console.log(xhr);
		 console.log(status);
		 console.log(error);
		 }
		
		 });
		
		 });
		 });  
		 */
	</script>


	<script type="text/javascript">
		/* 체크박스 전체 선택 */
		function allCheckFunc(obj) {
			$(".checkOne").prop("checked", $(obj).prop("checked"));
		}

		/* 체크박스 체크시 전체선택 체크 여부 */
		function oneCheckFunc(obj) {
			var allObj = $("#agree_all");
			var objName = $(obj).attr("name");

			if ($(obj).prop("checked")) {
				checkBoxLength = $("[name=" + objName + "]").length;
				checkedLength = $("[name=" + objName + "]:checked").length;

				if (checkBoxLength == checkedLength) {
					allObj.prop("checked", true);
				} else {
					allObj.prop("checked", false);
				}
			} else {
				allObj.prop("checked", false);
			}
		}

		$(function() {
			$("#agree_all").click(function() {
				allCheckFunc(this);
			});
			$(".checkOne").click(function() {
				$(this).each(function() {
					oneCheckFunc($(this));
				});
			});
		});

		/* 회원가입 유효성 체크 */
		function regist() {

			var useremail = document.getElementById("userEmail");
			var username = document.getElementById("userName");
			var userphone = document.getElementById("userPhone");
			var userpassword = document.getElementById("userPwd");
			var repassword = document.getElementById("repassword");
			var userbirth = document.getElementById("userBday");
			var duplicationCheck = document.getElementById("duplicationCheck");
			var idCheck = document.getElementById("idCheck");

			// 이메일
			if (!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/, useremail,
					"이메일 형식에 맞춰 입력하세요.")) {
				return false;
			}

			// 휴대전화 
			if (!chk(/^\d{2,3}-\d{3,4}-\d{4}$/, userphone,
					"전화번호는 010-1234-5678 형식으로 넣어주세요.")) {
				return false;
			}

			// 비밀번호 
			if (!chk(/^[a-zA-Z0-9]{8,15}$/, userpassword,
					"비밀번호는 영어와 숫자를 사용하여 8자리 이상 15자리 이하 입력하세요.")) {
				return false;
			}

			var checkNum = document.getElementById("userPwd").value
					.search(/[0-9]/g);
			var checkEng = document.getElementById("userPwd").value
					.search(/[a-z]/ig);

			if (checkNum < 0 || checkEng < 0) {
				alert("비밀번호는 숫자와 영문자를 혼용하여야 합니다.");
				userpassword.value = "";
				userpassword.focus();
				return false;
			}

			// userpassword와 repassword 일치하는지 확인
			if (userpassword.value != repassword.value) {
				alert("비밀번호가 다릅니다. 다시 확인해주세요.");
				repassword.value = "";
				repassword.focus();
				return false;
			}

			// 이름
			if (!chk(/^[가-힣]{1,}$/, username, "이름은 한글로 1글자 이상 입력하세요")) {
				return false;
			}

			// 생년월일
			if (!chk(/^[0-9]*$/, userbirth, "생년월일은 특수문자(-) 없이 숫자로만 입력해주세요.")) {
				return false;
			}

			// 성별
			if ($("input[name=userGender]:checked").val() == false) {
				alert("성별을 선택하여 주십시오.");

				return false;

			}

			// 약관동의 체크
			if ($("#agree_1").is(":checked") !== true
					|| $("#agree_2").is(":checked") !== true) {
				alert("서비스 이용약관에 동의하세요.");
				return false;
			}

			// 유효성 검사 alert 창 
			function chk(re, ele, msg) {
				if (!re.test(ele.value)) {
					alert(msg);
					ele.value = "";
					ele.focus();
					return false;
				}

				return true;
			}

		}

	</script>

	<!-- //헤더 영역 끝 -->


	<!-- 본문 영역 시작 -->
	<div class="index">

		<div class="bd-example" style="width: 1070px !important; margin: auto">
			<div id="carouselExampleCaptions" class="carousel slide"
				data-ride="carousel">

				<div class="main_tit_area"
					style="margin-bottom: 50px !important; margin-top: 50px !important;">

					<h2 class="txt_tit">&emsp;</h2>
					<h2 class="txt_tit" style="font-size: 30px; color: skyblue;">TRIPFUL
						AXEL</h2>
					<p class="txtG txt_md">: 당신의 여행에 가속을</p>

				</div>

				<ol class="carousel-indicators">
					<li data-target="#carouselExampleCaptions" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="1"
						class=""></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="2"
						class=""></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="3"
						class=""></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="4"
						class=""></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"
							style="width: 800px; height: 535;"
							src="/tripfulaxel/resources/user/images/common/local_guide_main.png"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color: white;">로컬
								가이드 여행</h1>
							<p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=666&amp;fg=444&amp;text=Second slide"
							alt="Second slide [800x400]"
							src="/tripfulaxel/resources/user/images/common/trip_alone.jpg"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color: white;">나만의
								여행</h1>
							<p>나의 소중했던 여행, 다른 회원들과 공유해보아요!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=555&amp;fg=333&amp;text=Third slide"
							alt="Third slide [800x400]"
							src="/tripfulaxel/resources/user/images/common/trip_together.jpg"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color: white;">같이가요
								여행</h1>
							<p>혼자가기엔 아쉬운 여행, 여행 파트너를 찾아보거나 다른 회원의 여행에 조인할 수 있어요!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=555&amp;fg=333&amp;text=Third slide"
							alt="Third slide [800x400]"
							src="/tripfulaxel/resources/user/images/common/trip_planner.jpeg"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color: white;">여행플래너</h1>
							<p>나의 여행, 플랜 만들기부터 공유까지 할 수 있어요!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=555&amp;fg=333&amp;text=Third slide"
							alt="Third slide [800x400]"
							src="/tripfulaxel/resources/user/images/common/trip_realtime.jpg"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color: white;">실시간
								정보 공유</h1>
							<p>Tripful Axel회원들의 신나는 여행 정보 공유</p>
						</div>
					</div>

				</div>
				<a class="carousel-control-prev" href="#carouselExampleCaptions"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<hr>
		</div>

		<div class="bd-example" style="width: 1070px !important; margin: auto">
			<div id="carouselExampleCaptions1" class="carousel slide"
				data-ride="carousel">

				<div class="main_tit_area"
					style="margin-bottom: 50px !important; margin-top: 50px !important;">

					<h2 class="txt_tit">&emsp;</h2>
					<h2 class="txt_tit" style="font-size: 30px; color: skyblue;">제주도,
						재주도 많다</h2>
					<p class="txtG txt_md">사진출처 : 한국관광공사</p>

				</div>

				<ol class="carousel-indicators">
					<li data-target="#carouselExampleCaptions1" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="1"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="2"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="3"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="4"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="5"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="6"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="7"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="8"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="9"
						class=""></li>
					<li data-target="#carouselExampleCaptions1" data-slide-to="10"
						class=""></li>
				</ol>
				<div id="jejuData" class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"
							style="width: 800px; height: 700px;"
							src="/tripfulaxel/resources/user/images/common/main2.jpg"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color: white;">로컬
								가이드 여행</h1>
							<p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleCaptions1"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleCaptions1"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<hr>
		</div>



		<!-- 		<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
 -->
		<script>
			$(document)
					.ready(
							function() {
								console.log("gg");
								$
										.ajax({
											url : "jeju",
											success : function(data, status,
													xhr) {
												/* console.log(JSON.parse(data.jejuData));*/
												/*     				h1.innerText = JSON.parse(data.jejuData).response.body.items.item[0].galTitle;
												 *//* JSON.parse(data.jejuData).response.body.items.item[0] */
												console
														.log(JSON
																.parse(data.jejuData).response.body.items);
												$
														.each(
																JSON
																		.parse(data.jejuData).response.body.items.item,
																function(i,
																		item) {
																	console
																			.log(item.galWebImageUrl);
																	/* var aa ='<li style="text-align: center; display: none;">' +
																	          '<a class="exhibition_href" href="#" target="_blank">' +
																				'<div class="exhibition_img"' + 
																	'style="width: 1070px; overflow: hidden; background: rgba(150, 150, 150, 0.3)' + 
																	          'url('+ "'" +item.galWebImageUrl+ "'"+') no-repeat center/cover;">'+
																	     '</div>' +
																	'</a>' +
																	'</li>'; */

																	var aa = '<div class="carousel-item">'
																			+ '<img class="d-block w-100"'
																			+ 'data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"'
																			+ 'style=" width:800px; height:700px;"'
																			+ 'src="'
																			+ item.galWebImageUrl
																			+ '"'
																			+ 'data-holder-rendered="true">'
																			+ '<div class="carousel-caption d-none d-md-block"' +
							'style="bottom: 50px;">'
																			+ '<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">로컬 가이드 여행</h1>'
																			+ '<p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>'
																			+ '</div>'
																			+ '</div>';
																	/* 						var aa = "<p>" + "dddd" + "</p>";
																	 */
																	$(
																			"#jejuData")
																			.append(
																					aa);
																});
											},
											error : function(xhr, status, error) {
												console.log(error);
											}
										});
							});
		</script>

		<!-- <div class="application">
        <div class="pcWrap">
            <div class="floatL left">
                <h1 style="color:black">나에게 딱 맞는 현지전문가를 만나보세요.</h1>
                <p>트래블메이커가 세상에 하나뿐인,<br>나만의 여행을 만들어드립니다.</p>
            </div>
            <button class="floatR right" onclick="location.href='/coronafreemap/';">
                맞춤투어 신청하기
            </button>
        </div>
    </div> -->




	</div>


	<script type="text/javascript"
		src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.min.js"></script>
	<script type="text/javascript"
		src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.plugins.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".lazy").Lazy();

			$('.new_best_product').on('afterChange', function() {
				$(".lazy").Lazy();
			});
		});
		function customizingLink() {
			if ('') {
				jQuery.ajax({
					url : '/skin/html/ajax.php',
					type : 'POST',
					data : 'p=cus0&mb_id=',
					success : function(data) {
						console.log('success' + data);
						location.href = '/skin/html/customizing1.php';
					},
					error : function(data) {
						console.log('error' + data);
						alert('업데이트를 실패하였습니다.')
					}
				});
			} else {
				$('.signup_pop').css('display', 'block');
			}
		}

		function findTMLink() {
			location.href = '/skin/html/findtm.php';
		}
	</script>
	<!-- //본문 영역 끝 -->

	<jsp:include page="../common/footer.jsp"></jsp:include>


	<style>
.best_list .info {
	height: 120px;
}
/*.txt_md {display: inline-block; width: 200px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; white-space: normal; line-height: 1.2; height: 3.6em; text-align: left; word-wrap: break-word; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; }*/
</style>