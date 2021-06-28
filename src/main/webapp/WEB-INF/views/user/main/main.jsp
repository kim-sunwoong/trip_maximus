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
				<form style="margin-top: 10px;" class="member_form" name="fregisterform" action="#"
					onsubmit="return fregisterform_submit(this);" method="post"
					enctype="multipart/form-data" autocomplete="off">
			     <input type="email" id="reg_mb_email" name="mb_email" value=""
						required class="email frm_input full_input" size="70"
						maxlength="100" placeholder="* 이메일 주소">
				 <input type="text" name="mb_name" value="" required class="frm_input half_input"
						size="3" placeholder="* 이름(예:홍길동)">
				 <input type="password" name="mb_password" required class="frm_input half_input"
						minlength="3" maxlength="20" placeholder="* 비밀번호">
				 <input type="password" name="mb_password_re" required 
				        class="frm_input half_input right_input" minlength="3" 
				        maxlength="20" placeholder="* 비밀번호 확인">

					<p
						style="font-size: 13px; color: #ff7358; margin-top: 5px; display: inline-block;">*연령대와
						성별에 맞는 최적의 여행을 만들어드려요!</p>

					<div class="birth_select clearfix">

						<!--<input type="text" name="mb_birth_Y" value="" class="birth_year frm_input half_input" size="4"
                           placeholder="출생연도" onkeyup="onlynum(event)" size="4" maxlength="4">-->
						<select name="mb_birth_Y" class="birth_year frm_input half_input"
							style="width: 30%; min-width: 95px; max-width: 120px; height: 40px;">
							<option value="">출생연도</option>
							<option value="2021">2021</option>
							<option value="2020">2020</option>
							<option value="2019">2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
							<option value="1949">1949</option>
							<option value="1948">1948</option>
							<option value="1947">1947</option>
							<option value="1946">1946</option>
							<option value="1945">1945</option>
							<option value="1944">1944</option>
							<option value="1943">1943</option>
							<option value="1942">1942</option>
							<option value="1941">1941</option>
							<option value="1940">1940</option>
							<option value="1939">1939</option>
							<option value="1938">1938</option>
							<option value="1937">1937</option>
							<option value="1936">1936</option>
							<option value="1935">1935</option>
							<option value="1934">1934</option>
							<option value="1933">1933</option>
							<option value="1932">1932</option>
							<option value="1931">1931</option>
							<option value="1930">1930</option>
							<option value="1929">1929</option>
							<option value="1928">1928</option>
							<option value="1927">1927</option>
							<option value="1926">1926</option>
							<option value="1925">1925</option>
							<option value="1924">1924</option>
							<option value="1923">1923</option>
							<option value="1922">1922</option>
							<option value="1921">1921</option>
							<option value="1920">1920</option>
							<option value="1919">1919</option>
							<option value="1918">1918</option>
							<option value="1917">1917</option>
							<option value="1916">1916</option>
							<option value="1915">1915</option>
							<option value="1914">1914</option>
							<option value="1913">1913</option>
							<option value="1912">1912</option>
							<option value="1911">1911</option>
							<option value="1910">1910</option>
						</select>
						 <select name="mb_birth_M" value="" class="frm_input half_input">
							<option value="월">월</option>
							<option value='1'>1월</option>
							<option value='2'>2월</option>
							<option value='3'>3월</option>
							<option value='4'>4월</option>
							<option value='5'>5월</option>
							<option value='6'>6월</option>
							<option value='7'>7월</option>
							<option value='8'>8월</option>
							<option value='9'>9월</option>
							<option value='10'>10월</option>
							<option value='11'>11월</option>
							<option value='12'>12월</option>
						</select> 
						<select id="reg_mb_birth_D" name="mb_birth_D" value=""
							class="frm_input half_input">
							<option value="일">일</option>
							<option value='1'>1일</option>
							<option value='2'>2일</option>
							<option value='3'>3일</option>
							<option value='4'>4일</option>
							<option value='5'>5일</option>
							<option value='6'>6일</option>
							<option value='7'>7일</option>
							<option value='8'>8일</option>
							<option value='9'>9일</option>
							<option value='10'>10일</option>
							<option value='11'>11일</option>
							<option value='12'>12일</option>
							<option value='13'>13일</option>
							<option value='14'>14일</option>
							<option value='15'>15일</option>
							<option value='16'>16일</option>
							<option value='17'>17일</option>
							<option value='18'>18일</option>
							<option value='19'>19일</option>
							<option value='20'>20일</option>
							<option value='21'>21일</option>
							<option value='22'>22일</option>
							<option value='23'>23일</option>
							<option value='24'>24일</option>
							<option value='25'>25일</option>
							<option value='26'>26일</option>
							<option value='27'>27일</option>
							<option value='28'>28일</option>
							<option value='29'>29일</option>
							<option value='30'>30일</option>
							<option value='31'>31일</option>
						</select>
					</div>
					<div class="gender_wrap" style="height: 50px;">
						<input type="radio" id="gender1" name="mb_gender" value="1">
						<label for="gender1" class="cf"
							style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
							<i style="margin: 12px 9px;" class="floatL"></i>
							 <span class="floatL" style="font-size: 14px; line-height: 38px;">남</span>
						</label>
						 <input type="radio" id="gender2" name="mb_gender" value="2">
						<label for="gender2" class="cf"
							style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
							<i style="margin: 12px 9px;" class="floatL"></i>
							 <span class="floatL" style="font-size: 14px; line-height: 38px;">여</span>
						</label>
					</div>

					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_all"> <label
							for="agree_all"><i id="agree_all_i"></i><span>아래
								약관에 모두 동의합니다.</span></label>
					</p>
					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_1" class="checkOne" name="check">
						<label for="agree_1" style="vertical-align: middle;"><i
							id="agree_1_i"></i><span
							onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/conditions.php')"
							target="_blank">회원가입 및 운영약관(필수)</span></label>
					</p>
					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_2" class="checkOne" name="check">
						<label for="agree_2" style="vertical-align: middle;"><i
							id="agree_2_i"></i><span
							onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/privacypolicy.php')"
							target="_blank">개인정보 수집 및 이용(필수)</span></label>
					</p>
					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_3" class="checkOne" name="check">
						<label for="agree_3" style="vertical-align: middle;"><i
							id="agree_3_i"></i><span
							onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/conditions.php#location')"
							target="_blank">위치정보 이용약관(선택)</span></label>
					</p>
					<p class="checkbox_wrap">
						<input type="checkbox" id="agree_4" name="agree_4" value="1"
							class="checkOne"> <label for="agree_4"><i
							id="agree_4_i"></i><span>마케팅 정보수신에 동의(선택)</span></label>
					</p>
					<input type="hidden" name="w" value=""> <input
						type="hidden" name="s" value=""> <input id="signin_btn"
						class="btnBgC txt_bs submit" type="submit" value="가입하기"
						style="margin-top: 3vh;"> <label for="signin_btn"
						style="cursor: pointer;">가입하기</label>
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
				<form class="member_form" name="flogin" action="#" method="post"
					style="margin-top: 3vh">
					<input type="email" name="mb_email" id="login_email" required
						class="id frm_input" size="30" maxLength="30" placeholder="이메일 주소"
						style="margin: 0 auto; width: 60%; display: flex;"> <input
						type="password" name="mb_password" id="login_pw" required
						class="frm_input" size="30" maxLength="30" placeholder="비밀번호"
						style="margin: 10px auto 0; width: 60%; display: flex;"> 
						<button class="btnBgC txt_bs submit" type="submit" 
						  style="margin: 10px auto 0; width: 60%;">
						   로그인
						  </button>
				</form>
				<ul class="find_signup clearfix">
					<li class="floatL""><a href="#"
						class="find_password_link txt_sm txt_bold">비밀번호 찾기/</a> <a
						href="#" class="find_id_link txt_sm txt_bold">이메일(ID) 찾기</a></li>
					<li class="floatR"><a href="#"
						class="signup_link txt_sm txt_bold">회원가입</a></li>
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
				<!--           		<form class="member_form">
                                                  <input class="btnBgC txt_bs login_link submit" type="submit" value="로그인">
                              </form> -->
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
							<i style="margin: 12px 9px;" class="floatL"></i><span
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
							<option value='1'>1월</option>
							<option value='2'>2월</option>
							<option value='3'>3월</option>
							<option value='4'>4월</option>
							<option value='5'>5월</option>
							<option value='6'>6월</option>
							<option value='7'>7월</option>
							<option value='8'>8월</option>
							<option value='9'>9월</option>
							<option value='10'>10월</option>
							<option value='11'>11월</option>
							<option value='12'>12월</option>
						</select> <select name="find_id_day">
							<option value="0">일</option>
							<option value='1'>1일</option>
							<option value='2'>2일</option>
							<option value='3'>3일</option>
							<option value='4'>4일</option>
							<option value='5'>5일</option>
							<option value='6'>6일</option>
							<option value='7'>7일</option>
							<option value='8'>8일</option>
							<option value='9'>9일</option>
							<option value='10'>10일</option>
							<option value='11'>11일</option>
							<option value='12'>12일</option>
							<option value='13'>13일</option>
							<option value='14'>14일</option>
							<option value='15'>15일</option>
							<option value='16'>16일</option>
							<option value='17'>17일</option>
							<option value='18'>18일</option>
							<option value='19'>19일</option>
							<option value='20'>20일</option>
							<option value='21'>21일</option>
							<option value='22'>22일</option>
							<option value='23'>23일</option>
							<option value='24'>24일</option>
							<option value='25'>25일</option>
							<option value='26'>26일</option>
							<option value='27'>27일</option>
							<option value='28'>28일</option>
							<option value='29'>29일</option>
							<option value='30'>30일</option>
							<option value='31'>31일</option>
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
							<option value='1'>1월</option>
							<option value='2'>2월</option>
							<option value='3'>3월</option>
							<option value='4'>4월</option>
							<option value='5'>5월</option>
							<option value='6'>6월</option>
							<option value='7'>7월</option>
							<option value='8'>8월</option>
							<option value='9'>9월</option>
							<option value='10'>10월</option>
							<option value='11'>11월</option>
							<option value='12'>12월</option>
						</select> <select name="find_id_day">
							<option value="0">일</option>
							<option value='1'>1일</option>
							<option value='2'>2일</option>
							<option value='3'>3일</option>
							<option value='4'>4일</option>
							<option value='5'>5일</option>
							<option value='6'>6일</option>
							<option value='7'>7일</option>
							<option value='8'>8일</option>
							<option value='9'>9일</option>
							<option value='10'>10일</option>
							<option value='11'>11일</option>
							<option value='12'>12일</option>
							<option value='13'>13일</option>
							<option value='14'>14일</option>
							<option value='15'>15일</option>
							<option value='16'>16일</option>
							<option value='17'>17일</option>
							<option value='18'>18일</option>
							<option value='19'>19일</option>
							<option value='20'>20일</option>
							<option value='21'>21일</option>
							<option value='22'>22일</option>
							<option value='23'>23일</option>
							<option value='24'>24일</option>
							<option value='25'>25일</option>
							<option value='26'>26일</option>
							<option value='27'>27일</option>
							<option value='28'>28일</option>
							<option value='29'>29일</option>
							<option value='30'>30일</option>
							<option value='31'>31일</option>
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
							<option value="" selected>
								이외국가</option>
							<option value="+1">
								+1 미국</option>
							<option value="+1">
								+1 캐나다</option>
							<option value="+1">
								+1 괌</option>
							<option value="+1">
								+1 사이판</option>
							<option value="+20">
								+20 이집트</option>
							<option value="+212">
								+212 모로코</option>
							<option value="+254">
								+254 케냐</option>
							<option value="+27">
								+27 남아프리카 공화국</option>
							<option value="+30">
								+30 그리스</option>
							<option value="+31">
								+31 네덜란드</option>
							<option value="+32">
								+32 벨기에</option>
							<option value="+33">
								+33 프랑스</option>
							<option value="+34">
								+34 스페인</option>
							<option value="+351">
								+351 포르투갈</option>
							<option value="+352">
								+352 룩셈부르크</option>
							<option value="+353">
								+353 아일랜드</option>
							<option value="+354">
								+354 아이슬란드</option>
							<option value="+356">
								+356 몰타</option>
							<option value="+358">
								+358 핀란드</option>
							<option value="+359">
								+359 불가리아</option>
							<option value="+36">
								+36 헝가리</option>
							<option value="+377">
								+377 모나코</option>
							<option value="+380">
								+380 우크라이나</option>
							<option value="+381">
								+381 세르비아</option>
							<option value="+385">
								+385 크로아티아</option>
							<option value="+386">
								+386 슬로베니아</option>
							<option value="+387">
								+387 보스니아 헤르체고비나</option>
							<option value="+39">
								+39 이탈리아</option>
							<option value="+40">
								+40 루마니아</option>
							<option value="+41">
								+41 스위스</option>
							<option value="+420">
								+420 체코</option>
							<option value="+421">
								+421 슬로바키아</option>
							<option value="+43">
								+43 오스트리아</option>
							<option value="+44">
								+44 영국</option>
							<option value="+45">
								+45 덴마크</option>
							<option value="+46">
								+46 스웨덴</option>
							<option value="+47">
								+47 노르웨이</option>
							<option value="+48">
								+48 폴란드</option>
							<option value="+49">
								+49 독일</option>
							<option value="+51">
								+51 페루</option>
							<option value="+52">
								+52 멕시코</option>
							<option value="+53">
								+53 쿠바</option>
							<option value="+54">
								+54 아르헨티나</option>
							<option value="+55">
								+55 브라질</option>
							<option value="+56">
								+56 칠레</option>
							<option value="+57">
								+57 콜롬비아</option>
							<option value="+591">
								+591 볼리비아</option>
							<option value="+598">
								+598 우루과이</option>
							<option value="+60">
								+60 말레이시아</option>
							<option value="+61">
								+61 호주</option>
							<option value="+62">
								+62 인도네시아</option>
							<option value="+63">
								+63 필리핀</option>
							<option value="+64">
								+64 뉴질랜드</option>
							<option value="+65">
								+65 싱가포르</option>
							<option value="+66">
								+66 태국</option>
							<option value="+680">
								+680 팔라우</option>
							<option value="+7">
								+7 카자흐스탄</option>
							<option value="+7">
								+7 러시아</option>
							<option value="+81">
								+81 일본</option>
							<option value="+82" selected>
								+82 한국</option>
							<option value="+84">
								+84 베트남</option>
							<option value="+852">
								+852 홍콩</option>
							<option value="+853">
								+853 마카오</option>
							<option value="+855">
								+855 캄보디아</option>
							<option value="+856">
								+856 라오스</option>
							<option value="+86">
								+86 중국</option>
							<option value="+886">
								+886 대만</option>
							<option value="+90">
								+90 터키</option>
							<option value="+91">
								+91 인도</option>
							<option value="+95">
								+95 미얀마</option>
							<option value="+960">
								+960 몰디브</option>
							<option value="+962">
								+962 요르단</option>
							<option value="+971">
								+971 아랍에미리트</option>
							<option value="+972">
								+972 이스라엘</option>
							<option value="+974">
								+974 카타르</option>
							<option value="+976">
								+976 몽골</option>
							<option value="+977">
								+977 네팔</option>
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
	<script>
    
    function imgShuffle(target, CDN) {
        var num = Math.floor(Math.random() * (32 - 1 + 1)) + 1;
        if (num < 10) {
            num = '0' + num;
        }
        $(target).attr('src', CDN + '/' + num + '.png');
    }

    function setCookie( name, value, expiredays ){
        var todayDate = new Date();
        todayDate.setDate( todayDate.getDate() + expiredays );
        document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
    }

    function setCookieMinutes( name, value, expiredays ){
        var todayDate = new Date();
        todayDate.setMinutes( todayDate.getMinutes() + expiredays );
        //console.log(todayDate.toGMTString());
        document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toString() + ';'
    }

    function getCookie(name){
        var obj = name + "=";
        var x = 0;
        while ( x <= document.cookie.length )
        {
            var y = (x+obj.length);
            if ( document.cookie.substring( x, y ) == obj )
            {
                if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                    endOfCookie = document.cookie.length;
                return unescape( document.cookie.substring( y, endOfCookie ) );
            }
            x = document.cookie.indexOf( " ", x ) + 1;
            if ( x == 0 )
                break;
        }
        return "";
    }

    //닫기 버튼 클릭시
    function divpop_closeWin(){
        setCookieMinutes('header_divpop', 'Y' , 60 );

        $(".header_banner").hide();
    }

    $(function(){
        if(getCookie("header_divpop") !="Y"){
            $(".header_banner").show();
        }
    });

    function sorry() {
        alert('현재 페이스북 가입은 개발 진행 중으로 네이버, 카카오톡으로만 가입이 가능합니다.');
        return false;
    }

    //숫자만 입력
    function onlynum(event) {
        event = event || window.event;
        var keyID = (event.which) ? event.which : event.keyCode;
        if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
            return;
        else
            event.target.value = event.target.value.replace(/[^0-9]/g, "");
    }

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

    $(function () {
        $("#agree_all").click(function () {
            allCheckFunc(this);
        });
        $(".checkOne").click(function () {
            $(this).each(function () {
                oneCheckFunc($(this));
            });
        });
    });

    // submit 최종 폼체크

    function CheckPass(str) {
//        var reg1 = /^[a-z0-9]{8,14}$/;    // a-z 0-9 중에 7자리 부터 14자리만 허용 한다는 뜻이구요
        var reg2 = /[a-z]/g;
        var reg3 = /[0-9]/g;
//        return(reg1.test(str) &&  reg2.test(str) && reg3.test(str));
        return (reg2.test(str) && reg3.test(str));
    }

    function fregisterform_submit(f) {
        // E-mail 검사
        if ((f.w.value == "") || (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
            var msg = reg_mb_email_check();
            if (msg) {
                alert(msg);
                f.reg_mb_email.select();
                return false;
            }
        }
        // 회원비밀번호 검사
        if (f.s.value == "") {
            if (CheckPass(f.mb_password.value) == false) {
                alert("비밀번호는 영문 숫자 조합 8자리 이상입니다.");
                return false;
            }
            if (f.w.value == "") {
                if (f.mb_password.value.length < 8) {
                    alert("비밀번호를 8글자 이상 입력하십시오.");
                    f.mb_password.focus();
                    return false;
                }
            }
            if (f.mb_password.value != f.mb_password_re.value) {
                alert("비밀번호가 같지 않습니다.");
                f.mb_password_re.focus();
                return false;
            }
            if (f.mb_password.value.length > 0) {
                if (f.mb_password_re.value < 8) {
                    alert("비밀번호를 8글자 이상 입력하십시오.");
                    f.mb_password_re.focus();
                    return false;
                }
            }
            if (f.mb_password.value.length > 0) {
                if (f.mb_password_re.value.length < 8) {
                    alert("재입력 비밀번호를 8글자 이상 입력하십시오.");
                    f.mb_password_re.focus();
                    return false;
                }
            }
        }
        // 이름 검사
        if (f.w.value == "") {
            if (f.mb_name.value.length < 1) {
                alert("이름을 입력하십시오.");
                f.mb_name.focus();
                return false;
            }
            var reg4 = /[가-힣]{2,20}|[a-zA-Z]{2,20}/;
            console.log(reg4);
            if (!reg4.test(f.mb_name.value)) {
                alert("이름을 확인해주십시오.(한글 또는 영문 2~20자 이내)");
                f.mb_name.focus();
                return false;
            }
        }
        if (f.mb_birth_Y.value == '') {
            alert("출생연도를 선택해주세요.");
            f.mb_birth_Y.focus();
            return false;
        }
        if (f.mb_birth_M.value == '월') {
            alert("월을 선택해주세요.");
            f.mb_birth_M.focus();
            return false;
        }

        if (f.mb_birth_D.value == '일') {
            alert("일을 선택해주세요.");
            f.mb_birth_D.focus();
            return false;
        }

        if ($('input[name=mb_gender]:checked').val() == undefined) {
            alert("성별을 선택하여 주십시오.");
            $('#agree1').focus();
            return false;
        }
        // 약관동의 체크
        if ($("#agree_1").is(":checked") !== true || $("#agree_2").is(":checked") !== true) {
            alert("서비스 이용약관에 동의하세요.");
            return false;
        }
        return true;
    }

    var reg_mb_email_check = function () {
        var result = "";
        jQuery.ajax({
            type: "POST",
            url: "/bbs/ajax.mb_email.php",
            data: {
                "reg_mb_email": $("#reg_mb_email").val()
            },
            cache: false,
            async: false,
            success: function (data) {
                result = data;
            }
        });
        return result;
    }

    function login_link() {
        $("html").addClass("pop");
        $(".pop_wrap:visible").hide();
        $(".login_pop").parent(".pop_wrap").show();
    }

    var cert_code = '';
    var cert_tel = '';
    $(".send_certified_button").click(function () {
        if (!$(this).hasClass('btnBgC')) {
            return false;
        }
        var returnType = $(this).attr('data-type');
        if ('') {
            if ($(this).attr('data-now') === '1') {
                var mb_tel1 = $('input[name="mb_tel1"]').val();
                var country_code = $('select[name="country_code"]').val();

                if (mb_tel1.length < 6) {
                    alert("휴대폰 번호를 입력해주세요.");
                    return false;
                }

                $('.send_certified_button.send_btn').removeClass('btnBgC');
                $('.send_certified_button.success_btn').removeClass('btnBgC');

                var datavalue = {
                    'jobFlag': 'mb_tel_certified',
                    'mb_tel': mb_tel1,
                    'country_code': country_code
                };
                                $.ajax({
                    url: '/service/action/mb_tel_certified.php',
                    type: 'POST',
                    data: datavalue,
                    dataType: 'JSON',
                    success: function (data) {
                        console.log(data);
                        if (data.result === 'success') {
                            cert_code = data.cert_code;
                            cert_tel = data.cert_tel;

                            $('#certified').removeAttr("disabled");
                            $("#country_code").attr("disabled", true);
                            $("#mb_tel1").attr("disabled", true);
                            $('.send_certified_button.success_btn').show();
                            $('.send_certified_button.success_btn').addClass('btnBgC');
                        }
                    },
                    error: function (data) {
                        console.log('error' + data);
                        $('.send_certified_button.send_btn').addClass('btnBgC');
                    }
                });

            } else if ($(this).attr('data-now') === '2') {
                var certified = $('input[name="certified"]').val();
                if (cert_code != certified) {
                    alert("인증번호가 틀립니다.");
                    return false;
                }
                if (cert_tel === '' || cert_code === '' || certified === '') {
                    alert("인증 정보가 틀립니다.");
                    return false;
                }
                if (returnType === 'dataReturn') {
                    $.ajax({
                        url: '/service/action/mb_tel_certified.php',
                        type: 'POST',
                        data: {
                            'jobFlag': 'mb_tel_save',
                            'mb_tel': cert_tel,
                            'mb_id': ''
                        },
                        dataType: 'JSON',
                        success: function (data) {
                            //console.log(data);
                            if (data.result === 'success') {
                                $('.tel_certified_pop_link').text('본인인증 완료');
                                alert('휴대폰 본인인증 완료되었습니다.');
                                var mb_tel = cert_tel.split('|');
                                $('select.mb_cert_country_code').val(mb_tel[0]).prop("selected", true);
                                $('input.mb_cert_tel').val(mb_tel[1]);

                                $("html").removeClass("pop");
                                $('.pop_bg.pop_wrap').css('display', 'none');
                            }

                        },
                        error: function (data) {
                            console.log('error' + data);
                        }
                    });
                } else {
                    $.ajax({
                        url: '/service/action/mb_tel_certified.php',
                        type: 'POST',
                        data: {
                            'jobFlag': 'mb_tel_save',
                            'mb_tel': cert_tel,
                            'mb_id': ''
                        },
                        dataType: 'JSON',
                        success: function (data) {
                            //console.log(data);
                            if (data.result === 'success') {
                                alert('휴대폰 본인인증 완료되었습니다.');
                                $('.tel_certified_pop_link').text('본인인증 완료');
                                $(".pop_wrap").hide();
                                $('.container').removeClass('not_scroll');
                                $('body').css('overflow', 'visible');
                                location.reload();
                            }

                        },
                        error: function (data) {
                            console.log('error' + data);
                        }
                    });
                }

            }
        } else {
            alert('로그인 후 시도해주세요.');
            location.reload();
        }
    });


    $(".find_id_button").click(function () {
        var name = $('input[name="find_id_name"]').val();
        var year = $('input[name="find_id_year"]').val();
        var mon = $('select[name="find_id_mon"]').val();
        var day = $('select[name="find_id_day"]').val();

        var birth = (year != '' && mon != 0 && day != 0) ? year + '/' + mon + '/' + day : '';
        var gender = $('input[name=find_gender]:checked').val() ? $('input[name=find_gender]:checked').val() : '';


        if ($('input[name="find_id_name"]').length < 1 || name == '') {
            alert("이름을 입력해주세요.");
            return false;
        } else {
            $.ajax({
                url: '/skin/html/ajax.php',
                type: 'POST',
                data: 'p=find_id&name=' + name + '&gender=' + gender + '&birth=' + birth,
                dataType: 'JSON',
                success: function (data) {
                    console.log(data);
                    var apd_html = '';

                    $("html").addClass("pop");
                    $(".pop_wrap:visible").hide();
                    $(".find_id_fin_pop").parent(".pop_wrap").show();

                    $('.find_member_wrap').empty();

                    if (data.length > 0) {
                        apd_html += '<h3 class="tit txt_bold">이메일(ID) 찾기</h3>';
                        apd_html += '<p class="txt_bs txt_bold" style="margin-top:20px; line-height:20px;">- 조회 결과 입력하신 정보와 일치하는<br/>이메일은 아래와 같습니다.</p>';
                        apd_html += '<p class="txt_bs txt_bold" style="margin-top:20px; line-height:20px;">- 이름, 성별, 생년월일이 동일한 동명이인의 이메일이<br/>함께 검색될 수 있습니다.</p>';
                        apd_html += '<p style="margin-top:20px;">이메일(ID)은</p>';
                        apd_html += '<ul class="find_id" style="text-align: center;">';
                        for (var i = 0; i < data.length; i++) {
                            apd_html += '<li style="color:#ff7358;"><span><p style="text-align:center;margin-top:5px;">' + data[i].mb_id.replace('/(?<=.{2}).(?=.*@)/g', '*') + ' (가입일 : ' + new Date(data[i].mb_datetime).format('yyyy년 MM월 dd일') + ')</p></span></li>';
                        }
                        apd_html += '</ul>';
                        apd_html += '<p>입니다.</p>';
                        apd_html += '<a class="btnBgC txt_bs submit" href="#" style="padding: 10px; margin-top: 30px; text-align: center; width: 100%;" onclick="login_link();">로그인</a>';
                        $('.find_member_wrap').html(apd_html);
                    } else {
                        //apd_html += '<h3 class="tit txt_bold">이메일(ID) 찾기</h3>';
                        //apd_html += '<p class="txt_bs txt_bold">이메일(ID)이 없습니다.<br><p style="margin-top:10px;">SNS 계정은 해당 SNS에서 조회할 수 있습니다.</p>';
                        $('.find_member_wrap').html('이메일(ID)이 없습니다.<br><p style="margin-top:10px;">SNS로 가입한 계정의 이메일(ID)는 고객센터로 문의해주세요 :)</p>');
                    }
                },
                error: function (data) {
                    console.log('error' + data);
                }
            });
        }
    });

    $(".find_password_button").click(function () {
        var email = $('input[name="find_password_email"]').val();
        jQuery.ajax({
            url: '/skin/html/ajax.php',
            type: 'POST',
            data: 'p=find_password&email=' + email,
            success: function (data) {
                // console.log('success' + data);
                if (data.length > 0) {
                    $('.find_password_fin_pop p').html('임시 비밀번호를 메일로 전송하였습니다.');
                } else {
                    $('.find_password_fin_pop p').html('이메일(ID)이 없습니다.<br><p style="margin-top:10px;">SNS로 가입한 계정의 이메일(ID)는 고객센터로 문의해주세요 :)</p>');
                }
            },
            error: function (data) {
                console.log('error' + data);
            }
        });
    });

    var searchVal = '';
    var delayTimer;

    $('.totalsearch').keydown(function (e) {
        if (e.keyCode == 13 || e.keyCode == 9) {
            searchVal = $(this).val();
            if (searchVal == '') {
                $('.header_auto_select').empty();
                $('.header_auto_select').css('display', 'none');
                clearTimeout(delayTimer);
            } else if (searchVal !== '') {
                $('.header_auto_select').empty();
                $('.header_auto_select').css('display', 'none');
                if (searchVal !== undefined || searchVal !== null) {
                    if (searchVal.length >= 1 && searchVal !== '') {
                        doSearch();
                    }
                } else {
                    $('.header_auto_select').empty();
                    $('.header_auto_select').css('display', 'none');
                }
            }
        }
    });

    $('.totalsearch').on("keyup", function (e) {
        e.preventDefault();
        searchVal = $(this).val();
        if (searchVal == '') {
            $('.header_auto_select').empty();
            $('.header_auto_select').css('display', 'none');
            clearTimeout(delayTimer);
        } else if (searchVal !== '') {
            // alert('검색어..');
            $('.header_auto_select').empty();
            $('.header_auto_select').css('display', 'none');
            //alert(searchVal.length);
            if (searchVal !== undefined || searchVal !== null) {
                if (searchVal.length >= 1 && searchVal !== '') {
                    doSearch();
                }
            } else {
                $('.header_auto_select').empty();
                $('.header_auto_select').css('display', 'none');
            }
        }
    });

    function doSearch() {
        clearTimeout(delayTimer);
        delayTimer = setTimeout(function () {
            jQuery.ajax({
                url: '/skin/html/ajax.php',
                type: 'POST',
                data: 'p=auto_search_country&search_area=' + searchVal,
                async: false,
                dataType: 'JSON',
                success: function (data) {
                    console.log(data);
                    if (data.length > 0) {
                        $('.header_auto_select').css('display', 'block');
                        $('.header_auto_select').append('<li class="header_auto_select_list" style="color: #fff;padding: 10px 20px 10px 38px;float: none;width: auto;height: auto;overflow:auto;border:none;cursor:pointer;">' + data[0].country + '</li>');
                        for (var i = 0; data.length > i; i++) {
                            $('.header_auto_select').append('<li class="header_auto_select_list" style="color: #fff;padding: 10px 20px 10px 38px;float: none;width: auto;height: auto;overflow:auto;border:none;cursor:pointer;">' + data[i].country + ' > ' + data[i].area + '</li>');
                        }
                    }
                },
                error: function (data) {
                    console.log('error' + data);
                }
            });
            jQuery.ajax({
                url: '/skin/html/ajax.php',
                type: 'POST',
                data: 'p=auto_search_area&search_area=' + searchVal,
                async: false,
                dataType: 'JSON',
                success: function (data) {
                    if (data.length > 0) {
                        $('.header_auto_select').css('display', 'block');
                        for (var i = 0; data.length > i; i++) {
                            $('.header_auto_select').append('<li class="header_auto_select_list" style="color: #fff;padding: 10px 20px 10px 38px;float: none;width: auto;height: auto;overflow:auto;border:none;cursor:pointer;">' + data[i].country + ' > ' + data[i].area + '</li>');
                        }
                    }
                },
                error: function (data) {
                    console.log('error' + data);
                }
            });
            jQuery.ajax({
                url: '/skin/html/ajax.php',
                type: 'POST',
                data: 'p=auto_search_tm&search_area=' + searchVal,
                async: false,
                dataType: 'JSON',
                success: function (data) {
                    if (data.length > 0) {
                        $('.header_auto_select').css('display', 'block');
                        for (var i = 0; data.length > i; i++) {
                            $('.header_auto_select').append('<li class="" style="color: #fff;padding: 10px 20px 10px 38px;float: none;width: auto;height: auto;overflow:auto;border:none;cursor:pointer;" data-value="0" onclick="location.href=\'/skin/html/tm.php?mb_no='
                                + data[i].mb_no + '\'"> ' + data[i].country + ' > ' + data[i].area + ' > ' + data[i].mb_nick + '</li>');
                        }
                    }
                },
                error: function (data) {
                    console.log('error' + data);
                }
            });
            jQuery.ajax({
                url: '/skin/html/ajax.php',
                type: 'POST',
                data: 'p=auto_search_item&search_area=' + searchVal,
                async: false,
                dataType: 'JSON',
                success: function (data) {
                    $('.header_auto_select').css('display', 'block');
                    for (var i = 0; data.length > i; i++) {
                        $('.header_auto_select').append('<li class="header_auto_select_list" style="color: #fff;padding: 10px 20px 10px 38px;float: none;width: auto;height: auto;overflow:auto;border:none;cursor:pointer;" data-value="1">'
                            + data[i].country + ' > ' + data[i].area + ' > ' + data[i].it_name + '</li>');
                    }

                    searchVal = '';
                },
                error: function (data) {
                    console.log('error' + data);
                }
            });
            $('.header_auto_select_list').click(function () {
                var searchdata = $(this).data('value');
                var searchVal = $(this).text() + '>' + searchdata;
                if (searchdata == undefined) {
                    var searchVal = $(this).text();
                    jQuery.ajax({
                        url: '/skin/html/ajax.php',
                        type: 'POST',
                        data: 'p=session2&searchVal=' + searchVal,
                        success: function (data) {
                            // console.log('success' + data);
                            location.href = '/skin/html/search.php?search=0';
                        },
                        error: function (data) {
                            console.log('error' + data);
                            alert('업데이트를 실패하였습니다.');
                        }
                    });
                } else if (searchdata == '0') {
                    jQuery.ajax({
                        url: '/skin/html/ajax.php',
                        type: 'POST',
                        data: 'p=totalsearch&searchVal=' + searchVal,
                        dataType: 'JSON',
                        success: function (data) {
//			 				console.log(data);
                            location.href = '/skin/html/tm.php?mb_no=' + data.mb_no;
                        },
                        error: function (data) {
                            console.log('error' + data);
                            alert('업데이트를 실패하였습니다.');
                        }
                    });
                } else if (searchdata == '1') {
                    jQuery.ajax({
                        url: '/skin/html/ajax.php',
                        type: 'POST',
                        data: 'p=totalsearch&searchVal=' + searchVal,
                        dataType: 'JSON',
                        success: function (data) {
                            //console.log(data);
                            location.href = '/skin/html/offer.php?it_id=' + data.it_id;
                        },
                        error: function (data) {
                            console.log('error' + data);
                            alert('업데이트를 실패하였습니다.');
                        }
                    });
                }
            });
        }, 500);

    }

    $(function () {
        $(".sns-wrap").on("click", "a.social_link", function (e) {
            e.preventDefault();
            var pop_url = $(this).attr("href");
            //alert(pop_url);
            var newWin = window.open(
                pop_url,
                "social_sing_on",
                "location=0,status=0,scrollbars=0,width=600,height=500"
            );

            if (!newWin || newWin.closed || typeof newWin.closed == 'undefined') {
                alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');
            }

            return false;
        });
    });

    function shareKakaotalk() {
        Kakao.init('7ecc88f4a16173c33025206c3fb0dc08');      // 사용할 앱의 JavaScript 키를 설정
        Kakao.Link.sendDefault({
            objectType: "feed",
            content: {
                title: '',   // 콘텐츠의 타이틀
                description: '',   // 콘텐츠 상세설명
                imageUrl: 'https://d3jp64jhrslomr.cloudfront.net' + $('.main_img_0').data('img-src'),  // 썸네일 이미지
                link: {
                    mobileWebUrl: window.location.href,   // 모바일 카카오톡에서 사용하는 웹 링크 URL
                    webUrl: window.location.href // PC버전 카카오톡에서 사용하는 웹 링크 URL
                }
            },
            social: {
                likeCount: 0,       // LIKE 개수
                commentCount: 0,    // 댓글 개수
                sharedCount: 0,     // 공유 회수
            },
            buttons: [
                {
                    title: '트래블 확인하기',    // 버튼 제목
                    link: {
                        mobileWebUrl: window.location.href,   // 모바일 카카오톡에서 사용하는 웹 링크 URL
                        webUrl: window.location.href // PC버전 카카오톡에서 사용하는 웹 링크 URL
                    }
                }
            ]
        });
        Kakao.cleanup();
    }

    function shareFaceBook() {
        var linkUrl = window.location.href;
        window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(linkUrl));
    }

    function CopyUrlToClipboard() {
        var obShareUrl = document.getElementById("ShareUrl");
        obShareUrl.value = window.document.location.href;  // 현재 URL 을 세팅해 줍니다
        obShareUrl.select();  // 해당 값이 선택되도록 select() 합니다
        document.execCommand("copy"); // 클립보드에 복사합니다.
        obShareUrl.blur(); // 선택된 것을 다시 선택안된것으로 바꿈니다.
        alert('URL이 복사되었습니다');
    }

    function popUpTwitter() {
        window.open('https://twitter.com/intent/tweet'
            + '?via=TravelMakers'
            + '&text=' + encodeURIComponent($('title').text()) // Title in this html document
            + '&url=' + encodeURIComponent(window.location.href)
            // , "_blank"
            // , 'width=600,height=400,resizable=yes,scrollbars=yes'
        );
    }

    function shareLine() {
        window.open('https://social-plugins.line.me/lineit/share?url=' + encodeURIComponent(window.location.href));
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
					<h2 class="txt_tit" style="font-size:30px; color:skyblue;">TRIPFUL AXEL</h2>
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
							style=" width:800px; height:535;"
							src="/tripfulaxel/resources/user/images/common/local_guide_main.png"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">로컬 가이드 여행</h1>
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
							<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">나만의 여행</h1>
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
							<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">같이가요 여행</h1>
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
							<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">여행플래너</h1>
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
							<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">실시간 정보 공유</h1>
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
					<h2 class="txt_tit" style="font-size:30px; color:skyblue;">제주도, 재주도 많다</h2>
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
				<div id="jejuData" class="carousel-inner" >
					<div class="carousel-item active">
						<img class="d-block w-100"
							data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"
							style=" width:800px; height:700px;"
							src="/tripfulaxel/resources/user/images/common/main2.jpg"
							data-holder-rendered="true">
						<div class="carousel-caption d-none d-md-block"
							style="bottom: 50px;">
							<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">로컬 가이드 여행</h1>
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

		$(document).ready(function(){
			console.log("gg");
        	$.ajax({
    			url:"jeju",
    			success:function(data,status,xhr){
    				/* console.log(JSON.parse(data.jejuData));*/
/*     				h1.innerText = JSON.parse(data.jejuData).response.body.items.item[0].galTitle;
 */    				/* JSON.parse(data.jejuData).response.body.items.item[0] */
					console.log(JSON.parse(data.jejuData).response.body.items);
					$.each(JSON.parse(data.jejuData).response.body.items.item, function(i,item) {
						console.log(item.galWebImageUrl);
              	/* var aa ='<li style="text-align: center; display: none;">' +
                            '<a class="exhibition_href" href="#" target="_blank">' +
			    				'<div class="exhibition_img"' + 
				'style="width: 1070px; overflow: hidden; background: rgba(150, 150, 150, 0.3)' + 
                            'url('+ "'" +item.galWebImageUrl+ "'"+') no-repeat center/cover;">'+
                       '</div>' +
				'</a>' +
				'</li>'; */
				
						var aa = '<div class="carousel-item">'+
							'<img class="d-block w-100"' +
								'data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"'+
							'style=" width:800px; height:700px;"' + 
							'src="' +item.galWebImageUrl+ '"' +
							'data-holder-rendered="true">' + 
						'<div class="carousel-caption d-none d-md-block"' +
							'style="bottom: 50px;">' + 
							'<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">로컬 가이드 여행</h1>' +
							'<p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>' +
						'</div>' +	
						'</div>'; 
/* 						var aa = "<p>" + "dddd" + "</p>";
 */					
	               		$("#jejuData").append(aa);
             		});
        		},
    			error:function(xhr,status,error){
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
    $(function () {
        $(".lazy").Lazy();

        $('.new_best_product').on('afterChange', function () {
            $(".lazy").Lazy();
        });
    });
    function customizingLink() {
        if ('') {
            jQuery.ajax({
                url: '/skin/html/ajax.php',
                type: 'POST',
                data: 'p=cus0&mb_id=',
                success: function (data) {
                    console.log('success' + data);
                    location.href = '/skin/html/customizing1.php';
                },
                error: function (data) {
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