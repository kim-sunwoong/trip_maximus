<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

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
	src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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


<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<style>
#head {
	position: fixed;
	margin-right: 400px;
	margin-top: 5%
}

.topimg img {
	object-fit: cover !important;
	width: 800px !important;
	height: 420px !important;
}


</style>


</head>
<body>

	<section class="container pcWrap">

		<div class="offerWrap clearfix"
			style="position: relative; width: 860px">
			<!-- 상품상세영역 시작 -->
			<div class="offerDetail floatL">
				<div class="offer_main">
					<div class="offer_main_slider">
						<div class="topimg">
							<img src="/tripfulaxel/resources/user/images/trip/jeju1.png">
						</div>
						<div class="topimg">
							<img src="/tripfulaxel/resources/user/images/trip/jeju2.png">
						</div>
						<div class="topimg">
							<img src="/tripfulaxel/resources/user/images/trip/jeju3.png">
						</div>
						<div class="topimg">
							<img src="/tripfulaxel/resources/user/images/trip/jeju4.png">
						</div>
						<div class="topimg">
							<img src="/tripfulaxel/resources/user/images/trip/jeju5.png">
						</div>

					</div>

		
				</div>


				<div class="offerNav">
					<ul class="clearfix offerNavList" style="background:skyblue; color:white">
						<li class="floatL" data-id="offerMaker"><a
							href="#offerMaker">같이가요!</a></li>
						<li class="floatL" data-id="offerTravel"><a
							href="#offerTravel">여행 소개</a></li>
						<li class="floatL" data-id="Course"><a href="#Course">코스
								안내</a></li>
						<li class="floatL" data-id="offerInfo"><a href="#offerInfo">안내
								사항</a></li>
						<li class="floatL" data-id="offerReview"><a
							href="#offerReview">후기</a></li>
					</ul>
				</div>
				<div class="offerArea clearfix" id="offerMaker">
					<h3 class="txt_tit" style="padding-bottom: 20px;">제가 계획했어요!</h3>
					<div class="clearfix2 offer_tm_profile">
						<div class="profile_details clearfix">
							<div class="pfImg floatL">
								<img src="/tripfulaxel/resources/user/images/trip/guide1.png">
							</div>
							<div class="tm_info floatL" style="font-size: 18px;">
								<h3 class="nick"></h3>
								<p class="grade txt_md">서울</p>

								<p style="width: 100%;" class="grade txt_md">오랜만에 떠나는 여행 즐거운 추억 남겨보아요~~~!!</p>
								<p class="txt_md">
									<i class="grade_ico" style="font-size: 16px"></i>평점 5.0
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="offerArea" id="offerTravel">
					<div class="">
						<h3 class="txt_tit">여행 소개</h3>
						<ul class="starUl">
							<li style="width: 100%; padding-left: 0">
								<p class="WhiteSpacing text_cut_expand4"
									style="width: 100%; word-break: break-all;">저는 배낭 여행은 물론
									인솔자 분과 함께 떠나는 패키지 여행도 참 많이 다녔어요. 패키지 여행에서 항상 아쉬웠던 점은 그 지역에서
									유명하지도, 가고 싶지 않은 곳도 어쩔 수 없이 가야 할 때,1900년도 초반의 상하이를 느낄 수 있는 예원의 옛 거리부터 형형색색의 간판이 거리를 물들이는
									난징동루 보행길, 그리고 난징동루의 알록달록한 거리에 취해 걷다보면 눈 앞에 펼쳐지는 와이탄의 무지갯빛 야경까지,
									이색적이고 아름다운 도시 상하이의 매력을 느끼게 해드릴게요!</p>
							</li>
						</ul>
						<div class="offerBox">
							<h4 class="txt_big">여행 테마</h4>
							<ul class="textP">
								<li>1. TM만 알고 있는 시크릿 스팟 트래블</li>
								<li>2. 이 곳에서만 맛 볼 수 있는 로컬 맛집/카페</li>
								<li>3. 현지의 트렌디한 BAR/PUB/CLUB</li>
								<!-- <li class="iconUl_local">한국인 관광객이 1도 없는 로컬 트래블</li>
                                     <li class="iconUl_spot">TM만 알고 있는 시크릿 스팟 트래블</li>
                                     <li class="iconUl_ext">직접 체험하는 액티비티(익스트림 스포트 등) 트래블</li> -->
							</ul>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">여행 이동수단</h4>
							<ul class="textP">
								<li>1. 현지인처럼 대중교통으로 이동해요.</li>
								<li>2. 여행지의 구석구석을 보며 걸어요.</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="offerArea" id="Course">
					<div class="">
						<div class="">
							<h4 class="txt_big" style="margin-bottom: 20px;">로컬 포인트</h4>
							<ul class="textP ">
								<li class="WhiteSpacing text_cut_expand1"
									style="width: 100%; word-break: break-all;">중국 하면 로컬음식!
									육즙을 빨대로 먹을 수 있는 일명 빨대 만두, 중국의 전통 간식인 과일 꼬치 탕후루, 달걀과 각종 채소, 치즈,
									베이컨 등을 넣어 또띠아처럼 말아 먹는 따뜻하고 든든한 간식 쇼좌삥 한 입, 해가 지면 하나둘 보이는 길거리 좌판
									위의 꼬치 요리와 맥주를 한 잔 들이켜면 여행에서의 소소한 행복이 전해져요. 블로그의 유명 맛집들도 좋지만,
									저렴하고 푸짐한 로컬 음식을 먹으며 중국의 맛에 빠져보는 것은 어떨까요?</li>
							</ul>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">
								코스 안내<span class=""> &#40;총 <span>05</span>시간 <span>00</span>분
									소요&#41;
								</span>
							</h4>
							<div class="corseWrap">
								<dl class="clearfix new_box_shadow">
									<dt class="floatL" style="width: 200px; height: 220px;">
										<img src="/tripfulaxel/resources/user/images/trip/jeju7.png">
									</dt>
									<dd class="floatL">
										<h5 class="txt_md" style="word-break: break-all;">여행의 첫
											시작, 예원</h5>
										<div>
											<p class="WhiteSpacing" style="word-break: break-all;">전통적이고
												웅장한 건물 사이에서 맛보는 로컬음식! 주문과 동시에 작은 대나무 찜기에 쪄 나오는 중국식 만두 샤오롱바오,
												딸기와 산사나무 열매를 긴 나무 막대에 꿰어 달콤한 시럽을 바른 후 굳혀 만든 전통 간식 과일 꼬치 탕후루,
												불판 위에서 지글지글 돌아가는 양꼬치 모두 예원에서 맛볼 수 있어요! 맘에 드시는 간식을 골라 한 입
												맛보신다면 여행에서의 소소한 행복에 포옥 빠지게 된답니다 :)</p>
										</div>
									</dd>
								</dl>
								<dl class="clearfix new_box_shadow">
									<dt class="floatL" style="width: 200px; height: 220px;">
										<img src="/tripfulaxel/resources/user/images/trip/jeju6.png">
									</dt>
									<dd class="floatL">
										<h5 class="txt_md" style="word-break: break-all;">난징동루에서
											와이탄까지</h5>
										<div>
											<p class="WhiteSpacing" style="word-break: break-all;">알록달록
												색칠놀이를 해놓은 것만 같은 복작복작하고 재미난 거리, 난징동루 보행길을 함께 걸어봐요. 조그마한 장신구를
												파는 상점부터 대형 복합 쇼핑몰, 최근 재오픈 한 M&M 초콜릿 스토어까지 없는 게 없는 이 곳! 상해
												여행에서 꼭 사진을 찍는다는 [ I♡SH ] 간판도 바로 이 곳 난징동루 보행길에 있답니다!</p>
										</div>
									</dd>
								</dl>
								<dl class="clearfix new_box_shadow">
									<dt class="floatL" style="width: 200px; height: 220px;">
										<img src="/tripfulaxel/resources/user/images/trip/jeju8.png">
									</dt>
									<dd class="floatL">
										<h5 class="txt_md" style="word-break: break-all;">중국 하면
											상하이! 상하이 하면 와이탄!</h5>
										<div>
											<p class="WhiteSpacing" style="word-break: break-all;">상하이에서
												제일 핫한 이 곳! 상하이 도심속의 작은 유럽 와이탄! 난징동루 보행길의 알록달록한 거리에 취해 걷다보면 눈
												앞에 펼쳐지는 와이탄의 무지개빛 야경. 끝없이 펼쳐져 있는 아름다운 건물들을 눈에 담고 황푸강의 시원한
												바람을 느껴보아요!</p>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">만나는 시간</h4>
							<p>여행자와 상의 후 결정</p>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">만나는 장소</h4>
							<div class="offerMap">
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621"
									style="width: 100%; height: 100%;"></iframe>
							</div>
						</div>
					</div>
				</div>
				<div class="offerArea floatL" style="margin-bottom: 0px"
					id="offerInfo">
					<div style="width: 770px;">
						<div>
							<h4 class="txt_big" style="margin-bottom: 20px;">로컬가이드 한마디</h4>
							<ul class="textP">
								<li id="text_cut_expand3"
									class="WhiteSpacing offerWhiteSpacing text_cut_expand3">1.
									중국 여행비자 중국을 여행하기에 앞서 제일 중요한 건 비자 발급이에요. 여행을 오시기 최소 2주 전에 반드시!
									비자를 발급받아야 한다는 점 명심해주세요! 비자는 마트에서 쉽게 볼 수 있는 여행사 부스에서도 발급할 수
									있는데요, 가격은 10만 원 안팎의 가격이며 (보통 현금 혹은 계좌이체만 가능) , 여권, 비자 사진( 여권
									사진과 다르며 촬영 시기가 3개월이 넘지 않는 흰색 배경의 사진, 흰옷 금지) 을 준비해주시면 된답니다! 중국
									비자센터에 직접 방문하신다면 조금 더 저렴한 가격으로 발급을 받으실 수도 있어요.
							</ul>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">포함사항</h4>
							<ul class="textP">
								<li class="txtG" style="word-break: break-all;">여행 통역비,
									가이드비, 간식비(샤오롱바오,탕후루,양꼬치 중 택1)</li>
							</ul>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">불포함사항</h4>
							<ul class="textP">
								<li class="txtG" style="word-break: break-all;">교통비</li>
							</ul>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">취소 및 환불 규정</h4>
							<ul class="textP text_cut_expand2">
								<li class="txtG">- 여행시작 30일전까지 통보시: 여행 요금 전액 환불, 여행자 부담 없음</li>
								<li class="txtG">- 여행시작 20일 전까지 통보시: 여행요금에서 “트래블메이커” 요금의
									10%와 “회사” 수수료 공제 후 환불</li>
								<li class="txtG">- 여행시작 6일 전까지 통보시: 여행요금에서 “트래블메이커” 요금의
									15%와 “회사” 수수료 공제 후 환불</li>
								<li class="txtG">- 여행시작 1일 전까지 통보시: 여행요금에서 “트래블메이커” 요금의
									20%와 “회사” 수수료 공제 후 환불</li>
								<li class="txtG" style="margin-bottom: 10px;">- 여행시작 시간 기준
									24시간 이내 통보시: 여행요금에서 “트래블메이커” 요금의 50%와 “회사” 수수료 공제 후 환불</li>
								<li class="">* “여행자”가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을
									취소(철회)하는 경우와 “여행자”가 트래블 예약 후 TM이 여행 확정하기 전에 취소(철회)하는 경우는 여행요금을
									전액 환불합니다. 단, “여행자”가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될
									경우는 전액 환불 대상에서 제외합니다.</li>
								<li class="">* 취소(철회) 통보 시점은, ‘취소 요청서가 “회사” 플랫폼에 접수된 시간’ 또는
									“회사” 공식 카카오 상담센터를 통하여 취소(철회) 통보한 내용이 기록된 시간’을 기준으로 합니다.</li>
							</ul>
						</div>


					</div>
				</div>
				<div class="clearfix"></div>

				<div class="offerArea" id="offerReview"
					style="padding-bottom: 120px;">
					<div class="reviewBox">
						<h4 class="txt_big">대표 리뷰</h4>
						<dl>
							<dt class="clearfix">
								<span class="txt_md floatL txt_bold txt_md">백**&nbsp;</span> <img
									src="/tripfulaxel/resources/user/images/common/star.png"
									style="width: 20px; height: 20px;"> <img
									src="/tripfulaxel/resources/user/images/common/star.png"
									style="width: 20px; height: 20px;"> <img
									src="/tripfulaxel/resources/user/images/common/star.png"
									style="width: 20px; height: 20px;"> <img
									src="/tripfulaxel/resources/user/images/common/star.png"
									style="width: 20px; height: 20px;"> <img
									src="/tripfulaxel/resources/user/images/common/star.png"
									style="width: 20px; height: 20px;">
							</dt>
							<br>
							<div class="reviewimage">
								<div class="imageone">
									<img style="width: 250px; height: 130px"
										src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
									<img style="width: 250px; height: 130px"
										src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
									<img style="width: 250px; height: 130px"
										src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
								</div>
								<dd class="qnaCont">
									<p class="WhiteSpacing">명완TM님께서 관광지나 음식에 대한 설명도 이해하기 쉽게 잘
										설명해주시고 무엇보다 너무 친절해요ㅠㅠ 그리고 사진도 예쁘게 찍어주시고 최고입니당! 너무 즐거운 여행 이었어요!
										감사합니다아아</p>
								</dd>

							</div>

							<h4 class="txt_big">가이드 댓글</h4>

							<div class="ReplyEntity" style="background-color: #80808014;">
								<dt class="clearfix">
									<span class="txt_md floatL txt_bold txt_md">가이드</span> <span
										class="floatL txtG txt_sm">&nbsp;&nbsp;2019-04-15</span>

								</dt>
								<div class="ReplyEntity_guide">안녕하세요! 멋진 작품 후기 정말 감사드립니다:)
									똥손이 맞으신지 바다 비누는 말할것도 없고 남은 비누로 만든 조개들 색조합 좀 보세요! 예쁘게 사용하시길
									바랄게요(하트) 감사합니다:)</div>
							</div>

						</dl>
						<!-- 전체 리뷰 보기 -->
						<br>

						<details>
							<summary class="txt_big" style="font: bold; font-size: 25px;">전체 리뷰 보기</summary><br>
							<!-- 리뷰 -->
							<div class="tpt">
								<dl>
									<dt class="clearfix">
										<span class="txt_md floatL txt_bold txt_md">백**&nbsp;</span> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;">
									</dt>
									<br>
									<div class="reviewimage">
										<div class="imageone">
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
										</div>
										<dd class="qnaCont">
											<p class="WhiteSpacing">명완TM님께서 관광지나 음식에 대한 설명도 이해하기 쉽게 잘
												설명해주시고 무엇보다 너무 친절해요ㅠㅠ 그리고 사진도 예쁘게 찍어주시고 최고입니당! 너무 즐거운 여행
												이었어요! 감사합니다아아</p>
										</dd>

									</div>

									<h4 class="txt_big">가이드 댓글</h4>

									<div class="ReplyEntity" style="background-color: #80808014;">
										<dt class="clearfix">
											<span class="txt_md floatL txt_bold txt_md">가이드</span> <span
												class="floatL txtG txt_sm">&nbsp;&nbsp;2019-04-15</span>

										</dt>
										<div class="ReplyEntity_guide">안녕하세요! 멋진 작품 후기 정말
											감사드립니다:) 똥손이 맞으신지 바다 비누는 말할것도 없고 남은 비누로 만든 조개들 색조합 좀 보세요! 예쁘게
											사용하시길 바랄게요(하트) 감사합니다:)</div>
									</div>

								</dl>
							</div>
							<br>
							<br>
								<!-- 리뷰 -->
								<div class="tpt">
								<dl>
									<dt class="clearfix">
										<span class="txt_md floatL txt_bold txt_md">백**&nbsp;</span> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;">
									</dt>
									<br>
									<div class="reviewimage">
										<div class="imageone">
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
										</div>
										<dd class="qnaCont">
											<p class="WhiteSpacing">명완TM님께서 관광지나 음식에 대한 설명도 이해하기 쉽게 잘
												설명해주시고 무엇보다 너무 친절해요ㅠㅠ 그리고 사진도 예쁘게 찍어주시고 최고입니당! 너무 즐거운 여행
												이었어요! 감사합니다아아</p>
										</dd>

									</div>

									<h4 class="txt_big">가이드 댓글</h4>

									<div class="ReplyEntity" style="background-color: #80808014;">
										<dt class="clearfix">
											<span class="txt_md floatL txt_bold txt_md">가이드</span> <span
												class="floatL txtG txt_sm">&nbsp;&nbsp;2019-04-15</span>

										</dt>
										<div class="ReplyEntity_guide">안녕하세요! 멋진 작품 후기 정말
											감사드립니다:) 똥손이 맞으신지 바다 비누는 말할것도 없고 남은 비누로 만든 조개들 색조합 좀 보세요! 예쁘게
											사용하시길 바랄게요(하트) 감사합니다:)</div>
									</div>

								</dl>
							</div>
							<br><br>
								<!-- 리뷰 -->
								<div class="tpt">
								<dl>
									<dt class="clearfix">
										<span class="txt_md floatL txt_bold txt_md">백**&nbsp;</span> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;"> <img
											src="/tripfulaxel/resources/user/images/common/star.png"
											style="width: 20px; height: 20px;">
									</dt>
									<br>
									<div class="reviewimage">
										<div class="imageone">
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
											<img style="width: 250px; height: 130px"
												src="../../../resources/user/images/trip/jeju1.png" alt=""></a>
										</div>
										<dd class="qnaCont">
											<p class="WhiteSpacing">명완TM님께서 관광지나 음식에 대한 설명도 이해하기 쉽게 잘
												설명해주시고 무엇보다 너무 친절해요ㅠㅠ 그리고 사진도 예쁘게 찍어주시고 최고입니당! 너무 즐거운 여행
												이었어요! 감사합니다아아</p>
										</dd>

									</div>

									<h4 class="txt_big">가이드 댓글</h4>

									<div class="ReplyEntity" style="background-color: #80808014;">
										<dt class="clearfix">
											<span class="txt_md floatL txt_bold txt_md">가이드</span> <span
												class="floatL txtG txt_sm">&nbsp;&nbsp;2019-04-15</span>

										</dt>
										<div class="ReplyEntity_guide">안녕하세요! 멋진 작품 후기 정말
											감사드립니다:) 똥손이 맞으신지 바다 비누는 말할것도 없고 남은 비누로 만든 조개들 색조합 좀 보세요! 예쁘게
											사용하시길 바랄게요(하트) 감사합니다:)</div>
									</div>

								</dl>
							</div>
								<!-- 리뷰 -->
						</details>
						<!--  전체 리뷰 보기 끝 -->

					</div>

				</div>

			</div>
			
			<!-- 상품가격결과영역 시작-->
			<div id="sticker" class="offerResultWrap floatR">

				<div id="head">
					<div class="offerResult new_box_shadow" style="width: 320px">
						<span class="area_txt">제주도</span>
						<h2 class="tit travel_title">제주도 방방곡곡 체력만땅 친구 구해요!!</h2>
						<div
							style="width: 30px; position: absolute; top: 10px; right: 21px;">
						</div>
						<br>
						<div class="price_div txtG" style="margin-bottom: 3px;">
							<span class=" txtC" style="font-size: 16px;">즐거운 추억 만들어
								보아요!</span>
						</div>
						<ul class="inputLabel">
							<li><input type="text" class="datepicker" id="datepicker"
								name="reser_date" placeholder="7월17일 ~ 7월18일" autocomplete="off">
							</li>
							<li><select name="reser_Per">
									<option value="1 x 70,000">1 명</option>
									<option value="2 x 65,000">2 명</option>
									<option value="3 x 60,000">3 명</option>
									<option value="4 x 50,000">4 명</option>
							</select>
						</ul>
						<div class="offerPrice">
							<div class="clearfix2">
								<span class="txtG">여행 인원 : 4인</span> <span class="txtG">현재
									인원 : 2인</span> <span class="total_price txtC txt_big"></span>
							</div>
						</div>
						<button class="btn btnBgC btnFull txt_md"
							onclick="" style="background:skyblue;">여행 참가하기</button>

					</div>
					
				<br>
					<!-- 여행 참가하기 끝  -->
						
				<div class="offerResult new_box_shadow" style="width: 320px">	   
				 	  <h2 class="tit travel_title">여행 문의하기</h2>
					  
					<div class="msgCont">
						<div class="clearfix">
							<br>
							<div class="msgImg floatL">
								<img src="/tripfulaxel/resources/user/images/trip/guide1.png">
							</div>
							<div class="floatL txt_bold">
								<p>To.</p>
								<p>여행 방장님~</p>
							</div>
						</div>
						<textarea name="sendcontent" id="" placeholder="내용을 입력하세요."></textarea>
						<button class="btn btnBgC btnFull txt_md"
							onclick="" style="background:skyblue;">메시지 전송</button>
					</div>
				</div>

			</div>

		</div>
		<!-- 여행참가하기 끝 -->
		
		
		</div>

		</div>
	</section>
	<!-- //본문 영역 끝 -->


</body>
</html>
