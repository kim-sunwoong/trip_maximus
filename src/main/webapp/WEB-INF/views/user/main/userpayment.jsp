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


<!-- 웹 폰트 확인 후 변경 -->
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">

<script src="/tripfulaxel/resources/user/js/modernizr.custom.70111.js"></script>

<!-- 결제부분 스타일 추가추가추가 -->
<style>

.pay_btn_area .btn {
    width: 100% !important;
}

.btnBgC{
   background: skyblue !important ;color: white;
   
   }


</style>

<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/main.css?ver=20210620">
<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/common.css?ver=20210620">
<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/style.css?ver=20210620">


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
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<section class="container pcWrap">
		<div class="payment_wrap mainT" style="clear: both;">
			<!-- clearfix -->
			<div class="floatL payment_prod">
				<div class="thumb">
					<img  src="../../../resources/user/images/common/jejujuyoung.jpg"
						alt="test">
				</div>
				<div class="prod_info_wrap">
					<div class="prod_info">
						<h2 class="tit ellipsis">제주 맛집 투어 ! 저녁 투어</h2>
						<div class="offer_main_local clearfix">
					
							<ul class="prod_info_detail txt_md">
								<li class="clearfix">
									<p class="floatL">여행일</p>
									<p class="floatR">
										<span>2021-06-26</span>
									</p>
								</li>
								<li class="clearfix">
									<p class="floatL">여행인원</p>
									<p class="floatR">
										<span>5</span>명
									</p>
								</li>
								<li class="clearfix">
									<p class="floatL">1인당</p>
									<p class="floatR">
										<span>100,000</span>원
									</p>
								</li>
							</ul>
						</div>
						<div class="payment_total clearfix txt_md" style="padding-left: 0px; padding-right: 0px;">
							<p class="floatL txtC">최종결제 금액</p>
							<p class="floatR txtC">
								<span>500,000</span>원
							</p>
						</div>
					</div>

				</div>
			</div>
			<div class="floatR payment_info_wrap">
				<ul class="payment_info">
					<li>
						<h3 class="txt_big">여행자 이름</h3> 
						  <label class="clearfix subm_wrap">
						<input type="text" class="floatL input_mid" value="정주영" style="width: 100%;"> 
					
					    </label>
					</li>
					<li>
						<h3 class="txt_big">여행 연락처</h3> 
						<label class="clearfix subm_wrap">
					     <input type="text" class="floatL input_mid" value="010-2775-3242" style="width: 100%;"> 
					</li>
					<!-- <li>
						<h3 class="txt_big">요청사항</h3> 
						<textarea class="wishtext" placeholder="TM에게 요청하고 싶은 내용을 입력해주세요 :)" name="wish"></textarea>
					</li> -->
					<li>
						<h3 class="txt_big">결제수단</h3>
						<ul class="payment_select txt_md">
							<li><label for="pay-01"> 
							 <span class="pay_txt">카카오페이</span>
							</label></li>
			
				
						</ul>
					</li>
					<li>
						<h3 class="txt_big">이용약관</h3>
						<div class="pay_terms" style="padding: 10px;">

						</div>
						<div class="agree_area">
							<label for="terms-agree"> <input type="checkbox"
								id="terms-agree"> <i class="check_ico"></i> <span
								class="pay_txt">약관을 읽었으며 내용에 동의합니다.</span>
							</label>
						</div>
					</li>
					<li class="pay_btn_area clearfix">
					<a href="#" class="btn btnBgC floatR pay_conf">결제하기</a>
					</li>
				</ul>
			</div>
		</div>
	</section>

	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>